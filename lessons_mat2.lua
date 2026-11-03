-- ---------------------------------------------------------------------------
-- lessons_mat2.lua — 7 puzzles "Mat en 2"
-- Format solution : {blanc1, noir_forcé, blanc2} — les coups impairs (indices 2,4…)
-- sont rejoués automatiquement par le moteur comme réponse adverse.
-- ---------------------------------------------------------------------------

return {

    -- 9. Queen sacrifice on g8 (forced Kxg8), then rook mates on a8
    -- FEN: Kh8 pg7 ph7 / Qb3 Nd6 Ra1 Ke4
    -- 1.Qg8+!! Kxg8 (forcé : seul coup légal, g7/h7 bloqués par les pions) 2.Ra8#
    -- (Nd6 couvre f7, Ra8 couvre f8 et h8 via la 8e rangée)
    {
        id=9, category="mat2",
        title="Sacrifice de dame, mat en 2",
        title_en="Queen sacrifice, mate in 2",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="7k/6pp/3N4/8/4K3/1Q6/8/R7 w - - 0 1",
        solution={
            {fr=6,fc=2,tr=1,tc=7},   -- Qg8+!!
            {fr=1,fc=8,tr=1,tc=7},   -- Kxg8 (forcé)
            {fr=8,fc=1,tr=1,tc=1},   -- Ra8#
        },
        hint="Sacrifiez la dame en g8 — le roi est forcé de reprendre, puis la tour mate en a8.",
        hint_en="Sacrifice the queen on g8 — the king is forced to recapture, then the rook mates on a8.",
    },

    -- 10. Queen sacrifice on e8, rook mates
    -- FEN: Kg8 Re7 pf7 pg7 ph7 / Qa4 Re1 Kg1
    -- 1.Qe8+! Rxe8 (forcé : Kg8 bloqué par ses pions) 2.Rxe8#
    {
        id=10, category="mat2",
        title="Sacrifice de dame en e8",
        title_en="Queen sacrifice on e8",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="6k1/4rppp/8/8/Q7/8/8/4R1K1 w - - 0 1",
        solution={
            {fr=5,fc=1,tr=1,tc=5},   -- Qe8+
            {fr=2,fc=5,tr=1,tc=5},   -- Rxe8 (forcé)
            {fr=8,fc=5,tr=1,tc=5},   -- Rxe8#
        },
        hint="Sacrifiez la dame en e8 — la tour est forcée de reprendre, puis mat.",
        hint_en="Sacrifice the queen on e8 — the rook is forced to recapture, then mate.",
    },

    -- 11. Rook ladder mate in 2
    -- FEN: Ka8 / Kc6 Rh5 Rh1
    -- 1.Ra5+ (Rh5→a5) Kb8 (forcé : a7 col a, b7 couvert par Kc6) 2.Rh8#
    {
        id=11, category="mat2",
        title="Échelle de tours (1)",
        title_en="Rook ladder (1)",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="k7/8/2K5/7R/8/8/8/7R w - - 0 1",
        solution={
            {fr=4,fc=8,tr=4,tc=1},   -- Ra5+
            {fr=1,fc=1,tr=1,tc=2},   -- Ka8→Kb8 (forcé)
            {fr=8,fc=8,tr=1,tc=8},   -- Rh8#
        },
        hint="Une tour vient donner échec sur la colonne a, l'autre mate à distance sur la 8e rangée.",
        hint_en="One rook gives check on the a-file, the other mates from a distance on the 8th rank.",
    },

    -- 12. Rook ladder mate in 2 (variant)
    -- FEN: Ka8 / Kc6 Rh1 Rd1
    -- 1.Rh8+ Ka7 (forcé : b7/b8 couverts par Kc6/Rh8) 2.Ra1# (via la colonne a)
    {
        id=12, category="mat2",
        title="Échelle de tours (2)",
        title_en="Rook ladder (2)",
        desc="Les blancs jouent et forcent le roi en a7, puis mat.",
        desc_en="White to play: force the king to a7, then mate.",
        fen="k7/8/2K5/8/8/8/8/3R3R w - - 0 1",
        solution={
            {fr=8,fc=8,tr=1,tc=8},   -- Rh8+
            {fr=1,fc=1,tr=2,tc=1},   -- Ka8→Ka7 (forcé)
            {fr=8,fc=4,tr=8,tc=1},   -- Ra1#
        },
        hint="Forcer le roi en a7 avec une tour, puis mat de l'autre tour sur la colonne a.",
        hint_en="Force the king to a7 with one rook, then mate with the other rook on the a-file.",
    },

    -- 13. Queen sacrifice variant (mirror of #10)
    -- FEN: Kb8 Rd7 pa7 pb7 pc7 / Qh4 Rd1 Kb1
    -- 1.Qd8+! Rxd8 (forcé) 2.Rxd8#
    {
        id=13, category="mat2",
        title="Sacrifice de dame, variante",
        title_en="Queen sacrifice, another version",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="1k6/pppr4/8/8/7Q/8/8/1K1R4 w - - 0 1",
        solution={
            {fr=5,fc=8,tr=1,tc=4},   -- Qd8+
            {fr=2,fc=4,tr=1,tc=4},   -- Rxd8 (forcé)
            {fr=8,fc=4,tr=1,tc=4},   -- Rxd8#
        },
        hint="Même idée que la dame en e8 : sacrifiez-la en d8 pour forcer la tour à reprendre.",
        hint_en="Same idea as the queen on e8: sacrifice her on d8 to force the rook to recapture.",
    },

    -- 14. Queen drives king to b1, then mates
    -- FEN: Ka1 pa2 / Kb3 Qd8
    -- 1.Qd4+ Kb1 (forcé : a2 pion, b2/c3 diag Qd4) 2.Qd1# (rang 1 : a1,c1 couverts ; Kb3 couvre b2,c2)
    {
        id=14, category="mat2",
        title="Dame : forcer le roi en b1",
        title_en="Queen: drive the king to b1",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="3Q4/8/8/8/8/1K6/p7/k7 w - - 0 1",
        solution={
            {fr=1,fc=4,tr=5,tc=4},   -- Qd4+
            {fr=8,fc=1,tr=8,tc=2},   -- Ka1→Kb1 (forcé)
            {fr=5,fc=4,tr=8,tc=4},   -- Qd1#
        },
        hint="La dame en d4 force le roi en b1 (diagonale a1-h8), puis Qd1 mate sur la 1e rangée.",
        hint_en="The queen on d4 forces the king to b1 (a1–h8 diagonal), then Qd1 mates on the 1st rank.",
    },

    -- 15. Two rooks push king then mate (mirror of #12, coin h8)
    -- FEN: Kh8 / Kf6 Ra1 Re1
    -- 1.Ra8+ Kh7 (forcé) 2.Rh1# (via la colonne h)
    {
        id=15, category="mat2",
        title="Tour et roi, mat en 2 (variante)",
        title_en="Rook and king, mate in 2 (another version)",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="7k/8/5K2/8/8/8/8/R3R3 w - - 0 1",
        solution={
            {fr=8,fc=1,tr=1,tc=1},   -- Ra8+
            {fr=1,fc=8,tr=2,tc=8},   -- Kh8→Kh7 (forcé)
            {fr=8,fc=5,tr=8,tc=8},   -- Rh1#
        },
        hint="Ra8+ force le roi en h7, puis l'autre tour mate sur la colonne h — le roi f6 couvre g7.",
        hint_en="Ra8+ forces the king to h7, then the other rook mates on the h-file — the king on f6 covers g7.",
    },

    -- 40. Philidor's Legacy — smothered mate
    -- FEN: Kh8 Rf8 pg7 ph7 / Qb3 Nh6 Ka1
    -- 1.Qg8+!! Rxg8 (forcé : Kxg8 illégal, défendu par Nh6) 2.Nf7# (mat étouffé)
    {
        id=40, category="mat2",
        title="Sacrifice de dame et mat étouffé",
        title_en="Queen sacrifice and smothered mate",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="5r1k/6pp/7N/8/8/1Q6/8/K7 w - - 0 1",
        solution={
            {fr=6,fc=2,tr=1,tc=7},   -- Qg8+!!
            {fr=1,fc=6,tr=1,tc=7},   -- Rxg8 (forcé)
            {fr=3,fc=8,tr=2,tc=6},   -- Nf7#
        },
        hint="Sacrifiez la dame en g8 (défendue par le cavalier) — la tour est forcée de reprendre, puis Nf7 est un mat étouffé.",
        hint_en="Sacrifice the queen on g8 (defended by the knight) — the rook is forced to recapture, then Nf7 is a smothered mate.",
    },

    -- 41. Discovered check mate in 2
    -- FEN: Ke8 pd7 pf7 / Be5 Re1 Rh1 Ka1
    -- 1.Bd6+ (découverte de Re1) Kd8 (forcé) 2.Rh8#
    {
        id=41, category="mat2",
        title="Échec à la découverte, mat en 2",
        title_en="Discovered check, mate in 2",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="4k3/3p1p2/8/4B3/8/8/8/K3R2R w - - 0 1",
        solution={
            {fr=4,fc=5,tr=3,tc=4},   -- Bd6+ (découverte)
            {fr=1,fc=5,tr=1,tc=4},   -- Kd8 (forcé)
            {fr=8,fc=8,tr=1,tc=8},   -- Rh8#
        },
        hint="Le fou se déplace et découvre l'échec de la tour — il couvre aussi c7, e7 et f8. Puis l'autre tour mate sur la 8e rangée.",
        hint_en="The bishop moves away and uncovers the rook's check — it also covers c7, e7 and f8. Then the other rook mates on the 8th rank.",
    },

    -- 42. Deflection : queen sacrifice removes the defender, rook mates
    -- FEN: Kg8 Rd8 Bc7 pf7 pg7 ph7 / Qd4 Rd1 Ka1
    -- 1.Qxd8+!! Bxd8 (forcé) 2.Rxd8#
    {
        id=42, category="mat2",
        title="Déviation et mat sur la 8e rangée",
        title_en="Deflection and back-rank mate",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="3r2k1/2b2ppp/8/8/3Q4/8/8/K2R4 w - - 0 1",
        solution={
            {fr=5,fc=4,tr=1,tc=4},   -- Qxd8+!!
            {fr=2,fc=3,tr=1,tc=4},   -- Bxd8 (forcé)
            {fr=8,fc=4,tr=1,tc=4},   -- Rxd8#
        },
        hint="Sacrifiez la dame pour éliminer la tour qui garde la 8e rangée — le fou est forcé de reprendre, puis Rxd8 mate.",
        hint_en="Sacrifice the queen to remove the rook guarding the 8th rank — the bishop is forced to recapture, then Rxd8 mates.",
    },

    -- 43. Queen drives king to g1, then mates (mirror of #14, coin h)
    -- FEN: Kh1 ph2 / Kg3 Qe8
    -- 1.Qe4+ Kg1 (forcé) 2.Qe1#
    {
        id=43, category="mat2",
        title="Dame : forcer le roi en g1",
        title_en="Queen: drive the king to g1",
        desc="Les blancs jouent et font mat en 2 coups.",
        desc_en="White to play and mate in 2.",
        fen="4Q3/8/8/8/8/6K1/7p/7k w - - 0 1",
        solution={
            {fr=1,fc=5,tr=5,tc=5},   -- Qe4+
            {fr=8,fc=8,tr=8,tc=7},   -- Kh1→Kg1 (forcé)
            {fr=5,fc=5,tr=8,tc=5},   -- Qe1#
        },
        hint="La dame en e4 force le roi en g1 (diagonale h1-a8 inverse), puis Qe1 mate sur la 1e rangée.",
        hint_en="The queen on e4 forces the king to g1 (along the long h1–a8 diagonal), then Qe1 mates on the 1st rank.",
    },
}
