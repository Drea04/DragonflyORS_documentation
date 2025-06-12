#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Segmentation manuelle 3D 
// Insert space
#v(25pt, weak: true)
Jusqu'à présent, nous avons abordé des méthodes de segmentation en 2D, ce qui implique que, pour segmenter un objet 3D dans une pile d'images, il faut répéter la sélection des pixels image par image. Cependant, certains outils permettent de simplifier et d'accélérer la segmentation d'un objet en 3D.
// Insert space
#v(25pt, weak: true)









== Segmentation d'objet 3D avec la brosse multi-Slice
// Insert space
#v(25pt, weak: true)
La segmentation 3D à l'aide de la brosse « multi-slices » s'effectue depuis une vue 2D, tout en permettant un aperçu en temps réel sur la vue 3D. 

Ce mode permet d'ajouter ou de retirer des pixels sur plusieurs coupes successives d'un volume, en fonction de la taille de la brosse utilisée.

Pour observer le résultat de l'opération en 3D, il est nécessaire de démasquer le rendu 3D du dataset.
// Insert space
#v(25pt, weak: true)

Pour segmenter avec la brosse multi-slices:

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ROI Painter] 
      - Ouvrir les menus déroulants #text(weight: "bold")[Brush] et #text(weight: "bold")[2D-view tools] 
        -  Choisir le mode #text(weight: "bold")[Multi Slice] dans #text(weight: "bold")[2D-view tools]
          -  Commencer à peindre la ROI dans la vue 2D.  
  ]

// Insert space
#v(25pt, weak: true)
Afin de visualiser la segmentation 3D en mode multi-slice:

#tree-list[
- Démasquer le logo 3D de la ROI sélectionnée pour la segmentation.
  - Diminuer l'opacité de l'image (paramètre solidity du dataset)
    - Masquer le logo 3D du jeu de données à segmenter
      - L'objet en cours de segmentation apparaît dans la vue en 3D.
  ]

// Insert space
#v(25pt, weak: true)
Nous avons la possibilité d'utiliser le pinceau en 3D directement. Pour cela: 

#tree-list[
  - Sélectionner la ROI.
    - Sélectionner la vue en 3D pour rendre active la segmentation en 3D. 
      - Sélectionner le pinceau en 3D (mettre les étapes)
        - Modifier la segmentation directement dans la vue 3D. 
]







== Segmentation d'objet 3D par interpolation
// Insert space
#v(25pt, weak: true)

Le principe consiste à segmenter un objet d’intérêt dans quelques vues de la pile d’images séparées les unes des autres d’une dizaine de vues, puis à utiliser la fonction d’interpolation pour combler les vues non annotées entre deux vues annotées. 
Annoter les vues en utilisant les outils de segmentation décrits dans les précédentes parties (seuillage, dessin à la brosse…) 

Jusqu’à présent, nous avons abordé des méthodes de segmentation en 2D, ce qui implique que, pour segmenter un objet 3D dans une pile d’images, il faut répéter la sélection des pixels image par image. Cependant, certains outils permettent de simplifier et d’accélérer la segmentation d’un objet en 3D.