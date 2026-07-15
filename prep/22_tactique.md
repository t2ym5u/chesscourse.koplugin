# Fiche de préparation — Leçon 22 : Clouage sur colonne d

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs exploitent le clouage pour gagner le cavalier.
- **Trait aux** : Les blancs
- **FEN de départ** : `3k4/8/8/8/3n4/8/8/3RK3 w - - 0 1`

## Position de départ

```
8  . . . k . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . n . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . R K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Rxd4+ | fr=8,fc=4 -> tr=5,tc=4 |

## Position finale

```
8  . . . k . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . R . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le cavalier est cloué sur la colonne d — capturez-le !
