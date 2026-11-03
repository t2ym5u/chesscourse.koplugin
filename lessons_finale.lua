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
        title_en="King and queen vs king (1)",
        desc="Les blancs gagnent. Utilisez la dame pour restreindre le roi adverse.",
        desc_en="White wins. Use the queen to restrict the enemy king.",
        fen="8/8/8/4k3/8/8/8/4KQ2 w - - 0 1",
        solution={ {fr=8,fc=6,tr=4,tc=6} },
        hint="La dame restreint le roi adverse sur le bord, puis le roi blanc approche.",
        hint_en="The queen confines the enemy king to the edge, then the white king comes closer.",
    },

    -- 25. K+Q vs K : closing in for mate
    -- FEN: Kd8 / Kd4 Qb7
    -- Qb7 (case du cavalier) coupe la 7e rangée sans priver le roi de e8 (évite le pat)
    -- Kd4→d5 rapproche le roi pour préparer le mat
    {
        id=25, category="finale",
        title="Roi et dame contre roi (2)",
        title_en="King and queen vs king (2)",
        desc="Les blancs jouent et font mat bientôt. Amenez le roi blanc.",
        desc_en="White to play and mate soon. Bring the white king closer.",
        fen="3k4/1Q6/8/8/3K4/8/8/8 w - - 0 1",
        solution={ {fr=5,fc=4,tr=4,tc=4} },
        hint="Le roi doit approcher pour que la dame puisse donner mat — attention à ne pas mettre le roi adverse pat !",
        hint_en="The king must come closer so that the queen can give mate — be careful not to stalemate the enemy king!",
    },

    -- 26. K+R vs K : rook cuts off king
    -- FEN: Kg1 / Ra1 Ke1
    -- Ra1(r8c1)→a2(r7c1) coupe le roi noir sur la rangée supérieure
    {
        id=26, category="finale",
        title="Roi et tour contre roi",
        title_en="King and rook vs king",
        desc="Les blancs gagnent. La tour coupe le roi adverse sur une rangée.",
        desc_en="White wins. The rook cuts off the enemy king along a rank.",
        fen="8/8/8/8/8/8/8/R3K1k1 w - - 0 1",
        solution={ {fr=8,fc=1,tr=7,tc=1} },
        hint="La tour coupe le roi adverse — puis le roi blanc avance colonne par colonne.",
        hint_en="The rook cuts off the enemy king — then the white king advances file by file.",
    },

    -- 27. Pawn endgame : opposition, key square e6
    -- FEN: Ke5 / Ke1 pe3
    -- Ke1(r8c5)→e2(r7c5) prend l'opposition et s'approche de la case clé e6
    {
        id=27, category="finale",
        title="Opposition — case clé",
        title_en="Opposition — key square",
        desc="Les blancs jouent et gagnent. Le roi doit escorter le pion à la promotion.",
        desc_en="White to play and win. The king must escort the pawn to promotion.",
        fen="8/8/8/4k3/8/4P3/8/4K3 w - - 0 1",
        solution={ {fr=8,fc=5,tr=7,tc=5} },
        hint="Avancez le roi pour prendre l'opposition et atteindre la case clé e6.",
        hint_en="Advance the king to take the opposition and reach the key square e6.",
    },

    -- 28. Pawn race : king escorts pawn
    -- FEN: Kd7 pd2(blanc) / Kd1
    -- Kd1→e2 (d2 est occupé par le pion) : le roi s'approche pour escorter le pion
    {
        id=28, category="finale",
        title="Course à la promotion",
        title_en="Race to promotion",
        desc="Les blancs jouent et gagnent la course à la promotion.",
        desc_en="White to play and win the race to promotion.",
        fen="8/3k4/8/8/8/8/3P4/3K4 w - - 0 1",
        solution={ {fr=8,fc=4,tr=7,tc=5} },
        hint="Le roi blanc doit avancer à côté de son pion pour l'escorter au plus vite.",
        hint_en="The white king must advance next to its pawn to escort it as quickly as possible.",
    },

    -- 29. Lucena position : building the bridge
    -- FEN: Kd8 pd7(blanc) Kg7(noir, coupé) / Ra1 Rb2(noir)
    -- Ra1→a4 : la tour va en 4e rangée pour préparer le pont (technique de Lucena)
    {
        id=29, category="finale",
        title="Position de Lucena — le pont",
        title_en="Lucena position — building a bridge",
        desc="Les blancs gagnent par la technique du pont.",
        desc_en="White wins with the bridge-building technique.",
        fen="3K4/3P2k1/8/8/8/8/1r6/R7 w - - 0 1",
        solution={ {fr=8,fc=1,tr=5,tc=1} },
        hint="Amenez la tour en 4e rangée pour préparer le pont — technique de Lucena.",
        hint_en="Bring the rook to the 4th rank to prepare the bridge — the Lucena technique.",
    },

    -- 30. Philidor position : classic rook endgame, activate the king
    -- FEN: Kd6 pd5 pd4 Kd2 Rd1
    -- Kd2→e3 active le roi (Rd1 ne peut pas avancer sur d2, occupé par le roi)
    {
        id=30, category="finale",
        title="Position de Philidor",
        title_en="Philidor position",
        desc="Finale classique de tour. Les blancs avancent — comment progresser ?",
        desc_en="A classic rook endgame. White to play — how do you make progress?",
        fen="8/8/3k4/3p4/3P4/8/3K4/3R4 w - - 0 1",
        solution={ {fr=7,fc=4,tr=6,tc=5} },
        hint="Activez le roi vers le centre pour soutenir la progression, la tour surveille la colonne d.",
        hint_en="Activate the king towards the centre to support the advance; the rook watches the d-file.",
    },

    -- 52. King + pawn endgame : distant opposition
    -- FEN: Ke8 / Ke1 pe2
    -- Ke1→d2 prend l'opposition éloignée avant d'escorter le pion
    {
        id=52, category="finale",
        title="Opposition éloignée",
        title_en="Distant opposition",
        desc="Les blancs jouent. Prenez l'opposition éloignée avant d'avancer.",
        desc_en="White to play. Take the distant opposition before advancing.",
        fen="4k3/8/8/8/8/8/4P3/4K3 w - - 0 1",
        solution={ {fr=8,fc=5,tr=7,tc=4} },
        hint="En prenant la colonne voisine, le roi blanc s'assure l'opposition quand les rois se rapprocheront.",
        hint_en="By moving to the neighbouring file, the white king makes sure it will have the opposition when the kings come closer.",
    },

    -- 53. K+R vs K : cutting off the king on a file (complement to #26's rank cut)
    -- FEN: Kd8 / Ra1 Ke1
    -- Ra1→d1+ coupe le roi noir sur la colonne d
    {
        id=53, category="finale",
        title="Coupure sur une colonne",
        title_en="Cutting off along a file",
        desc="Les blancs jouent. La tour coupe le roi adverse sur une colonne.",
        desc_en="White to play. The rook cuts off the enemy king along a file.",
        fen="3k4/8/8/8/8/8/8/R3K3 w - - 0 1",
        solution={ {fr=8,fc=1,tr=8,tc=4} },
        hint="La tour coupe le roi sur la colonne d — le roi blanc pourra ensuite avancer rangée par rangée.",
        hint_en="The rook cuts off the king along the d-file — the white king can then advance rank by rank.",
    },

    -- 54. Protected passed pawn : advance behind the shield
    -- FEN: Kc6 / Kc3 pc4 pe4
    -- e4-e5 avance le pion protégé par l'autre pion, hors de portée du roi noir
    {
        id=54, category="finale",
        title="Pion protégé, avancée",
        title_en="Protected pawn, advance",
        desc="Les blancs jouent. Avancez le pion protégé pour progresser vers la promotion.",
        desc_en="White to play. Advance the protected pawn to make progress towards promotion.",
        fen="8/8/2k5/8/2P1P3/2K5/8/8 w - - 0 1",
        solution={ {fr=5,fc=5,tr=4,tc=5} },
        hint="Le pion e4 est protégé par le pion c4 — avancez-le, le roi noir ne peut pas l'arrêter seul.",
        hint_en="The e4 pawn is protected by the c4 pawn — push it, the black king cannot stop it on its own.",
    },
}
