-- ---------------------------------------------------------------------------
-- lessons_mat3.lua — 5 puzzles "Mat en 3"
-- Puzzles 34-35 : les noirs jouent (auto-flip du plateau via board.turn)
-- Sources : Lichess puzzle 4Ftq1, études j0Ay9fAz et JrwLZArS
-- ---------------------------------------------------------------------------

return {

    -- 31. Roi et tour vs tour — le roi prend le pion pour créer un couloir
    -- Lichess puzzle 4Ftq1 (vérifié)
    -- FEN: 7k/R7/5Kpp/8/4p1p1/7P/4r3/8 w - - 0 1
    -- 1.Kf6×g6 Re2-f2  2.Ra7-a8+ Rf2-f8  3.Ra8×f8#
    {
        id=31, category="mat3",
        title="Tour et roi — couloir",
        title_en="Rook and king — corridor",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="7k/R7/5Kpp/8/4p1p1/7P/4r3/8 w - - 0 1",
        solution={
            {fr=3,fc=6,tr=3,tc=7},  -- Kf6×Pg6
            {fr=7,fc=5,tr=7,tc=6},  -- Re2→Rf2 (forcé)
            {fr=2,fc=1,tr=1,tc=1},  -- Ra7→Ra8+
            {fr=7,fc=6,tr=1,tc=6},  -- Rf2→Rf8 (forcé)
            {fr=1,fc=1,tr=1,tc=6},  -- Ra8×Rf8#
        },
        hint="Le roi prend le pion g6, la tour monte en a8, la tour noire bloque et se fait capturer.",
        hint_en="The king takes the pawn on g6, the rook goes up to a8, the black rook blocks and is captured.",
    },

    -- 32. Sacrifice de fou — ouvre c8 au roi, mat du cavalier
    -- Lichess étude j0Ay9fAz (vérifié)
    -- FEN: k7/pp1K4/N7/8/8/8/8/7B w - - 0 1
    -- 1.Bh1-c6! b7×c6  2.Kd7-c8 c6-c5  3.Na6-c7#
    {
        id=32, category="mat3",
        title="Sacrifice de fou, mat du cavalier",
        title_en="Bishop sacrifice, knight mate",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="k7/pp1K4/N7/8/8/8/8/7B w - - 0 1",
        solution={
            {fr=8,fc=8,tr=3,tc=3},  -- Bh1→Bc6 (sacrifice)
            {fr=2,fc=2,tr=3,tc=3},  -- pb7×Bc6 (forcé)
            {fr=2,fc=4,tr=1,tc=3},  -- Kd7→Kc8
            {fr=3,fc=3,tr=4,tc=3},  -- pc6→c5 (forcé)
            {fr=3,fc=1,tr=2,tc=3},  -- Na6→Nc7#
        },
        hint="Sacrifiez le fou en c6 pour libérer c8 au roi — le cavalier donne mat depuis c7.",
        hint_en="Sacrifice the bishop on c6 to clear c8 for the king — the knight mates from c7.",
    },

    -- 33. Deux fous — repositionnement puis mat en coin
    -- Lichess étude JrwLZArS, puzzle 2 (vérifié)
    -- FEN: k7/3B4/1K3B2/8/8/8/8/8 w - - 0 1
    -- 1.Bf6-a1 Ka8-b8  2.Ba1-e5+ Kb8-a8  3.Bd7-c6#
    {
        id=33, category="mat3",
        title="Deux fous — mat en coin",
        title_en="Two bishops — corner mate",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="k7/3B4/1K3B2/8/8/8/8/8 w - - 0 1",
        solution={
            {fr=3,fc=6,tr=8,tc=1},  -- Bf6→Ba1
            {fr=1,fc=1,tr=1,tc=2},  -- Ka8→Kb8 (forcé)
            {fr=8,fc=1,tr=4,tc=5},  -- Ba1→Be5+
            {fr=1,fc=2,tr=1,tc=1},  -- Kb8→Ka8 (forcé)
            {fr=2,fc=4,tr=3,tc=3},  -- Bd7→Bc6#
        },
        hint="Repositionnez le fou en a1, revenez en e5 pour donner échec, puis Bc6 mate.",
        hint_en="Reposition the bishop to a1, come back to e5 to give check, then Bc6 mates.",
    },

    -- 34. Sacrifice de tour, mat de dame (noirs jouent)
    -- Lichess étude JrwLZArS, puzzle 3 (vérifié)
    -- FEN: k5rr/Ppp5/8/4Q3/1P1P4/3q3P/5PP1/R3R1K1 b - - 0 1
    -- 1...Rg8×g2+  2.Kg1×g2 Qd3×h3+  3.Kg2-g1 Qh3-h1#
    {
        id=34, category="mat3",
        title="Sacrifice de tour, mat de dame",
        title_en="Rook sacrifice, queen mate",
        desc="Les noirs jouent et font mat en 3 coups.",
        desc_en="Black to play and mate in 3.",
        fen="k5rr/Ppp5/8/4Q3/1P1P4/3q3P/5PP1/R3R1K1 b - - 0 1",
        solution={
            {fr=1,fc=7,tr=7,tc=7},  -- Rg8→Rg2+ (sacrifice)
            {fr=8,fc=7,tr=7,tc=7},  -- Kg1×Rg2 (forcé)
            {fr=6,fc=4,tr=6,tc=8},  -- Qd3×Ph3+
            {fr=7,fc=7,tr=8,tc=7},  -- Kg2→Kg1 (forcé)
            {fr=6,fc=8,tr=8,tc=8},  -- Qh3→Qh1#
        },
        hint="Sacrifiez la tour en g2 pour attirer le roi, prenez h3 avec échec, puis dame en h1 mat.",
        hint_en="Sacrifice the rook on g2 to lure the king, take h3 with check, then the queen mates on h1.",
    },

    -- 35. Sacrifice de dame, mat de tour (noirs jouent)
    -- Lichess étude JrwLZArS, puzzle 4 (vérifié)
    -- FEN: 4k2r/Q5pp/3bp3/4n3/1r5q/8/PP2B1PP/R1B2R1K b - - 0 1
    -- 1...Qh4×h2+  2.Kh1×h2 Ne5-f3+  3.Kh2-h3 Rb4-h4#
    {
        id=35, category="mat3",
        title="Sacrifice de dame, mat de tour",
        title_en="Queen sacrifice, rook mate",
        desc="Les noirs jouent et font mat en 3 coups.",
        desc_en="Black to play and mate in 3.",
        fen="4k2r/Q5pp/3bp3/4n3/1r5q/8/PP2B1PP/R1B2R1K b - - 0 1",
        solution={
            {fr=5,fc=8,tr=7,tc=8},  -- Qh4×Ph2+ (sacrifice dame)
            {fr=8,fc=8,tr=7,tc=8},  -- Kh1×Qh2 (forcé)
            {fr=4,fc=5,tr=6,tc=6},  -- Ne5→Nf3+
            {fr=7,fc=8,tr=6,tc=8},  -- Kh2→Kh3 (forcé)
            {fr=5,fc=2,tr=5,tc=8},  -- Rb4→Rh4#
        },
        hint="Sacrifiez la dame en h2, cavalier en f3 donne échec, tour en h4 mate.",
        hint_en="Sacrifice the queen on h2, the knight checks from f3, the rook mates on h4.",
    },

    -- 44. Philidor's Legacy — le mat étouffé complet (double échec + sacrifice de dame)
    -- FEN: Kg8 Rf8 pg7 ph7 / Qb3 Nf7 Ka1
    -- 1.Nh6+!! (double échec : cavalier + dame découverte) Kh8 (forcé, seule case)
    -- 2.Qg8+!! Rxg8 (forcé, Kxg8 illégal — défendu par Nh6) 3.Nf7# (mat étouffé)
    {
        id=44, category="mat3",
        title="Le Testament de Philidor",
        title_en="Philidor's Legacy",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="5rk1/5Npp/8/8/8/1Q6/8/K7 w - - 0 1",
        solution={
            {fr=2,fc=6,tr=3,tc=8},  -- Nf7→Nh6+ (double échec, découvre Qb3)
            {fr=1,fc=7,tr=1,tc=8},  -- Kg8→Kh8 (forcé)
            {fr=6,fc=2,tr=1,tc=7},  -- Qg8+!!
            {fr=1,fc=6,tr=1,tc=7},  -- Rxg8 (forcé)
            {fr=3,fc=8,tr=2,tc=6},  -- Nf7# (mat étouffé)
        },
        hint="Nh6+ est un double échec (cavalier + tour découverte) qui force Kh8. Puis sacrifiez la dame en g8 : la tour est forcée de reprendre, et Nf7 mate — le roi est étouffé par ses propres pièces.",
        hint_en="Nh6+ is a double check (knight + discovered rook) that forces Kh8. Then sacrifice the queen on g8: the rook is forced to recapture, and Nf7 mates — the king is smothered by its own pieces.",
    },

    -- 45. Deux tours poussent le roi jusqu'au mat
    -- FEN: Kb7 / Ka1 Ke1(blanc) Rh5
    -- 1.Rh8 Kc7 (le roi recule) 2.Rh7+ Kd8 (forcé) 3.Ra8#
    {
        id=45, category="mat3",
        title="L'échelle des deux tours",
        title_en="The two-rook ladder",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="8/1k6/8/7R/8/8/8/R3K3 w - - 0 1",
        solution={
            {fr=4,fc=8,tr=1,tc=8},  -- Rh5→Rh8
            {fr=2,fc=2,tr=2,tc=3},  -- Kb7→Kc7
            {fr=1,fc=8,tr=2,tc=8},  -- Rh8→Rh7+
            {fr=2,fc=3,tr=1,tc=4},  -- Kc7→Kd8 (forcé)
            {fr=8,fc=1,tr=1,tc=1},  -- Ra1→Ra8#
        },
        hint="Amenez une tour sur la 8e rangée, puis l'autre coupe la 7e rangée — le roi est acculé sur la 8e rangée où Ra8 mate.",
        hint_en="Bring one rook to the 8th rank, then the other cuts off the 7th rank — the king is pushed back to the 8th rank, where Ra8 mates.",
    },

    -- 46. Dame et tour : mat en 3 par échecs successifs
    -- FEN: Kd8 / Qa1 Ke1 Rf1
    -- 1.Rf8+ Ke7 2.Rf7+ Kd8 (forcé) 3.Qh8#
    {
        id=46, category="mat3",
        title="Dame et tour, mat en 3",
        title_en="Queen and rook, mate in 3",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="3k4/8/8/8/8/8/8/Q3KR2 w - - 0 1",
        solution={
            {fr=8,fc=6,tr=1,tc=6},  -- Rf1→Rf8+
            {fr=1,fc=4,tr=2,tc=5},  -- Kd8→Ke7
            {fr=1,fc=6,tr=2,tc=6},  -- Rf8→Rf7+
            {fr=2,fc=5,tr=1,tc=4},  -- Ke7→Kd8 (forcé)
            {fr=8,fc=1,tr=1,tc=8},  -- Qa1→Qh8#
        },
        hint="La tour chasse le roi d'une rangée à l'autre, puis la dame mate sur la 8e rangée.",
        hint_en="The rook drives the king from one rank to the next, then the queen mates on the 8th rank.",
    },

    -- 47. Dame et fou : mat en 3
    -- FEN: Kd8 / Kc1 Qf1 Bg1
    -- 1.Bb6+ Kd7 (forcé) 2.Qf7+ Kc8 (forcé) 3.Qc7#
    {
        id=47, category="mat3",
        title="Dame et fou, mat en 3",
        title_en="Queen and bishop, mate in 3",
        desc="Les blancs jouent et font mat en 3 coups.",
        desc_en="White to play and mate in 3.",
        fen="3k4/8/8/8/8/8/8/2K2QB1 w - - 0 1",
        solution={
            {fr=8,fc=7,tr=3,tc=2},  -- Bg1→Bb6+
            {fr=1,fc=4,tr=2,tc=4},  -- Kd8→Kd7 (forcé)
            {fr=8,fc=6,tr=2,tc=6},  -- Qf1→Qf7+
            {fr=2,fc=4,tr=1,tc=3},  -- Kd7→Kc8 (forcé)
            {fr=2,fc=6,tr=2,tc=3},  -- Qf7→Qc7#
        },
        hint="Le fou donne échec depuis b6, la dame vient en f7 puis en c7 pour le mat.",
        hint_en="The bishop checks from b6, the queen comes to f7 and then to c7 for mate.",
    },
}
