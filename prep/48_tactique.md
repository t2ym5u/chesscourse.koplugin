# Fiche de préparation — Leçon 48 : Cavalier : gain de la dame avec échec

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la dame adverse.
- **Trait aux** : Les blancs
- **FEN de départ** : `6k1/4qppp/2N5/8/8/8/8/K3R3 w - - 0 1`

## Position de départ

```
8  . . . . . . k .
7  . . . . q p p p
6  . . N . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  K . . . R . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Nxe7+ | fr=3,fc=3 -> tr=2,tc=5 |

## Position finale

```
8  . . . . . . k .
7  . . . . N p p p
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  K . . . R . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le cavalier peut prendre la dame tout en donnant échec.
