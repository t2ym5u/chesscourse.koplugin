# Fiche de préparation — Leçon 49 : Fourchette de la dame (variante)

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la tour grâce à une fourchette de la dame.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/4k3/8/7Q/2r5/8/4K3 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . k . . .
5  . . . . . . . .
4  . . . . . . . Q
3  . . r . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Qc4+ | fr=5,fc=8 -> tr=5,tc=3 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . k . . .
5  . . . . . . . .
4  . . Q . . . . .
3  . . r . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> La dame va en c4 — elle donne échec et attaque la tour sur la colonne c.
