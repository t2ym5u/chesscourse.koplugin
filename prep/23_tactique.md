# Fiche de préparation — Leçon 23 : Enfilade sur colonne f

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs attaquent le roi et gagnent la tour sur la même colonne.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/5r2/8/5k2/8/8/6K1/7R w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . r . .
6  . . . . . . . .
5  . . . . . k . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . K .
1  . . . . . . . R
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Rf1+ | fr=8,fc=8 -> tr=8,tc=6 |

## Position finale

```
8  . . . . . . . .
7  . . . . . r . .
6  . . . . . . . .
5  . . . . . k . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . K .
1  . . . . . R . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Donnez échec au roi sur la colonne f — sa propre tour, bloquée derrière lui, ne peut pas aider.
