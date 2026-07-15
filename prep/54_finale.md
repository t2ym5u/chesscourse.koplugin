# Fiche de préparation — Leçon 54 : Pion protégé, avancée

- **Catégorie** : Finale (`finale`)
- **Fichier source** : `lessons_finale.lua`
- **Énoncé** : Les blancs jouent. Avancez le pion protégé pour progresser vers la promotion.
- **Trait aux** : Les blancs
- **FEN de départ** : `8/8/2k5/8/2P1P3/2K5/8/8 w - - 0 1`

## Position de départ

```
8  . . . . . . . .
7  . . . . . . . .
6  . . k . . . . .
5  . . . . . . . .
4  . . P . P . . .
3  . . K . . . . .
2  . . . . . . . .
1  . . . . . . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | e5 | fr=5,fc=5 -> tr=4,tc=5 |

## Position finale

```
8  . . . . . . . .
7  . . . . . . . .
6  . . k . . . . .
5  . . . . P . . .
4  . . P . . . . .
3  . . K . . . . .
2  . . . . . . . .
1  . . . . . . . .
   a b c d e f g h
```

**Statut** : position finale calme (pas d'échec).

## Indice affiché en jeu

> Le pion e4 est protégé par le pion c4 — avancez-le, le roi noir ne peut pas l'arrêter seul.
