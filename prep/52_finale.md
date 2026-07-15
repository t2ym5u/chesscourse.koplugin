# Fiche de préparation — Leçon 52 : Opposition éloignée

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs jouent. Prenez l'opposition éloignée avant d'avancer.
- **Trait aux** : Les blancs
- **FEN de départ** : `4k3/8/8/8/8/8/4P3/4K3 w - - 0 1`

## Position de départ

```
8  . . . . k . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . P . . .
1  . . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Kd2 | fr=8,fc=5 -> tr=7,tc=4 |

## Position finale

```
8  . . . . k . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . K P . . .
1  . . . . . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> En prenant la colonne voisine, le roi blanc s'assure l'opposition quand les rois se rapprocheront.
