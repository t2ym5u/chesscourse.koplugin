-- Show solution replays the lesson with moves scheduled 0.8 s apart, and a
-- right move schedules the opponent's reply. Such a move must not land on
-- another lesson, taps must wait while the solution plays, and the board
-- widget must follow the lesson's orientation.
local DIR = debug.getinfo(1, "S").source:sub(2):match("(.*[/\\])") or "./"

describe("show solution", function()
    local saved = {}
    local pending   -- callbacks given to UIManager:scheduleIn

    -- Every other module is a stub: any field is another stub, and calling
    -- one returns its last argument, so Class:extend{} returns its table
    -- and _("x") returns "x".
    local function stub()
        return setmetatable({}, {
            __index = function(t, k) local s = stub(); rawset(t, k, s); return s end,
            __call  = function(_, a, b) if b ~= nil then return b end return a end,
        })
    end

    local function stubSearcher(name)
        return function() return stub() end, name
    end

    setup(function()
        saved.loaded = {}
        for k, v in pairs(package.loaded) do saved.loaded[k] = v end
        for k in pairs(saved.loaded) do
            if type(k) == "string" and k:sub(1, #DIR) == DIR then package.loaded[k] = nil end
        end
        for _, name in ipairs({ "device", "screen_base", "menu_helper", "i18n", "grid_widget_base" }) do
            package.loaded[name] = stub()
        end
        package.loaded["ui/uimanager"] = setmetatable({
            scheduleIn = function(_, _s, fn) pending[#pending + 1] = fn end,
        }, { __index = function() return function() end end })
        local searchers = package.searchers or package.loaders
        searchers[#searchers + 1] = stubSearcher
    end)

    teardown(function()
        local searchers = package.searchers or package.loaders
        for i = #searchers, 1, -1 do
            if searchers[i] == stubSearcher then table.remove(searchers, i) end
        end
        for k in pairs(package.loaded) do
            if saved.loaded[k] == nil then package.loaded[k] = nil end
        end
        for k, v in pairs(saved.loaded) do package.loaded[k] = v end
    end)

    local Screen, ChessBoard, lessons

    -- Run the scheduled callbacks, including the ones they schedule.
    local function runPending()
        while #pending > 0 do table.remove(pending, 1)() end
    end

    -- Count the moves played on the screen's board from now on.
    local function countMoves(scr)
        local n = { 0 }
        local make = scr.board.makeMove
        scr.board.makeMove = function(...) n[1] = n[1] + 1; return make(...) end
        return n
    end

    local function snapshot(board)
        local rows = {}
        for r = 1, 8 do rows[r] = table.concat(board.sq[r], ",") end
        return table.concat(rows, "/") .. " " .. board.turn
    end

    -- A screen on lesson `idx`, with no status line to update.
    local function newScreen(idx)
        Screen     = Screen or dofile(DIR .. "screen.lua")
        ChessBoard = ChessBoard or package.loaded[DIR .. "board"]
        lessons    = lessons or package.loaded[DIR .. "lessons"] or dofile(DIR .. "lessons.lua")
        local scr = setmetatable({
            board        = ChessBoard:new(),
            lesson_idx   = idx,
            board_widget = { refresh = function() end },
            plugin       = { saveState = function() end },
            updateStatus = function() end,
        }, { __index = Screen })
        scr:loadLesson(idx)
        return scr
    end

    -- The first lesson whose solution has an opponent's reply.
    local function longLesson()
        for i, l in ipairs(lessons) do
            if l.solution and #l.solution >= 2 then return i end
        end
    end

    before_each(function() pending = {} end)

    it("replays every move of the solution", function()
        local scr = newScreen(1)
        scr:onShowSolution()
        runPending()
        local lesson = lessons[1]
        local last = lesson.solution[#lesson.solution]
        local lm = scr.board.last_move
        assert.are.same({ last.fr, last.fc, last.tr, last.tc }, { lm.fr, lm.fc, lm.tr, lm.tc })
        assert.is_true(scr.showing_solution)
    end)

    it("ignores taps and Undo while the solution plays", function()
        local scr = newScreen(1)
        scr:onShowSolution()
        assert.is_true(scr.showing_solution)
        local before = snapshot(scr.board)
        local m = lessons[1].solution[2]
        if m then scr:onCellAction(m.fr, m.fc) end
        scr:onUndo()
        assert.are.equal(before, snapshot(scr.board))
    end)

    it("stops replaying once another lesson is loaded", function()
        local scr = newScreen(1)
        local idx = longLesson()
        scr.lesson_idx = idx
        scr:loadLesson(idx)
        scr:onShowSolution()
        assert.is_true(#pending > 0)
        scr.lesson_idx = 1
        scr:loadLesson(1)
        local moves = countMoves(scr)
        runPending()
        assert.are.equal(0, moves[1])
        assert.is_false(scr.showing_solution)
    end)

    it("drops the opponent's reply once another lesson is loaded", function()
        local scr = newScreen(1)
        local idx = longLesson()
        scr.lesson_idx = idx
        scr:loadLesson(idx)
        local m = lessons[idx].solution[1]
        scr:onCellAction(m.fr, m.fc)
        scr:onCellAction(m.tr, m.tc)
        assert.are.equal(1, #pending)
        scr:loadLesson(idx)
        local moves = countMoves(scr)
        runPending()
        assert.are.equal(0, moves[1])
    end)

    it("keeps the board widget's orientation in step with the lesson", function()
        local scr = newScreen(1)
        scr:onFlipBoard()
        assert.are.equal(scr._flipped, scr.board_widget.flipped)
        scr:onShowSolution()
        assert.are.equal(scr._flipped, scr.board_widget.flipped)
    end)
end)
