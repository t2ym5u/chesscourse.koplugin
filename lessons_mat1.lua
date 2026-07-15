-- ---------------------------------------------------------------------------
-- lessons_mat1.lua — 8 puzzles "Mat en 1"
-- Coordonnées : r=1 = rangée 8, r=8 = rangée 1 ; c=1 = col a, c=8 = col h
-- ---------------------------------------------------------------------------

return {

    -- 1. Back-rank mate : Ra8#
    -- FEN: Kg1 Ra1 / Kg8 pf7 pg7 ph7
    {
        id=1, category="mat1",
        title="Mat de la dernière rangée",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="6k1/5ppp/8/8/8/8/8/R5K1 w - - 0 1",
        solution={ {fr=8,fc=1,tr=1,tc=1} },
        hint="La tour remonte sur la 8ème rangée — le roi est enfermé par ses propres pions.",
    },

    -- 2. Rook + King corner mate : Rh8# (check from a distance along rank 8)
    -- FEN: Ka8 / Kb6 Rh1
    -- Rh1(r8c8) → h8(r1c8) ; Kb6(r3c2) couvre a7 et b7 ; Rh8 couvre b8 via la 8e rangée
    {
        id=2, category="mat1",
        title="Tour et roi, mat en coin",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="k7/8/1K6/8/8/8/8/7R w - - 0 1",
        solution={ {fr=8,fc=8,tr=1,tc=8} },
        hint="La tour vient de loin sur la 8e rangée — le roi blanc en b6 couvre a7 et b7.",
    },

    -- 3. King + rook corner mate via the a-file : Ra1#
    -- FEN: Ka8 / Kc7 Rh1
    -- Rh1(r8c8) → a1(r8c1) ; Kc7(r2c3) couvre b7 et b8 ; Ra1 couvre a7 via la colonne a
    {
        id=3, category="mat1",
        title="Mat avec tour et roi (variante colonne a)",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="k7/2K5/8/8/8/8/8/7R w - - 0 1",
        solution={ {fr=8,fc=8,tr=8,tc=1} },
        hint="La tour vient de loin sur la colonne a — le roi blanc en c7 couvre b7 et b8.",
    },

    -- 4. Queen mate : Qg7#
    -- FEN: Kh8 / Qa7 Kg6
    -- Qa7(r2c1) → g7(r2c7) ; Kh8(r1c8) : g8 col g, h7 diag Qg7, g7 occupé
    {
        id=4, category="mat1",
        title="Mat de la dame en g7",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="7k/Q7/6K1/8/8/8/8/8 w - - 0 1",
        solution={ {fr=2,fc=1,tr=2,tc=7} },
        hint="La dame va en g7 — le roi en g6 la défend, le roi noir est pris en étau.",
    },

    -- 5. Queen corner mate : Qa2#
    -- FEN: Ka1 pa2(noir)... non : Ka1 / Kb3 Qh2
    -- Qh2(r7c8) → a2(r7c1) ; Ka1(r8c1) : b1 diag Qa2, b2 col+diag, a2 occupé, défendu par Kb3
    {
        id=5, category="mat1",
        title="Dame en a2, mat en coin",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="8/8/8/8/8/1K6/7Q/k7 w - - 0 1",
        solution={ {fr=7,fc=8,tr=7,tc=1} },
        hint="La dame va en a2, défendue par le roi en b3 — le roi noir en a1 est bloqué.",
    },

    -- 6. Two-rook mate (ladder) : Rb8#
    -- FEN: Ke8 / Ra7 Rb1 Ke4
    -- Ra7 coupe la 7e rangée ; Rb1 → b8(r1c2), mat à distance (non adjacent au roi e8)
    {
        id=6, category="mat1",
        title="Double tour, mat en coin",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="4k3/R7/8/8/4K3/8/8/1R6 w - - 0 1",
        solution={ {fr=8,fc=2,tr=1,tc=2} },
        hint="Une tour coupe la 7e rangée, l'autre mate à distance sur la 8e rangée.",
    },

    -- 7. Queen + King corner mate : Qa7#
    -- FEN: Ka8 / Ka6 Qh7
    -- Qh7(r2c8) → a7(r2c1) ; Ka8(r1c1) : b8 diag Qa7, b7 col Ka6, a7 défendu par Ka6
    {
        id=7, category="mat1",
        title="Dame en a7, mat en coin",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="k7/7Q/K7/8/8/8/8/8 w - - 0 1",
        solution={ {fr=2,fc=8,tr=2,tc=1} },
        hint="La dame va en a7, défendue par le roi en a6 — elle couvre aussi b8 en diagonale.",
    },

    -- 8. Anastasia's mate : Rxh7#
    -- FEN: Kh8 pg7 ph7 / Rh1 Nf6 Ke4
    -- Nf6 couvre h7 (défend la tour) et g8 ; Rh1×h7# — roi bloqué par ses pions
    {
        id=8, category="mat1",
        title="Mat d'Anastasie",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="7k/6pp/5N2/8/4K3/8/8/7R w - - 0 1",
        solution={ {fr=8,fc=8,tr=2,tc=8} },
        hint="La tour prend en h7, défendue par le cavalier en f6 qui couvre aussi g8.",
    },

    -- 36. Arabian mate : Ra1→h1# (cavalier + tour)
    -- FEN: Kh8 / Kg6 Nf6 Ra1
    -- Nf6 couvre g8 et h7 ; Kg6 couvre g7 ; Rh1 mate à distance sur la colonne h
    {
        id=36, category="mat1",
        title="Mat de l'Arabe",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="7k/8/5NK1/8/8/8/8/R7 w - - 0 1",
        solution={ {fr=8,fc=1,tr=8,tc=8} },
        hint="Le cavalier couvre g8 et h7, le roi couvre g7 — la tour mate à distance sur la colonne h.",
    },

    -- 37. Smothered mate : Nf7# (roi étouffé par sa propre tour et ses pions)
    -- FEN: Kh8 Rg8 pg7 ph7 / Nd6 Ka1
    {
        id=37, category="mat1",
        title="Mat étouffé",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="6rk/6pp/3N4/8/8/8/8/K7 w - - 0 1",
        solution={ {fr=3,fc=4,tr=2,tc=6} },
        hint="Le roi noir est déjà étouffé par sa propre tour et ses pions — le cavalier vient donner l'échec fatal.",
    },

    -- 38. Dovetail mate : Qe7# (queen adjacent, king boxed by own pawns)
    -- FEN: Ke8 pd7 pf7 / Qa3 Kf6
    {
        id=38, category="mat1",
        title="Mat en queue d'aronde",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="4k3/3p1p2/5K2/8/8/Q7/8/8 w - - 0 1",
        solution={ {fr=6,fc=1,tr=2,tc=5} },
        hint="La dame vient en e7, défendue par le roi — les pions d7 et f7 bloquent les deux seules cases de fuite.",
    },

    -- 39. Epaulette mate : Qe6# (queen mates from a distance, king flanked by its own rooks)
    -- FEN: Ke8 Rd8 Rf8 / Qh3 Ka1
    {
        id=39, category="mat1",
        title="Mat de l'épaulette",
        desc="Les blancs jouent et font mat en 1 coup.",
        fen="3rkr2/8/8/8/8/7Q/8/K7 w - - 0 1",
        solution={ {fr=6,fc=8,tr=3,tc=5} },
        hint="Les propres tours du roi noir lui bloquent les côtés — la dame mate à distance depuis e6.",
    },
}
