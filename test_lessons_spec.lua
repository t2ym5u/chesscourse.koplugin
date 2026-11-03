local DIR = debug.getinfo(1, "S").source:sub(2):match("(.*[/\\])") or "./"

-- Lesson texts: French (title/desc/hint) with English twins (*_en).
describe("chesscourse lessons", function()
    local lessons = dofile(DIR .. "lessons.lua")
    local FIELDS = { "title", "desc", "hint" }

    it("has 58 lessons with unique ids", function()
        assert.are.equal(58, #lessons)
        local seen = {}
        for _, l in ipairs(lessons) do
            assert.is_nil(seen[l.id], "duplicate id " .. tostring(l.id))
            seen[l.id] = true
        end
    end)

    it("every lesson has French and English text for every field", function()
        for _, l in ipairs(lessons) do
            for _, f in ipairs(FIELDS) do
                local fr, en = l[f], l[f .. "_en"]
                assert.is_true(type(fr) == "string" and #fr > 0, ("lesson %d: %s missing"):format(l.id, f))
                assert.is_true(type(en) == "string" and #en > 0, ("lesson %d: %s_en missing"):format(l.id, f))
                if f ~= "title" then
                    assert.are_not.equal(fr, en, ("lesson %d: %s_en not translated"):format(l.id, f))
                end
            end
        end
    end)

    it("English move notation uses English SAN piece letters (K Q R B N)", function()
        for _, l in ipairs(lessons) do
            for _, f in ipairs(FIELDS) do
                local en = l[f .. "_en"]
                for piece in en:gmatch("%f[%w]([A-Z])x?[a-h][1-8]") do
                    assert.is_truthy(("KQRBN"):find(piece, 1, true),
                        ("lesson %d %s_en: non-English SAN piece letter %q in %q"):format(l.id, f, piece, en))
                end
            end
        end
    end)

    it("English text contains no leftover French chess words", function()
        local FRENCH = { "dame", "tour", "fou", "cavalier", "roi", "pion", "échec", "colonne", "rangée", "les blancs", "les noirs", "mat en" }
        for _, l in ipairs(lessons) do
            for _, f in ipairs(FIELDS) do
                local en = l[f .. "_en"]:lower()
                for _, w in ipairs(FRENCH) do
                    assert.is_falsy(en:find("%f[%a]" .. w .. "%f[%A]"),
                        ("lesson %d %s_en contains French word %q"):format(l.id, f, w))
                end
            end
        end
    end)
end)
