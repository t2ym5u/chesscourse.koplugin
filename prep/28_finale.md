# Fiche de préparation — Leçon 28 : Course à la promotion

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs jouent et gagnent la course à la promotion.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/3k4/8/8/8/8/3P4/3K4 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . k . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . P . . . .
1  . . . K . . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Ke2 | fr=8,fc=4 -> tr=7,tc=5 |

## Position finale

```
8  . . . . . . . .
7  . . . k . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . P K . . .
1  . . . . . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Le roi blanc doit avancer à côté de son pion pour l'escorter au plus vite.
