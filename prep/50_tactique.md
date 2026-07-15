# Fiche de préparation — Leçon 50 : Attaque à la découverte (fou)

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la tour adverse par une attaque à la découverte.
- **Trait aux** : Les blancs
- **FEN de départ** : `4k3/8/3r4/4B3/8/8/8/4RK2 w - - 0 1`

## Position de départ

```
8  . . . . k . . .
7  . . . . . . . .
6  . . . r . . . .
5  . . . . B . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . R K . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Bxd6+ | fr=4,fc=5 -> tr=3,tc=4 |

## Position finale

```
8  . . . . k . . .
7  . . . . . . . .
6  . . . B . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . R K . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le fou prend la tour tout en découvrant l'échec de la tour blanche sur la colonne e.
