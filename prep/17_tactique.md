# Fiche de préparation — Leçon 17 : Exploiter le clouage absolu

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent le cavalier grâce au clouage absolu.
- **Trait aux** : Les blancs
- **FEN de départ** : `4k3/8/2n5/1B6/8/8/8/4K3 w - - 0 1`

## Position de départ

```
8  . . . . k . . .
7  . . . . . . . .
6  . . n . . . . .
5  . B . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Bxc6+ | fr=4,fc=2 -> tr=3,tc=3 |

## Position finale

```
8  . . . . k . . .
7  . . . . . . . .
6  . . B . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> La pièce clouée sur le roi ne peut pas fuir — capturez-la !
