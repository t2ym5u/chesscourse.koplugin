# Fiche de préparation — Leçon 51 : Enfilade du fou

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la tour adverse grâce à une enfilade du fou.
- **Trait aux** : Les blancs
- **FEN de départ** : `4r3/8/2k5/8/8/8/8/3B3K w - - 0 1`

## Position de départ

```
8  . . . . r . . .
7  . . . . . . . .
6  . . k . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . B . . . K
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Ba4+ | fr=8,fc=4 -> tr=5,tc=1 |

## Position finale

```
8  . . . . r . . .
7  . . . . . . . .
6  . . k . . . . .
5  . . . . . . . .
4  B . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . . . . K
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le fou donne échec sur la diagonale — le roi s'écarte et expose la tour derrière lui.
