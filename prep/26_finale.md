# Fiche de préparation — Leçon 26 : Roi et tour contre roi

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs gagnent. La tour coupe le roi adverse sur une rangée.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/8/8/8/8/8/R3K1k1 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  R . . . K . k .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Ra2 | fr=8,fc=1 -> tr=7,tc=1 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  R . . . . . . .
1  . . . . K . k .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> La tour coupe le roi adverse — puis le roi blanc avance colonne par colonne.
