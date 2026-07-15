# Fiche de préparation — Leçon 25 : Roi et dame contre roi (2)

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs jouent et font mat bientôt. Amenez le roi blanc.
- **Trait aux** : Les blancs
- **FEN de départ** : `3k4/1Q6/8/8/3K4/8/8/8 w - - 0 1`

## Position de départ

```
8  . . . k . . . .
7  . Q . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . K . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . . . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Kd5 | fr=5,fc=4 -> tr=4,tc=4 |

## Position finale

```
8  . . . k . . . .
7  . Q . . . . . .
6  . . . . . . . .
5  . . . K . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Le roi doit approcher pour que la dame puisse donner mat — attention à ne pas mettre le roi adverse pat !
