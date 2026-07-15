# Fiche de préparation — Leçon 16 : Fourchette du cavalier

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la tour grâce à une fourchette.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/r3k3/8/8/3N4/8/4K3 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  r . . . k . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . N . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Nc5+ | fr=6,fc=4 -> tr=4,tc=3 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  r . . . k . . .
5  . . N . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le cavalier peut attaquer le roi et la tour en même temps.
