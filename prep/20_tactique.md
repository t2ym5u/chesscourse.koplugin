# Fiche de préparation — Leçon 20 : Fourchette cavalier sur roi et dame

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la dame grâce à une fourchette de cavalier.
- **Trait aux** : Les blancs
- **FEN de départ** : `4k3/3q4/8/3N4/8/8/8/4K3 w - - 0 1`

## Position de départ

```
8  . . . . k . . .
7  . . . q . . . .
6  . . . . . . . .
5  . . . N . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Nf6+ | fr=4,fc=4 -> tr=3,tc=6 |

## Position finale

```
8  . . . . k . . .
7  . . . q . . . .
6  . . . . . N . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . . .
1  . . . . K . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le cavalier peut-il attaquer le roi et la dame simultanément ?
