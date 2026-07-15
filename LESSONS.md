# Cours d'échecs — Plan des 58 leçons

Fichier source : `lessons.lua` (agrège `lessons_mat1.lua`, `lessons_mat2.lua`, `lessons_mat3.lua`,
`lessons_tactique.lua`, `lessons_finale.lua`, `lessons_ouverture.lua`)

Coordonnées grille : r=1 = rangée 8 (noir), r=8 = rangée 1 (blanc) ; c=1 = colonne a, c=8 = colonne h.
Format solution : `{fr, fc, tr, tc}` — de/vers. Pour les puzzles à plusieurs coups, les coups aux
indices pairs (2, 4…) sont la réponse adverse, rejouée automatiquement par le moteur.

**Vérification** : toutes les positions et solutions de ce fichier ont été rejouées et validées
programmatiquement avec [python-chess](https://python-chess.readthedocs.io/) (légalité de chaque
coup, position de départ légale, mat effectif pour les catégories `mat1`/`mat2`/`mat3`, absence de
pat). Une fiche de préparation détaillée (diagramme avant/après, coups en notation SAN, statut de
vérification) existe pour chaque leçon dans le dossier [`prep/`](prep/README.md).

En 2026-07, un audit complet a révélé que 20 des 35 puzzles d'origine contenaient des positions ou
des coups illégaux (roi adverse déjà en échec avant le trait, pièces se recouvrant, "mats" qui n'en
étaient pas, un cas de pat caché). Tous ont été corrigés ci-dessous ; l'idée pédagogique d'origine a
été conservée autant que possible, seule la position a été ajustée pour être légale.

---

## Mat en 1 — `lessons_mat1.lua` (12 puzzles)

| #  | Titre                          | Pièce clé   | Idée                                                  |
|----|--------------------------------|-------------|-------------------------------------------------------|
|  1 | Mat de la dernière rangée      | Tour        | Ra8# — roi enfermé par ses propres pions              |
|  2 | Tour et roi, mat en coin       | Tour+Roi    | Rh8# à distance — roi blanc en b6 couvre a7/b7        |
|  3 | Mat avec tour et roi (variante)| Tour+Roi    | Ra1# via la colonne a — roi blanc en c7 couvre b7/b8   |
|  4 | Mat de la dame en g7           | Dame+Roi    | Qg7# — roi blanc en g6 défend la dame                |
|  5 | Dame en a2, mat en coin        | Dame+Roi    | Qa2# — défendue par le roi en b3                      |
|  6 | Double tour, mat en coin       | 2 Tours     | Une tour coupe la 7e rangée, l'autre mate à distance   |
|  7 | Dame en a7, mat en coin        | Dame+Roi    | Qa7# — défendue par le roi en a6, couvre b8 en diagonale |
|  8 | Mat d'Anastasie                | Tour+Cavalier | Rxh7# — cavalier en f6 défend la tour et couvre g8   |
|  9 | Mat de l'Arabe                 | Tour+Cavalier | Rh8# à distance — cavalier+roi couvrent g7/g8/h7     |
| 10 | Mat étouffé                    | Cavalier    | Nf7# — roi déjà étouffé par sa tour et ses pions       |
| 11 | Mat en queue d'aronde          | Dame+Roi    | Qe7# — pions d7/f7 bloquent les cases de fuite         |
| 12 | Mat de l'épaulette             | Dame        | Qe6# à distance — le roi est flanqué par ses propres tours |

(Numérotation interne : #9 = id 36, #10 = id 37, #11 = id 38, #12 = id 39.)

---

## Mat en 2 — `lessons_mat2.lua` (11 puzzles)

| #  | Titre                             | Idée                                                        |
|----|------------------------------------|-------------------------------------------------------------|
|  9 | Sacrifice de dame, mat en 2        | Qg8+!! Kxg8 (forcé) puis Ra8#                               |
| 10 | Sacrifice de dame en e8            | Qe8+! Rxe8 (forcé) puis Rxe8#                               |
| 11 | Échelle de tours (1)               | Ra5+ force Kb8, puis Rh8# à distance                        |
| 12 | Échelle de tours (2)               | Rh8+ force Ka7, puis Ra1# via la colonne a                  |
| 13 | Sacrifice de dame, variante        | Qd8+! Rxd8 (forcé) puis Rxd8# (miroir de #10)               |
| 14 | Dame : forcer le roi en b1         | Qd4+ force Kb1 (diagonale a1-h8), puis Qd1#                 |
| 15 | Tour et roi, mat en 2 (variante)   | Ra8+ force Kh7, puis Rh1# (miroir de #12, coin h)           |
| 16 | Sacrifice de dame et mat étouffé   | Qg8+!! Rxg8 (forcé, défendue par Nh6) puis Nf7# — mat étouffé |
| 17 | Échec à la découverte, mat en 2    | Bd6+ (découverte du Re1) force Kd8, puis Rh8#               |
| 18 | Déviation et mat sur la 8e rangée  | Qxd8+!! Bxd8 (forcé) puis Rxd8# — déviation du défenseur     |
| 19 | Dame : forcer le roi en g1         | Qe4+ force Kg1, puis Qe1# (miroir de #14)                   |

(Numérotation interne : #16 = id 40, #17 = id 41, #18 = id 42, #19 = id 43.)

---

## Mat en 3 — `lessons_mat3.lua` (9 puzzles)

Puzzles 1-5 sources : Lichess puzzle 4Ftq1, études j0Ay9fAz et JrwLZArS. Puzzles 4-5 : noirs jouent.

| #  | Titre                              | Thème                          | Idée                                          |
|----|-------------------------------------|--------------------------------|------------------------------------------------|
| 1  | Tour et roi — couloir               | Roi actif + tour               | Kxg6 ouvre le couloir, Ra8+ puis Rxf8#        |
| 2  | Sacrifice de fou, mat du cavalier   | Sacrifice + mat étouffé        | Bc6! bxc6 Kc8 c5 Nc7#                         |
| 3  | Deux fous — mat en coin             | Restriction progressive        | Bf6-a1, Be5+, Bc6# — deux fous convergent      |
| 4  | Sacrifice de tour, mat de dame      | Sacrifice + corridor (noirs)   | Rxg2+ Kxg2 Qxh3+ Kg1 Qh1#                     |
| 5  | Sacrifice de dame, mat de tour      | Sacrifice + cavalier (noirs)   | Qxh2+ Kxh2 Nf3+ Kh3 Rh4#                      |
| 6  | Le Testament de Philidor            | Double échec + mat étouffé     | Nh6+! (double échec) Kh8, Qg8+!! Rxg8, Nf7#   |
| 7  | L'échelle des deux tours            | Ladder mate                    | Rh8 Kc7 Rh7+ Kd8 Ra8#                         |
| 8  | Dame et tour, mat en 3              | Échecs successifs              | Rf8+ Ke7 Rf7+ Kd8 Qh8#                        |
| 9  | Dame et fou, mat en 3               | Combinaison dame+fou           | Bb6+ Kd7 Qf7+ Kc8 Qc7#                        |

(Numérotation interne : #6 = id 44 « Le Testament de Philidor » — la version complète et
authentique du mat étouffé de Philidor, avec double échec. #7 = id 45, #8 = id 46, #9 = id 47.
Note : #6-#7-#8-#9 ont des lignes de solution légales et vérifiées se terminant en mat, mais
certaines répliques noires ne sont pas strictement uniques — comme pour #4/#5 d'origine, le
moteur rejoue simplement le coup scripté sans vérifier qu'il s'agit du seul coup légal.)

---

## Tactique — `lessons_tactique.lua` (12 puzzles)

| #  | Titre                              | Thème         | Idée                                       |
|----|--------------------------------------|---------------|--------------------------------------------|
| 1  | Fourchette du cavalier             | Fourchette    | Nc5+ attaque Ke6 et Ra6 simultanément      |
| 2  | Exploiter le clouage absolu        | Clouage       | Bb5 cloue Nc6 sur Ke8 → Bxc6+             |
| 3  | Enfilade de tour                   | Enfilade      | Rb1+ — la tour adverse, bloquée derrière son roi, ne peut ni bloquer ni prendre |
| 4  | Attaque à la découverte            | Découverte    | Nxd7+ capture la dame et découvre l'échec de Re1 |
| 5  | Fourchette cavalier roi+dame       | Fourchette    | Nf6+ attaque Ke8 et Qd7                    |
| 6  | Fourchette de la dame              | Fourchette    | Qe5+ donne échec et attaque Ra5            |
| 7  | Clouage sur colonne d              | Clouage       | Rd1 cloue Nd4 sur Kd8 → Rxd4              |
| 8  | Enfilade sur colonne f             | Enfilade      | Rf1+ — même idée que #3, sur la colonne f  |
| 9  | Cavalier : gain de la dame avec échec | Fourchette (prise) | Nxe7+ capture la dame en donnant échec |
| 10 | Fourchette de la dame (variante)   | Fourchette    | Qc4+ attaque Ke6 et Rc3 simultanément      |
| 11 | Attaque à la découverte (fou)      | Découverte    | Bxd6+ capture la tour et découvre Re1      |
| 12 | Enfilade du fou                    | Enfilade      | Ba4+ enfile le roi et la tour sur la diagonale |

(Numérotation interne : #9 = id 48, #10 = id 49, #11 = id 50, #12 = id 51.)

---

## Finale — `lessons_finale.lua` (10 puzzles)

| #  | Titre                          | Thème               | Idée                                           |
|----|--------------------------------|----------------------|-------------------------------------------------|
| 1  | Roi et dame contre roi (1)     | Restriction          | Dame restreint le roi, sans le mettre pat       |
| 2  | Roi et dame contre roi (2)     | Rapprochement        | Qb7 coupe la 7e rangée sans priver le roi de sa dernière case ; le roi blanc approche |
| 3  | Roi et tour contre roi         | Coupure sur rangée   | La tour coupe le roi adverse sur une rangée     |
| 4  | Opposition — case clé          | Opposition           | Le roi prend l'opposition pour escorter le pion |
| 5  | Course à la promotion          | Course               | Le roi avance à côté de son pion pour l'escorter |
| 6  | Position de Lucena — le pont   | Technique Lucena     | La tour va en 4e rangée pour préparer le pont   |
| 7  | Position de Philidor           | Activation du roi    | Le roi s'active vers le centre                  |
| 8  | Opposition éloignée            | Opposition à distance| Le roi prend la colonne voisine pour s'assurer l'opposition |
| 9  | Coupure sur une colonne        | Coupure sur colonne  | La tour coupe le roi sur une colonne (complète #3) |
| 10 | Pion protégé, avancée          | Pion protégé         | Le pion protégé avance, hors de portée du roi seul |

(Numérotation interne : #8 = id 52, #9 = id 53, #10 = id 54.)

---

## Ouverture — `lessons_ouverture.lua` (4 puzzles, nouvelle catégorie)

Contrairement aux autres catégories, la position de départ est une position de théorie
d'ouverture (pas un extrait de milieu/fin de partie), et le "coup à trouver" est le coup
théorique principal — sauf pour le piège, où c'est le coup qui punit l'erreur adverse.

| #  | Titre                                 | Idée                                              |
|----|----------------------------------------|----------------------------------------------------|
| 1  | Gambit du roi                        | 1.e4 e5 2.f4 exf4 3.Nf3 — sacrifice de pion pour ouvrir le jeu |
| 2  | Défense sicilienne                    | 1.e4 c5 2.Nf3 d6 — contre-attaque asymétrique      |
| 3  | Ruy Lopez                             | 1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4 — ouverture espagnole |
| 4  | Piège de l'ouverture — le mat du berger | Punit 3...Nf6?? après 1.e4 e5 2.Qh5 Nc6 3.Bc4 par Qxf7# |

(Numérotation interne : ids 55 à 58.)
