# Fiche de préparation — Leçon 29 : Position de Lucena — le pont

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs gagnent par la technique du pont.
- **Trait aux** : Les blancs
- **FEN de départ** : `3K4/3P2k1/8/8/8/8/1r6/R7 w - - 0 1`

## Position de départ

```
8  . . . K . . . .
7  . . . P . . k .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . r . . . . . .
1  R . . . . . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Ra4 | fr=8,fc=1 -> tr=5,tc=1 |

## Position finale

```
8  . . . K . . . .
7  . . . P . . k .
6  . . . . . . . .
5  . . . . . . . .
4  R . . . . . . .
3  . . . . . . . .
2  . r . . . . . .
1  . . . . . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Amenez la tour en 4e rangée pour préparer le pont — technique de Lucena.
