# Fiche de préparation — Leçon 53 : Coupure sur une colonne

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs jouent. La tour coupe le roi adverse sur une colonne.
- **Trait aux** : Les blancs
- **FEN de départ** : `3k4/8/8/8/8/8/8/R3K3 w - - 0 1`

## Position de départ

```
8  . . . k . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  R . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Rd1+ | fr=8,fc=1 -> tr=8,tc=4 |

## Position finale

```
8  . . . k . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . R K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> La tour coupe le roi sur la colonne d — le roi blanc pourra ensuite avancer rangée par rangée.
