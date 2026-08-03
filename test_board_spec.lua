local DIR = debug.getinfo(1, "S").source:sub(2):match("(.*[/\\])") or "./"

package.preload["gettext"] = function()
    return setmetatable({}, { __call = function(_, s) return s end })
end
package.path = DIR .. "common/?.lua;" .. DIR .. "?.lua;" .. package.path

describe("ChessBoard (chesscourse)", function()
    local Board

    setup(function()
        Board = require("board")
    end)

    describe("new / reset", function()
        it("new() starts with an empty board", function()
            local b = Board:new()
            for r = 1, 8 do
                for c = 1, 8 do
                    assert.are.equal(Board.EMPTY, b.sq[r][c])
                end
            end
        end)

        it("reset() sets up the standard starting position", function()
            local b = Board:new()
            b:reset()
            assert.are.equal(Board.W_ROOK, b.sq[8][1])
            assert.are.equal(Board.W_KING, b.sq[8][5])
            assert.are.equal(Board.B_KING, b.sq[1][5])
            for c = 1, 8 do
                assert.are.equal(Board.W_PAWN, b.sq[7][c])
                assert.are.equal(Board.B_PAWN, b.sq[2][c])
            end
            assert.are.equal("white", b.turn)
            assert.are.equal("playing", b.status)
        end)
    end)

    describe("getLegalMoves", function()
        it("White has 20 legal moves from the starting position", function()
            local b = Board:new()
            b:reset()
            assert.are.equal(20, #b:getLegalMoves())
        end)
    end)

    describe("loadFEN", function()
        it("parses piece placement, side to move and castling rights", function()
            local b = Board:new()
            b:loadFEN("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")
            assert.are.equal(Board.B_ROOK, b.sq[1][1])
            assert.are.equal(Board.W_KING, b.sq[8][5])
            assert.are.equal("white", b.turn)
            assert.is_true(b.castle_wk and b.castle_wq and b.castle_bk and b.castle_bq)
        end)
    end)

    describe("makeMove / undoMove", function()
        it("moves a pawn and switches the turn", function()
            local b = Board:new()
            b:reset()
            assert.is_true(b:makeMove(7, 5, 5, 5))  -- e2-e4
            assert.are.equal(Board.EMPTY, b.sq[7][5])
            assert.are.equal(Board.W_PAWN, b.sq[5][5])
            assert.are.equal("black", b.turn)
        end)

        it("rejects an illegal move", function()
            local b = Board:new()
            b:reset()
            assert.is_false(b:makeMove(7, 5, 4, 5))  -- pawn can't jump 3 squares
        end)

        it("undoMove restores the position and turn", function()
            local b = Board:new()
            b:reset()
            b:makeMove(7, 5, 5, 5)
            assert.is_true(b:undoMove())
            assert.are.equal(Board.W_PAWN, b.sq[7][5])
            assert.are.equal(Board.EMPTY, b.sq[5][5])
            assert.are.equal("white", b.turn)
        end)

        it("returns false when there is nothing to undo", function()
            local b = Board:new()
            b:reset()
            assert.is_false(b:undoMove())
        end)
    end)

    describe("check / checkmate detection", function()
        it("detects Fool's mate", function()
            local b = Board:new()
            b:reset()
            assert.is_true(b:makeMove(7, 6, 6, 6))  -- f3
            assert.is_true(b:makeMove(2, 5, 4, 5))  -- e5
            assert.is_true(b:makeMove(7, 7, 5, 7))  -- g4
            assert.is_true(b:makeMove(1, 4, 5, 8))  -- Qh4#
            assert.are.equal("checkmate", b.status)
            assert.are.equal("black", b.winner)
        end)
    end)

    describe("tapCell", function()
        it("selects a friendly piece with legal moves", function()
            local b = Board:new()
            b:reset()
            assert.are.equal("select", b:tapCell(7, 5))
            assert.are.same({ 7, 5 }, b.selected)
        end)

        it("tapping the selected square again deselects", function()
            local b = Board:new()
            b:reset()
            b:tapCell(7, 5)
            assert.are.equal("deselect", b:tapCell(7, 5))
            assert.is_nil(b.selected)
        end)

        it("tapping a legal destination makes the move", function()
            local b = Board:new()
            b:reset()
            b:tapCell(7, 5)
            assert.are.equal("move", b:tapCell(5, 5))
            assert.are.equal(Board.W_PAWN, b.sq[5][5])
        end)
    end)
end)
