#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= L'outil Clip
// Insert space
#v(25pt, weak: true)
La fonction Clip permet d'explorer l'intérieur d'un volume 3D en masquant partiellement les données selon des plans orthogonaux et sans altérer les données originales. 

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0090.png", width:50%),
  caption: [L'outil Clip Tool])
// Insert space
#v(25pt, weak: true)


#pagebreak()

== Propriétés de l'outil Clip
#v(25pt, weak: true)

1. *Keep box when object is hidden*
Lorsque coché, la boîte clip reste visible même si l'objet associé est masqué.
// Image
#figure(
  image("../Image/0143.png", width:100%),
  caption: [A gauche, le jeu de donné est visible. A droite, le jeu de donnée a été masqué, mais la boîte clip est toujours visible.])
// Insert space
#v(25pt, weak: true)


2. *Grid lines*
Cette case permet d'afficher ou de cacher les lignes de grille sur la surface de la boîte.


3. *Borders*
Cette case permet d'afficher ou de cacher les bordures visibles de la boîte Clip.

4. *Axes*
Cette case permet d'afficher les repères directionnels colorés (X, Y, Z) sur la boîte Clip.

// Image
#figure(
  image("../Image/0132.png", width:100%),
  caption: [Grid lines (à gauche). Borders (au milieu). Axes (à droite).])
// Insert space
#v(25pt, weak: true)


5. *Captions*
Cette case permet d'afficher les annotations des trois axes (X, Y et Z)

6. *Label*
Cette case permet de choisir les repère de mesures selon deux axes ou 3 axes ainsi que la longueur de chaque axe. 
// Image
#figure(
  image("../Image/0133.png", width:100%),
  caption: [Axes with captions(à gauche). Label, 2 axes(au milieu). Label, 3 axes(à droite).])

// Image
#figure(
  image("../Image/0131.png", width:35%),
  caption: [AXes with captions(à gauche). Label, 2 axes(au milieu). Label, 3 axes(à droite).])

#pagebreak()

== Utilisation de l'outil clip et rendu 3D

Dans cette partie, nous allons voir comment utiliser l'outil clip afin de générer des rendu 3D. 

Pour cela: 

#tree-list[
  - Sélectionner le jeu de données à visualiser en 3D.
    - Activer le mode 3D (symbole "œil").
    - Sélectionner l’outil Clip.
    - Une boîte clip apparaît dans la vue 3D. 
                ]

#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0096.png", width:60%),
  caption: [Affichage de volume après sélection du clip Tool])
// Insert space
#v(25pt, weak: true)

Afin d'optimiser la visualisation en 3D, nous allons utiliser les options suivantes:

#tree-list[
  - Dans la section *3D Settings*, cochez les options suivantes:
    - *Tone mapping*
    - *Filtered Gradient*
                ]
Ces paramètres améliorent le rendu et la qualité de la zone découpée.
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0126.png", width:60%),
  caption: [Tone mapping et Filtered Gradient (en rouge)])
// Insert space
#v(25pt, weak: true)



Ensuite, pour commencer le découpage du jeu de données:

#tree-list[
  - Survolez une face de la boîte Clip sur le jeu de donnée jusqu'à ce qu'elle soit mise en surbrillance.
    - Cliquer et faites glisser la face pour déplacer le plan de découpe et ajuster la zone visible. 
                ]


#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0112.png", width:60%),
  caption: [Face du jeu de donnée en surbrillance])
// Insert space
#v(25pt, weak: true)

#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0113.png", width:50%),
  caption: [Jeu de données après découpage])
// Insert space
#v(25pt, weak: true)


Une fois que votre découpe a été réalisée, il faut supprimer la boîte Clip de la vue 3D. Pour cela: 
#tree-list[
  - CLiquer à nouveau sur le bouton Clip pour masquer la boîte Clip. 
    - L'effet de découpe reste appliqué même lorsque la boîte Clip est masquée. 
                ]


#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0114.png", width:60%),
  caption: [Jeu de données après découpage et suppression de la boîte Clip])
// Insert space
#v(25pt, weak: true)


Maintenant, nous pouvons l'affichage du jeu de données affichée. NOus pouvons utiliser les outils de *Window Leveling* et d'éclairage pour recentrer la région d'intérêt. 

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0115.png", width:60%),
  caption: [Exemple d'affichage après modification du B/C])
// Insert space
#v(25pt, weak: true)


Nous pouvons ensuite, appliquer des effets visuels situés dans le menu Clip. 
POur cela: 
#tree-list[
  - Dans le panneau Clip, ouvrez les sections Effets visuels (Visual Effects)
    - Décochez *clip*, puis cochez *Edge Contrast*
    - Dans la liste des Effets 3D, sélectionner Edge Contrast et ajuster son intensité à l'aide du curseur.
]

Nous pouvons modifier les paramètres suivants: 
- Edge Contrast
- Window Leveling
- Opacity
- Lookup table New

#pagebreak()
Voici un exemple de modification de l'affichage d'un jeu de données avec différents effets visuels. 
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0116.png", width:60%),
  caption: [Exemple d'affichage avant et après modification des effets visuels])
// Insert space
#v(25pt, weak: true)


