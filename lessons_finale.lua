-- ---------------------------------------------------------------------------
-- lessons_finale.lua — 7 puzzles de finale
-- Pour chaque puzzle, la solution indique le premier coup instructif.
-- Les finales nécessitent plusieurs coups précis : la solution guide le premier.
-- ---------------------------------------------------------------------------

return {

    -- 24. K+Q vs K : restrict the king
    -- FEN: Ke5 / Ke1 Qf1
    -- Qf1(r8c6)→f5(r4c6) coupe le roi adverse sur 4 rangs supérieurs
    {
        id=24, category="finale",
        title="Roi et dame contre roi (1)",
        desc="Les blancs gagnent. Utilisez la dame pour restreindre le roi adverse.",
        fen="8/8/8/4k3/8/8/8/4KQ2 w - - 0 1",
        solution={ {fr=8,fc=6,tr=4,tc=6} },
        hint="La dame restreint le roi adverse sur le bord, puis le roi blanc approche.",
    },

    -- 25. K+Q vs K : closing in for mate
    -- FEN: Kd8 / Kd4 Qb7
    -- Qb7 (case du cavalier) coupe la 7e rangée sans priver le roi de e8 (évite le pat)
    -- Kd4→d5 rapproche le roi pour préparer le mat
    {
        id=25, category="finale",
        title="Roi et dame contre roi (2)",
        desc="Les blancs jouent et font mat bientôt. Amenez le roi blanc.",
        fen="3k4/1Q6/8/8/3K4/8/8/8 w - - 0 1",
        solution={ {fr=5,fc=4,tr=4,tc=4} },
        hint="Le roi doit approcher pour que la dame puisse donner mat — attention à ne pas mettre le roi adverse pat !",
    },

    -- 26. K+R vs K : rook cuts off king
    -- FEN: Kg1 / Ra1 Ke1
    -- Ra1(r8c1)→a2(r7c1) coupe le roi noir sur la rangée supérieure
    {
        id=26, category="finale",
        title="Roi et tour contre roi",
        desc="Les blancs gagnent. La tour coupe le roi adverse sur une rangée.",
        fen="8/8/8/8/8/8/8/R3K1k1 w - - 0 1",
        solution={ {fr=8,fc=1,tr=7,tc=1} },
        hint="La tour coupe le roi adverse — puis le roi blanc avance colonne par colonne.",
    },

    -- 27. Pawn endgame : opposition, key square e6
    -- FEN: Ke5 / Ke1 pe3
    -- Ke1(r8c5)→e2(r7c5) prend l'opposition et s'approche de la case clé e6
    {
        id=27, category="finale",
        title="Opposition — case clé",
        desc="Les blancs jouent et gagnent. Le roi doit escorter le pion à la promotion.",
        fen="8/8/8/4k3/8/4P3/8/4K3 w - - 0 1",
        solution={ {fr=8,fc=5,tr=7,tc=5} },
        hint="Avancez le roi pour prendre l'opposition et atteindre la case clé e6.",
    },

    -- 28. Pawn race : king escorts pawn
    -- FEN: Kd7 pd2(blanc) / Kd1
    -- Kd1→e2 (d2 est occupé par le pion) : le roi s'approche pour escorter le pion
    {
        id=28, category="finale",
        title="Course à la promotion",
        desc="Les blancs jouent et gagnent la course à la promotion.",
        fen="8/3k4/8/8/8/8/3P4/3K4 w - - 0 1",
        solution={ {fr=8,fc=4,tr=7,tc=5} },
        hint="Le roi blanc doit avancer à côté de son pion pour l'escorter au plus vite.",
    },

    -- 29. Lucena position : building the bridge
    -- FEN: Kd8 pd7(blanc) Kg7(noir, coupé) / Ra1 Rb2(noir)
    -- Ra1→a4 : la tour va en 4e rangée pour préparer le pont (technique de Lucena)
    {
        id=29, category="finale",
        title="Position de Lucena — le pont",
        desc="Les blancs gagnent par la technique du pont.",
        fen="3K4/3P2k1/8/8/8/8/1r6/R7 w - - 0 1",
        solution={ {fr=8,fc=1,tr=5,tc=1} },
        hint="Amenez la tour en 4e rangée pour préparer le pont — technique de Lucena.",
    },

    -- 30. Philidor position : classic rook endgame, activate the king
    -- FEN: Kd6 pd5 pd4 Kd2 Rd1
    -- Kd2→e3 active le roi (Rd1 ne peut pas avancer sur d2, occupé par le roi)
    {
        id=30, category="finale",
        title="Position de Philidor",
        desc="Finale classique de tour. Les blancs avancent — comment progresser ?",
        fen="8/8/3k4/3p4/3P4/8/3K4/3R4 w - - 0 1",
        solution={ {fr=7,fc=4,tr=6,tc=5} },
        hint="Activez le roi vers le centre pour soutenir la progression, la tour surveille la colonne d.",
    },

    -- 52. King + pawn endgame : distant opposition
    -- FEN: Ke8 / Ke1 pe2
    -- Ke1→d2 prend l'opposition éloignée avant d'escorter le pion
    {
        id=52, category="finale",
        title="Opposition éloignée",
        desc="Les blancs jouent. Prenez l'opposition éloignée avant d'avancer.",
        fen="4k3/8/8/8/8/8/4P3/4K3 w - - 0 1",
        solution={ {fr=8,fc=5,tr=7,tc=4} },
        hint="En prenant la colonne voisine, le roi blanc s'assure l'opposition quand les rois se rapprocheront.",
    },

    -- 53. K+R vs K : cutting off the king on a file (complement to #26's rank cut)
    -- FEN: Kd8 / Ra1 Ke1
    -- Ra1→d1+ coupe le roi noir sur la colonne d
    {
        id=53, category="finale",
        title="Coupure sur une colonne",
        desc="Les blancs jouent. La tour coupe le roi adverse sur une colonne.",
        fen="3k4/8/8/8/8/8/8/R3K3 w - - 0 1",
        solution={ {fr=8,fc=1,tr=8,tc=4} },
        hint="La tour coupe le roi sur la colonne d — le roi blanc pourra ensuite avancer rangée par rangée.",
    },

    -- 54. Protected passed pawn : advance behind the shield
    -- FEN: Kc6 / Kc3 pc4 pe4
    -- e4-e5 avance le pion protégé par l'autre pion, hors de portée du roi noir
    {
        id=54, category="finale",
        title="Pion protégé, avancée",
        desc="Les blancs jouent. Avancez le pion protégé pour progresser vers la promotion.",
        fen="8/8/2k5/8/2P1P3/2K5/8/8 w - - 0 1",
        solution={ {fr=5,fc=5,tr=4,tc=5} },
        hint="Le pion e4 est protégé par le pion c4 — avancez-le, le roi noir ne peut pas l'arrêter seul.",
    },
}
