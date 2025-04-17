#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Modification basique d'un jeu de données
// Insert space
#v(30pt, weak: true)
== Marquage des slices et modification des piles d'images
// Insert space
#v(20pt, weak: true)
En marquant les slices dans un jeu de données, nous pouvons supprimer les slices marquées, créer un jeu de données à partir des slices marquées, 

=== Marquer les slices
// Insert space
#v(20pt, weak: true)
Pour marquer les slices dans un jeu de données: 

#tree-list[
- Sélectionner le jeu de données en question dans la fenêtre #text(weight: "bold")[Data Properties and settings]
  - Clique-droit sur la slice affichée
    - Choisir #text(weight: "bold")[Show Marked Slices Indicator]
      - Une petite case en bas à droite de l'affichage apparaît
   ]
 
// Insert space
#v(30pt, weak: true)
// Image
    #figure(
      image("../Image/0067.png", width:100%),
      caption: [Outil 3D presets],
    )
    
// Insert space
#v(30pt, weak: true)
=== Supprimer les slices marquées
// Insert space
#v(20pt, weak: true)
Pour supprimer certaines slices dans un jeu de données:

#tree-list[
- Cocher les cases pour chaque slice que vous souhaitez supprimer
  - Clique-droit sur l'image
    - Sélectionner: #text(weight: "bold")[Remove All Marked Slices]
   ]

   
// Insert space
#v(30pt, weak: true)
=== Créer un jeu de données à partir des slices marquées
// Insert space
#v(20pt, weak: true)

Pour créer un jeu de données uniquement à partir des slices marquées:

#tree-list[
- Cocher les cases pour chaque slice que vous souhaitez supprimer
  - Sélectionner le jeu de données dans la fenêtre #text(weight: "bold")[Data Properties and settings]
    - Clique-droit sur le jeu de données
      - Sélectionner: #text(weight: "bold")[New image from marked Slices]
   ]

// Insert space
#v(30pt, weak: true)
== Modification et transformation d'un jeu de données
// Insert space
#v(30pt, weak: true)


- mettre image modify and transform
- mettre image modify and transform 2
// Insert space
#v(30pt, weak: true)
=== Crop
// Insert space
#v(30pt, weak: true)
- mettre image crop_1


=== Padding
- mettre image Padding

=== sample
mettre image sample

=== convert
mettre image convert

=== Resample geometry
mettre geometry

est-ce qu'on peut modifier la génométrie d'une ROI ::oui à tester

=== Invert
mettre image invert
Apply transformation from 


