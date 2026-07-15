# Fiche de préparation — Leçon 56 : Défense sicilienne

- **Catégorie** : Ouverture (`ouverture`)
- **Fichier source** : `lessons_ouverture.lua`
- **Énoncé** : Les noirs répondent par la défense sicilienne, l'ouverture la plus jouée contre 1.e4.
- **Trait aux** : Les noirs
- **FEN de départ** : `rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1`

## Position de départ

```
8  r n b q k b n r
7  p p p p p p p p
6  . . . . . . . .
5  . . . . . . . .
4  . . . . P . . .
3  . . . . . . . .
2  P P P P . P P P
1  R N B Q K B N R
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Noirs | c5 | fr=2,fc=3 -> tr=4,tc=3 |
| 2 | Blancs | Nf3 | fr=8,fc=7 -> tr=6,tc=6 |
| 3 | Noirs | d6 | fr=2,fc=4 -> tr=3,tc=4 |

## Position finale

```
8  r n b q k b n r
7  p p . . p p p p
6  . . . p . . . .
5  . . p . . . . .
4  . . . . P . . .
3  . . . . . N . .
2  P P P P . P P P
1  R N B Q K B . R
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> c5 contre-attaque immédiatement la case d4 sans occuper le centre — c'est la sicilienne.
