# Fiche de préparation — Leçon 19 : Attaque à la découverte

- **Catégorie** : Tactique (`tactique`)
- **Fichier source** : `lessons_tactique.lua`
- **Énoncé** : Les blancs jouent et gagnent la dame adverse par une attaque à la découverte.
- **Trait aux** : Les blancs
- **FEN de départ** : `4k3/3q4/8/4N3/8/8/6K1/4R3 w - - 0 1`

## Position de départ

```
8  . . . . k . . .
7  . . . q . . . .
6  . . . . . . . .
5  . . . . N . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . K .
1  . . . . R . . .
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Nxd7+ | fr=4,fc=5 -> tr=2,tc=4 |

## Position finale

```
8  . . . . k . . .
7  . . . N . . . .
6  . . . . . . . .
5  . . . . . . . .
4  . . . . . . . .
3  . . . . . . . .
2  . . . . . . K .
1  . . . . R . . .
   a b c d e f g h
```

**Statut** : échec (pas mat).

## Indice affiché en jeu

> Le cavalier prend la dame tout en découvrant l'échec de la tour sur la colonne e.
