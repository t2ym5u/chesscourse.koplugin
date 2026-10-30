-- ---------------------------------------------------------------------------
-- CoursEchecsScreen — lesson/puzzle screen for the chess course plugin
-- ---------------------------------------------------------------------------

local _dir = debug.getinfo(1, "S").source:sub(2):match("(.*[/\\])") or "./"
local function lrequire(name)
    local key = _dir .. name
    if not package.loaded[key] then
        package.loaded[key] = assert(loadfile(_dir .. name .. ".lua"))()
    end
    return package.loaded[key]
end

local FrameContainer  = require("ui/widget/container/framecontainer")
local HorizontalGroup = require("ui/widget/horizontalgroup")
local HorizontalSpan  = require("ui/widget/horizontalspan")
local Size            = require("ui/size")
local UIManager       = require("ui/uimanager")
local VerticalGroup   = require("ui/widget/verticalgroup")
local VerticalSpan    = require("ui/widget/verticalspan")
local _               = require("i18n")
local T               = require("ffi/util").template

local MenuHelper       = require("menu_helper")
local ScreenBase       = require("screen_base")
local ChessBoard       = lrequire("board")
local CoursBoardWidget = lrequire("board_widget")


-- Category display labels (keep in sync with lessons.lua)
local CAT_LABEL = {
    mat1     = _("Mate in 1"),
    mat2     = _("Mate in 2"),
    mat3     = _("Mate in 3"),
    tactique = _("Tactics"),
    finale   = _("Endgame"),
    ouverture = _("Opening"),
}

-- ---------------------------------------------------------------------------
-- CoursEchecsScreen
-- ---------------------------------------------------------------------------

local GAME_RULES_EN = _([[
Chess Lessons — How to play

Work through guided chess exercises to learn and practise the game.

Each lesson presents a board position and an objective. Make the correct moves to progress through the lesson. Wrong moves are rejected — read the instructions and think carefully.

Topics covered include:
• Piece movements and rules
• Tactics: pins, forks, discovered attacks
• Checkmate patterns
• Opening principles

Complete all exercises in a lesson to advance to the next one.
]])

local GAME_RULES_FR = [[
Cours d'Échecs — Comment jouer

Progressez à travers des exercices d'échecs guidés pour apprendre et pratiquer le jeu.

Chaque leçon présente une position sur l'échiquier et un objectif. Effectuez les bons coups pour avancer dans la leçon. Les coups incorrects sont refusés — lisez les instructions et réfléchissez.

Thèmes abordés :
• Mouvements et règles des pièces
• Tactiques : clouage, fourchette, attaque découverte
• Schémas de mat
• Principes d'ouverture

Complétez tous les exercices d'une leçon pour passer à la suivante.
]]

local CoursEchecsScreen = ScreenBase:extend{}

-- ---------------------------------------------------------------------------
-- Lifecycle
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:init()
    local state = self.plugin:loadState()
    self.lesson_idx = (state and state.lesson_idx) or 1
    self._flipped   = false
    self.board = ChessBoard:new()
    self:loadLesson(self.lesson_idx)
    ScreenBase.init(self)
end

function CoursEchecsScreen:serializeState()
    return { lesson_idx = self.lesson_idx }
end

function CoursEchecsScreen:loadLesson(idx)
    local lessons = lrequire("lessons")
    local lesson  = lessons[idx]
    if not lesson then return end
    self.current_lesson   = lesson
    self.showing_solution = false
    self.move_count       = 0
    self.solved           = false
    self.board:loadFEN(lesson.fen)
    -- Auto-flip: show the side to move at the bottom
    self._flipped = (self.board.turn == "black")
end

-- ---------------------------------------------------------------------------
-- Layout
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:buildLayout()
    local board   = self.board
    local lesson  = self.current_lesson

    local is_landscape = self:isLandscape()
    self._landscape    = is_landscape

    -- Lesson header: just the puzzle's theme. Index and category are
    -- already in the status line, so repeating them here only made the
    -- title long enough to collide with the close button.
    local header_text = lesson and lesson.title or _("Chess Course")

    local title_bar = self:buildTitleBar(header_text, function()
        return {
            { text = self:_categoryLabel(), callback = function() self:openCategoryMenu() end },
            { text = _("Flip"),  callback = function() self:onFlipBoard()      end },
            self:makeRulesButtonConfig(GAME_RULES_EN, GAME_RULES_FR),
        }
    end)

    -- Actions on the first row, lesson navigation on the second.
    local controls_w = self:getControlsWidth()
    self.status_text:setMaxWidth(controls_w)
    local action_buttons = self:buildActionBar({
        {
            { text = _("Hint"),     callback = function() self:onHint()         end },
            { text = _("Solution"), callback = function() self:onShowSolution() end },
            { text = _("Reset"),    callback = function() self:onReset()        end },
            { text = _("Undo"),     callback = function() self:onUndo()         end },
        },
        {
            { text = _("Prev"), callback = function() self:onPrev() end },
            { text = _("Next"), callback = function() self:onNext() end },
        },
    })
    self.action_buttons = action_buttons
    local controls = VerticalGroup:new{
        align = "center",
        self.status_text,
        VerticalSpan:new{ width = Size.span.vertical_large },
        action_buttons,
    }

    local frame_pad = Size.padding.default
    local frame_extra = 2 * (frame_pad + Size.border.window)
    local budget_w, budget_h = self:getBoardBudget(title_bar, controls)
    self.board_widget = CoursBoardWidget:new{
        board        = board,
        flipped      = self._flipped,
        max_size     = math.min(budget_w, budget_h) - frame_extra,
        onCellAction = function(r, c) self:onCellAction(r, c) end,
    }

    local board_frame = FrameContainer:new{
        padding = frame_pad,
        margin  = 0,
        self.board_widget,
    }

    if is_landscape then
        local content = HorizontalGroup:new{
            align = "center",
            board_frame,
            HorizontalSpan:new{ width = self:getGutter() },
            controls,
        }
        self:buildLandscapeLayout(title_bar, content)
    else
        self:buildPortraitLayout(title_bar, board_frame,
            VerticalGroup:new{ align = "center", controls, VerticalSpan:new{ width = self:getGutter() } })
    end

    self[1] = self.layout
    self:updateStatus()
end

-- ---------------------------------------------------------------------------
-- Flip board
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:onFlipBoard()
    self._flipped = not self._flipped
    if self.board_widget then
        self.board_widget.flipped = self._flipped
        self.board_widget:refresh()
    end
end

-- ---------------------------------------------------------------------------
-- Navigation
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:onPrev()
    if self.lesson_idx > 1 then
        self.lesson_idx = self.lesson_idx - 1
        self:loadLesson(self.lesson_idx)
        self.plugin:saveState(self:serializeState())
        self:buildLayout()
        UIManager:setDirty(self, function() return "ui", self.dimen end)
    end
end

function CoursEchecsScreen:onNext()
    local lessons = lrequire("lessons")
    if self.lesson_idx < #lessons then
        self.lesson_idx = self.lesson_idx + 1
        self:loadLesson(self.lesson_idx)
        self.plugin:saveState(self:serializeState())
        self:buildLayout()
        UIManager:setDirty(self, function() return "ui", self.dimen end)
    end
end

function CoursEchecsScreen:onReset()
    self:loadLesson(self.lesson_idx)
    self:buildLayout()
    UIManager:setDirty(self, function() return "ui", self.dimen end)
end

function CoursEchecsScreen:onUndo()
    if self.board:undoMove() then
        if self.move_count > 0 then self.move_count = self.move_count - 1 end
        self.solved = false
        if self.board_widget then self.board_widget.last_move = self.board.last_move end
        self.board_widget:refresh()
        self:updateStatus()
    end
end

-- ---------------------------------------------------------------------------
-- Category selector
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:_categoryLabel()
    local cat = self.current_lesson and self.current_lesson.category
    if not cat then return _("Categories") end
    return T(_("Category: %1"), CAT_LABEL[cat] or cat)
end

function CoursEchecsScreen:openCategoryMenu()
    local lessons = lrequire("lessons")

    -- Build list of categories in order (preserving first occurrence)
    local cat_order  = {}
    local cat_seen   = {}
    local cat_first  = {}  -- first lesson index per category
    for i, lesson in ipairs(lessons) do
        local c = lesson.category
        if not cat_seen[c] then
            cat_seen[c]  = true
            cat_order[#cat_order + 1] = c
            cat_first[c] = i
        end
    end

    -- Count lessons per category
    local cat_count = {}
    for _, lesson in ipairs(lessons) do
        cat_count[lesson.category] = (cat_count[lesson.category] or 0) + 1
    end

    -- Build picker items
    local items = {}
    for _, c in ipairs(cat_order) do
        local label = CAT_LABEL[c] or c
        items[#items + 1] = {
            id   = c,
            text = string.format("%s (%d)", label, cat_count[c] or 0),
        }
    end

    local current_cat = self.current_lesson and self.current_lesson.category
    MenuHelper.openPickerMenu{
        title      = _("Category"),
        items      = items,
        current_id = current_cat,
        on_select  = function(cat_id)
            -- Jump to list of puzzles in that category
            self:openPuzzleList(cat_id)
        end,
        parent = self,
    }
end

function CoursEchecsScreen:openPuzzleList(category)
    local lessons = lrequire("lessons")
    local items   = {}
    for i, lesson in ipairs(lessons) do
        if lesson.category == category then
            local solved_mark = ""  -- could add a checkmark later
            items[#items + 1] = {
                id   = i,
                text = string.format("%d. %s%s", i, lesson.title, solved_mark),
            }
        end
    end

    local cat_label = CAT_LABEL[category] or category
    MenuHelper.openPickerMenu{
        title      = cat_label,
        items      = items,
        current_id = self.lesson_idx,
        on_select  = function(idx)
            self.lesson_idx = idx
            self:loadLesson(idx)
            self.plugin:saveState(self:serializeState())
            self:buildLayout()
            UIManager:setDirty(self, function() return "ui", self.dimen end)
        end,
        parent = self,
    }
end

-- ---------------------------------------------------------------------------
-- Cell interaction
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:onCellAction(r, c)
    if self.solved or self.showing_solution then return end
    local lesson = self.current_lesson
    if not lesson then return end

    local result = self.board:tapCell(r, c)
    if self.board_widget then
        self.board_widget.last_move = self.board.last_move
        self.board_widget:refresh()
    end

    if result == "move" then
        if self:checkSolutionProgress() then
            self.move_count = self.move_count + 1
            local reply              = lesson.solution and lesson.solution[self.move_count + 1]
            local is_opponent_reply  = (self.move_count % 2 == 1) and reply ~= nil

            if self.move_count >= #lesson.solution then
                self.solved = true
                self:updateStatus(_("Well done! You found the solution."))
            elseif is_opponent_reply then
                UIManager:scheduleIn(0.5, function()
                    self.board:makeMove(reply.fr, reply.fc, reply.tr, reply.tc)
                    self.move_count = self.move_count + 1
                    if self.board_widget then
                        self.board_widget.last_move = self.board.last_move
                        self.board_widget:refresh()
                    end
                    if self.move_count >= #lesson.solution then
                        self.solved = true
                        self:updateStatus(_("Well done! Puzzle solved."))
                    else
                        self:updateStatus(_("Good move! Keep going..."))
                    end
                end)
            else
                self:updateStatus(_("Good move! Keep going..."))
            end
        else
            self.board:undoMove()
            if self.board_widget then
                self.board_widget.last_move = self.board.last_move
                self.board_widget:refresh()
            end
            self:updateStatus(_("That's not the right solution. Try again."))
        end
    elseif result == "select" or result == "deselect" then
        self:updateStatus()
    end
end

-- Check if the last move on the board matches the expected solution step.
function CoursEchecsScreen:checkSolutionProgress()
    local lesson   = self.current_lesson
    local expected = lesson.solution and lesson.solution[self.move_count + 1]
    if not expected then return false end
    local lm = self.board.last_move
    if not lm then return false end
    return lm.fr == expected.fr and lm.fc == expected.fc
       and lm.tr == expected.tr and lm.tc == expected.tc
end

-- ---------------------------------------------------------------------------
-- Hint
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:onHint()
    local lesson = self.current_lesson
    if lesson and lesson.hint then
        self:updateStatus(_("Hint: ") .. lesson.hint)
    end
end

-- ---------------------------------------------------------------------------
-- Show solution (animated)
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:onShowSolution()
    self.showing_solution = true
    self:loadLesson(self.lesson_idx)
    local lesson = self.current_lesson
    if not lesson or not lesson.solution then return end

    local function playNext(idx)
        if idx > #lesson.solution then
            if self.board_widget then self.board_widget:refresh() end
            self:updateStatus(_("Solution shown. Tap Next to continue."))
            return
        end
        local m = lesson.solution[idx]
        self.board:makeMove(m.fr, m.fc, m.tr, m.tc)
        if self.board_widget then
            self.board_widget.last_move = self.board.last_move
            self.board_widget:refresh()
        end
        UIManager:scheduleIn(0.8, function() playNext(idx + 1) end)
    end
    playNext(1)
end

-- ---------------------------------------------------------------------------
-- Status
-- ---------------------------------------------------------------------------

function CoursEchecsScreen:updateStatus(msg)
    if msg then
        ScreenBase.updateStatus(self, msg)
        return
    end

    local lesson  = self.current_lesson
    local lessons = lrequire("lessons")
    local board   = self.board
    local status

    if self.solved then
        status = _("Puzzle solved! Tap Next.")
    elseif board.status == "checkmate" then
        local winner = (board.winner == "white") and _("White") or _("Black")
        status = winner .. " " .. _("wins by checkmate!")
    elseif board.status == "stalemate" then
        status = _("Stalemate — draw.")
    elseif board.status == "check" then
        local turn = (board.turn == "white") and _("White") or _("Black")
        status = turn .. " " .. _("are in check — continue the solution.")
    else
        if lesson then
            local side = (board.turn == "white") and _("White to move") or _("Black to move")
            -- The landscape side panel is too narrow for the category too;
            -- it stays reachable via the Categories menu.
            local cat = not self._landscape and (CAT_LABEL[lesson.category] or lesson.category) or nil
            status = self:joinStatus(T("%1/%2", self.lesson_idx, #lessons), cat, side)
        else
            local turn = (board.turn == "white") and _("White") or _("Black")
            status = turn .. " " .. _("to move.")
        end
    end
    ScreenBase.updateStatus(self, status)
end

return CoursEchecsScreen
