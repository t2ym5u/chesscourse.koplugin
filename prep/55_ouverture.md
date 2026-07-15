# Fiche de préparation — Leçon 55 : Gambit du roi

- **Catégorie** : Ouverture (`ouverture`)
- **Fichier source** : `lessons_ouverture.lua`
- **Énoncé** : Les blancs jouent le gambit du roi : sacrifiez un pion pour ouvrir le jeu.
- **Trait aux** : Les blancs
- **FEN de départ** : `rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2`

## Position de départ

```
8  r n b q k b n r
7  p p p p . p p p
6  . . . . . . . .
5  . . . . p . . .
4  . . . . P . . .
3  . . . . . . . .
2  P P P P . P P P
1  R N B Q K B N R
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | f4 | fr=7,fc=6 -> tr=5,tc=6 |
| 2 | Noirs | exf4 | fr=4,fc=5 -> tr=5,tc=6 |
| 3 | Blancs | Nf3 | fr=8,fc=7 -> tr=6,tc=6 |

## Position finale

```
8  r n b q k b n r
7  p p p p . p p p
6  . . . . . . . .
5  . . . . . . . .
4  . . . . P p . .
3  . . . . . N . .
2  P P P P . . P P
1  R N B Q K B . R
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> f4 ouvre la colonne f et attaque le centre noir — c'est le gambit du roi.
