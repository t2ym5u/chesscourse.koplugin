-- ---------------------------------------------------------------------------
-- lessons_tactique.lua — 8 puzzles de tactique
-- Thèmes : fourchette, clouage absolu, enfilade, attaque à la découverte
-- ---------------------------------------------------------------------------

return {

    -- 16. Knight fork : Nc5+ forks Ke6 and Ra6
    -- FEN: Ke6 Ra6 / Nd3 Ke1
    -- Nd3(r6c4)→c5(r4c3) : Nc5 couvre e6(r3c5)=Ke6 et a6(r3c1)=Ra6 → fourchette
    {
        id=16, category="tactique",
        title="Fourchette du cavalier",
        desc="Les blancs jouent et gagnent la tour grâce à une fourchette.",
        fen="8/8/r3k3/8/8/3N4/8/4K3 w - - 0 1",
        solution={ {fr=6,fc=4,tr=4,tc=3} },
        hint="Le cavalier peut attaquer le roi et la tour en même temps.",
    },

    -- 17. Absolute pin : Bb5 pins Nc6 to Ke8 ; Bxc6+
    -- FEN: Ke8 Nc6 / Bb5 Ke1
    -- Bb5(r4c2) diagonale : (r3c3)=Nc6→(r2c4)→(r1c5)=Ke8 — clouage absolu
    -- Bxc6+ gagne le cavalier et donne échec
    {
        id=17, category="tactique",
        title="Exploiter le clouage absolu",
        desc="Les blancs jouent et gagnent le cavalier grâce au clouage absolu.",
        fen="4k3/8/2n5/1B6/8/8/8/4K3 w - - 0 1",
        solution={ {fr=4,fc=2,tr=3,tc=3} },
        hint="La pièce clouée sur le roi ne peut pas fuir — capturez-la !",
    },

    -- 18. Rook skewer : Rd1-b1+ checks along the b-file; the black rook at
    -- b7 is behind its own king and cannot block or capture (blocked by Kb5).
    -- King must step off the b-file, exposing Rb7 to Rxb7 next move.
    -- FEN: Kb5 Rb7 / Ke4 Rd1
    {
        id=18, category="tactique",
        title="Enfilade de tour",
        desc="Les blancs jouent et gagnent la tour adverse grâce à une enfilade.",
        fen="8/1r6/8/1k6/4K3/8/8/3R4 w - - 0 1",
        solution={ {fr=8,fc=4,tr=8,tc=2} },
        hint="Donnez échec au roi sur la colonne b — sa propre tour, bloquée derrière lui, ne peut pas aider.",
    },

    -- 19. Discovered check + wins the queen : Ne5xd7+ (knight captures the
    -- queen and simultaneously unmasks Re1's check along the open e-file)
    -- FEN: Ke8 Qd7 / Ne5 Re1 Kg2
    {
        id=19, category="tactique",
        title="Attaque à la découverte",
        desc="Les blancs jouent et gagnent la dame adverse par une attaque à la découverte.",
        fen="4k3/3q4/8/4N3/8/8/6K1/4R3 w - - 0 1",
        solution={ {fr=4,fc=5,tr=2,tc=4} },
        hint="Le cavalier prend la dame tout en découvrant l'échec de la tour sur la colonne e.",
    },

    -- 20. Knight fork on king and queen : Nf6+ forks Ke8 and Qd7
    -- FEN: Ke8 Qd7 / Nd5 Ke1
    -- Nd5(r4c4)→f6(r3c6) : Nf6 couvre e8(r1c5)=Ke8 et d7(r2c4)=Qd7 → fourchette
    {
        id=20, category="tactique",
        title="Fourchette cavalier sur roi et dame",
        desc="Les blancs jouent et gagnent la dame grâce à une fourchette de cavalier.",
        fen="4k3/3q4/8/3N4/8/8/8/4K3 w - - 0 1",
        solution={ {fr=4,fc=4,tr=3,tc=6} },
        hint="Le cavalier peut-il attaquer le roi et la dame simultanément ?",
    },

    -- 21. Queen fork : Qe5+ forks Ke7 (e-file) and Ra5 (rank 4)
    -- FEN: Ke7 Ra5 / Qa1 Ke1
    -- Qa1(r8c1)→e5(r4c5) diagonale ; Qe5 échec Ke7(r2c5) col e ; attaque Ra5(r4c1) rang 4
    {
        id=21, category="tactique",
        title="Fourchette de la dame",
        desc="Les blancs jouent et gagnent la tour grâce à une fourchette de la dame.",
        fen="8/4k3/8/r7/8/8/8/Q3K3 w - - 0 1",
        solution={ {fr=8,fc=1,tr=4,tc=5} },
        hint="La dame va en e5 — elle donne échec et attaque la tour en même temps.",
    },

    -- 22. Pin on d-file : Rd1 pins Nd4 to Kd8 ; Rxd4
    -- FEN: Kd8 Nd4 / Rd1 Ke1
    -- Rd1(r8c4) col d : Nd4(r5c4) cloué sur Kd8(r1c4) — Rxd4 gagne le cavalier (+échec)
    {
        id=22, category="tactique",
        title="Clouage sur colonne d",
        desc="Les blancs exploitent le clouage pour gagner le cavalier.",
        fen="3k4/8/8/8/3n4/8/8/3RK3 w - - 0 1",
        solution={ {fr=8,fc=4,tr=5,tc=4} },
        hint="Le cavalier est cloué sur la colonne d — capturez-le !",
    },

    -- 23. Skewer on f-file : Rh1-f1+ checks along the f-file; the black rook
    -- at f7 is behind its own king (Kf5) and cannot block or capture.
    -- King must step off the f-file, exposing Rf7 to Rxf7 next move.
    -- FEN: Kf5 Rf7 / Kg2 Rh1
    {
        id=23, category="tactique",
        title="Enfilade sur colonne f",
        desc="Les blancs attaquent le roi et gagnent la tour sur la même colonne.",
        fen="8/5r2/8/5k2/8/8/6K1/7R w - - 0 1",
        solution={ {fr=8,fc=8,tr=8,tc=6} },
        hint="Donnez échec au roi sur la colonne f — sa propre tour, bloquée derrière lui, ne peut pas aider.",
    },

    -- 48. Knight captures the queen with check (removes the defender of e8)
    -- FEN: Kg8 pf7 pg7 ph7 Qe7 / Nc6 Re1 Ka1
    {
        id=48, category="tactique",
        title="Cavalier : gain de la dame avec échec",
        desc="Les blancs jouent et gagnent la dame adverse.",
        fen="6k1/4qppp/2N5/8/8/8/8/K3R3 w - - 0 1",
        solution={ {fr=3,fc=3,tr=2,tc=5} },
        hint="Le cavalier peut prendre la dame tout en donnant échec.",
    },

    -- 49. Queen fork : Qc4+ forks Ke6 (file) and Rc3 (file c)
    -- FEN: Ke6 Rc3 / Qh4 Ke1
    {
        id=49, category="tactique",
        title="Fourchette de la dame (variante)",
        desc="Les blancs jouent et gagnent la tour grâce à une fourchette de la dame.",
        fen="8/8/4k3/8/7Q/2r5/8/4K3 w - - 0 1",
        solution={ {fr=5,fc=8,tr=5,tc=3} },
        hint="La dame va en c4 — elle donne échec et attaque la tour sur la colonne c.",
    },

    -- 50. Discovered check via bishop capture : Bxd6+ wins the rook and unmasks Re1
    -- FEN: Ke8 Rd6 / Be5 Re1 Kf1
    {
        id=50, category="tactique",
        title="Attaque à la découverte (fou)",
        desc="Les blancs jouent et gagnent la tour adverse par une attaque à la découverte.",
        fen="4k3/8/3r4/4B3/8/8/8/4RK2 w - - 0 1",
        solution={ {fr=4,fc=5,tr=3,tc=4} },
        hint="Le fou prend la tour tout en découvrant l'échec de la tour blanche sur la colonne e.",
    },

    -- 51. Bishop skewer on the a4-e8 diagonal : Ba4+ skewers Kc6, wins Re8
    -- FEN: Kc6 Re8 / Bd1 Kh1
    {
        id=51, category="tactique",
        title="Enfilade du fou",
        desc="Les blancs jouent et gagnent la tour adverse grâce à une enfilade du fou.",
        fen="4r3/8/2k5/8/8/8/8/3B3K w - - 0 1",
        solution={ {fr=8,fc=4,tr=5,tc=1} },
        hint="Le fou donne échec sur la diagonale — le roi s'écarte et expose la tour derrière lui.",
    },
}
