# Fiche de préparation — Leçon 58 : Piège de l'ouverture — le mat du berger

- **Catégorie** : Ouverture (`ouverture`)
- **Fichier source** : `lessons_ouverture.lua`
- **Énoncé** : Les noirs viennent de jouer Nf6?? en négligeant la menace. Trouvez le mat.
- **Trait aux** : Les blancs
- **FEN de départ** : `r1bqkb1r/pppp1ppp/2n2n2/4p2Q/2B1P3/8/PPPP1PPP/RNB1K1NR w KQkq - 4 4`

## Position de départ

```
8  r . b q k b . r
7  p p p p . p p p
6  . . n . . n . .
5  . . . . p . . Q
4  . . B . P . . .
3  . . . . . . . .
2  P P P P . P P P
1  R N B . K . N R
   a b c d e f g h
```

## Solution vérifiée (python-chess)

| # | Camp | Coup (SAN) | Coordonnées grille (r=1 rangée 8, c=1 colonne a) |
|---|------|-----------|---------------------------------------------------|
| 1 | Blancs | Qxf7# | fr=4,fc=8 -> tr=2,tc=6 |

## Position finale

```
8  r . b q k b . r
7  p p p p . Q p p
6  . . n . . n . .
5  . . . . p . . .
4  . . B . P . . .
3  . . . . . . . .
2  P P P P . P P P
1  R N B . K . N R
   a b c d e f g h
```

**Statut** : échec et mat confirmé.

## Indice affiché en jeu

> La dame et le fou visent tous les deux f7, qui n'est plus défendu — Qxf7#, le fameux « mat du berger ».
