# Fiche de préparation — Leçon 24 : Roi et dame contre roi (1)

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs gagnent. Utilisez la dame pour restreindre le roi adverse.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/8/4k3/8/8/8/4KQ2 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . k . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K Q . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Qf5+ | fr=8,fc=6 -> tr=4,tc=6 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  . . . . . . . .
5  . . . . k Q . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> La dame restreint le roi adverse sur le bord, puis le roi blanc approche.
