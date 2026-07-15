-- ---------------------------------------------------------------------------
-- lessons_ouverture.lua — 4 puzzles d'ouverture
-- Contrairement aux autres catégories, la position de départ n'est pas un
-- extrait de milieu/fin de partie mais une position de théorie d'ouverture.
-- Le "coup à trouver" est le coup théorique principal (ou le coup qui punit
-- une erreur, pour le piège n°58).
-- ---------------------------------------------------------------------------

return {

    -- 55. King's Gambit : 1.e4 e5 2.f4 exf4 3.Nf3
    -- FEN après 1.e4 e5, les blancs jouent
    {
        id=55, category="ouverture",
        title="Gambit du roi",
        desc="Les blancs jouent le gambit du roi : sacrifiez un pion pour ouvrir le jeu.",
        fen="rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2",
        solution={
            {fr=7,fc=6,tr=5,tc=6},  -- 2.f4
            {fr=4,fc=5,tr=5,tc=6},  -- 2...exf4
            {fr=8,fc=7,tr=6,tc=6},  -- 3.Nf3 (attaque le pion f4)
        },
        hint="f4 ouvre la colonne f et attaque le centre noir — c'est le gambit du roi.",
    },

    -- 56. Sicilian Defense : 1.e4 c5 2.Nf3 d6 (Najdorf-like setup)
    -- FEN après 1.e4, les noirs jouent
    {
        id=56, category="ouverture",
        title="Défense sicilienne",
        desc="Les noirs répondent par la défense sicilienne, l'ouverture la plus jouée contre 1.e4.",
        fen="rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1",
        solution={
            {fr=2,fc=3,tr=4,tc=3},  -- 1...c5
            {fr=8,fc=7,tr=6,tc=6},  -- 2.Nf3
            {fr=2,fc=4,tr=3,tc=4},  -- 2...d6
        },
        hint="c5 contre-attaque immédiatement la case d4 sans occuper le centre — c'est la sicilienne.",
    },

    -- 57. Ruy Lopez (Spanish Opening) : 1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4
    -- FEN après 1.e4 e5 2.Nf3 Nc6, les blancs jouent
    {
        id=57, category="ouverture",
        title="Ruy Lopez",
        desc="Les blancs jouent la Ruy Lopez, l'une des ouvertures les plus classiques aux échecs.",
        fen="r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3",
        solution={
            {fr=8,fc=6,tr=4,tc=2},  -- 3.Bb5
            {fr=2,fc=1,tr=3,tc=1},  -- 3...a6
            {fr=4,fc=2,tr=5,tc=1},  -- 4.Ba4
        },
        hint="Bb5 attaque le cavalier c6, qui défend le pion e5 — c'est la Ruy Lopez.",
    },

    -- 58. Opening trap : Scholar's Mate (punishing 3...Nf6??)
    -- FEN après 1.e4 e5 2.Qh5 Nc6 3.Bc4 Nf6??, les blancs jouent
    {
        id=58, category="ouverture",
        title="Piège de l'ouverture — le mat du berger",
        desc="Les noirs viennent de jouer Nf6?? en négligeant la menace. Trouvez le mat.",
        fen="r1bqkb1r/pppp1ppp/2n2n2/4p2Q/2B1P3/8/PPPP1PPP/RNB1K1NR w KQkq - 4 4",
        solution={
            {fr=4,fc=8,tr=2,tc=6},  -- Qxf7#
        },
        hint="La dame et le fou visent tous les deux f7, qui n'est plus défendu — Qxf7#, le fameux « mat du berger ».",
    },
}
