# Fiche de préparation — Leçon 30 : Position de Philidor

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Finale classique de tour. Les blancs avancent — comment progresser ?
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/3k4/3p4/3P4/8/3K4/3R4 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . k . . . .
5  . . . p . . . .
4  . . . P . . . .
3  . . . . . . . .
2  . . . K . . . .
1  . . . R . . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Ke3 | fr=7,fc=4 -> tr=6,tc=5 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . k . . . .
5  . . . p . . . .
4  . . . P . . . .
3  . . . . K . . .
2  . . . . . . . .
1  . . . R . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Activez le roi vers le centre pour soutenir la progression, la tour surveille la colonne d.
