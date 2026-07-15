# Fiche de préparation — Leçon 21 : Fourchette de la dame

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la tour grâce à une fourchette de la dame.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/4k3/8/r7/8/8/8/Q3K3 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . k . . .
6  . . . . . . . .
5  r . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  Q . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Qe5+ | fr=8,fc=1 -> tr=4,tc=5 |

## Position finale

```
8  . . . . . . . .
7  . . . . k . . .
6  . . . . . . . .
5  r . . . Q . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> La dame va en e5 — elle donne échec et attaque la tour en même temps.
