# Fiche de préparation — Leçon 57 : Ruy Lopez

- **Catégorie** : Ouverture (`ouverture`)
- **Fichier source** : `lessons_ouverture.lua`
- **Énoncé** : Les blancs jouent la Ruy Lopez, l'une des ouvertures les plus classiques aux échecs.
- **Trait aux** : Les blancs
- **FEN de départ** : `r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3`

## Position de départ

```
8  r . b q k b n r
7  p p p p . p p p
6  . . n . . . . .
5  . . . . p . . .
4  . . . . P . . .
3  . . . . . N . .
2  P P P P . P P P
1  R N B Q K B . R
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Bb5 | fr=8,fc=6 -> tr=4,tc=2 |
| 2 | Noirs | a6 | fr=2,fc=1 -> tr=3,tc=1 |
| 3 | Blancs | Ba4 | fr=4,fc=2 -> tr=5,tc=1 |

## Position finale

```
8  r . b q k b n r
7  . p p p . p p p
6  p . n . . . . .
5  . . . . p . . .
4  B . . . P . . .
3  . . . . . N . .
2  P P P P . P P P
1  R N B Q K . . R
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Bb5 attaque le cavalier c6, qui défend le pion e5 — c'est la Ruy Lopez.
