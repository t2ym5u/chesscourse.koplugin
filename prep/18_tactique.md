# Fiche de préparation — Leçon 18 : Enfilade de tour

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la tour adverse grâce à une enfilade.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/1r6/8/1k6/4K3/8/8/3R4 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . r . . . . . .
6  . . . . . . . .
5  . k . . . . . .
4  . . . . K . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . R . . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Rb1+ | fr=8,fc=4 -> tr=8,tc=2 |

## Position finale

```
8  . . . . . . . .
7  . r . . . . . .
6  . . . . . . . .
5  . k . . . . . .
4  . . . . K . . .
3  . . . . . . . .
2  . . . . . . . .
1  . R . . . . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Donnez échec au roi sur la colonne b — sa propre tour, bloquée derrière lui, ne peut pas aider.
