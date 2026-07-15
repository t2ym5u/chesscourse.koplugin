# Fiche de préparation — Leçon 27 : Opposition — case clé

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs jouent et gagnent. Le roi doit escorter le pion à la promotion.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/8/4k3/8/4P3/8/4K3 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . k . . .
4  . . . . . . . .
3  . . . . P . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Ke2 | fr=8,fc=5 -> tr=7,tc=5 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . k . . .
4  . . . . . . . .
3  . . . . P . . .
2  . . . . K . . .
1  . . . . . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Avancez le roi pour prendre l'opposition et atteindre la case clé e6.
