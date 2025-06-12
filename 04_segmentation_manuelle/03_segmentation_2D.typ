#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Segmentation manuelle 
// Insert space
#v(25pt, weak: true)
Dans beaucoup de cas, le seuillage n’est pas adapté pour effectuer la sélection de pixels, il faut segmenter manuellement les classes. IL existe plusieurs outils de segmentation manuelle dans Dragonfly. 

// Insert space
#v(25pt, weak: true)

// Image
    #figure(
      image("../Image/0084.png", width:80%),
      caption: [Les outils de segmentation manuelle],
    )

//Saut de page
#pagebreak()








== Segmentation manuelle avec la brosse
// Insert space
#v(25pt, weak: true)
Pour segmenter une région manuellement à l’aide de la brosse :

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
  - Sélectionner :#text(weight: "bold")[ROI Painter] 
  - Ouvrir les menus déroulants #text(weight: "bold")[Brush] et #text(weight: "bold")[2D-view tools] 
    -  Choisir le mode #text(weight: "bold")[Single slice] ou le mode #text(weight: "bold")[Multi Slice] dans #text(weight: "bold")[2D-view tools]  
    - Sélectionner une brosse (ronde ou carré) 
    - Augmenter ou réduire la taille de la brosse (Ctrl + molette souris)
    - Sélectionner un type de brosse dans le menu déroulant (cf. Type de brosse)
          ]


// Insert space
#v(25pt, weak: true)

- Pour ajouter des pixels (segmentation): maintenir *Ctrl + Clic gauche* et déplacer la souris sur la zone d’intérêt 
- Pour effacer/retirer des pixels: maintenir *Shift + Clic gauche* et déplacer la souris sur la zone à retirer. 

// Insert space
#v(25pt, weak: true)

// Image
    #figure(
      image("../Image/0071.png", width:60%),
      caption: [Option #text(weight: "bold")[Brush Size]],
    )

// Insert space
#v(25pt, weak: true)





=== Les différents options de la brosse
// Insert space
#v(25pt, weak: true)



==== Single slice vs multi-slice
// Insert space
#v(25pt, weak: true)
- Single Slice : L'annotation ne s'effectue que sur la vue en cours.
- Multi Slice : L'annotation est étendue à lusieurs images du volume en fonction de la taille de la brosse sélectionnée. 
// Insert space
#v(25pt, weak: true)







==== Forme de la brosse
// Insert space
#v(25pt, weak: true)
- Brosse Ronde: Prend la forme d'un cercle en mode single slice et d'une sphère en mode multi-slice
- Brosse carrée: Prend la forme d'un carré en mode single slice et en cube en mode multi slice. 
// Insert space
#v(25pt, weak: true)







==== Taille de la brosse
// Insert space
#v(25pt, weak: true)
Pour modifier la taille de la brosse, il existe deux méthodes:
- Avec la souris: Maintenir *Ctrl + molette de la souris* pour augmenter ou réduire la taille.
- Avec l'option Brush size dans le ROI painter: Préciser la taille de la brosse en Pixels ou en nm/mm. 
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0070.png", width:40%),
      caption: [Option #text(weight: "bold")[Brush Size]],
    )
// Insert space
#v(25pt, weak: true)









==== Type de la brosse
// Insert space
#v(25pt, weak: true)

Il y a trois types de brosses dans Dragonfly
- Brosse pleine (Full)
- Brosse avec un filtre gaussien adaptative (Adaptative Gaussian)
- Brosse avec un filtre Otsu local (Local Otsu)
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0072.png", width:40%),
      caption: [Option: Type de brosse],
    )
// Insert space
#v(25pt, weak: true)









===== Brosse pleine (Full)
Tous les pixels (voxels) à l'intérieur de l'aire ou du volume de la brosse  seront marqués
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0075.png", width:40%),
      caption: [Brosse: Full],
    )

// Insert space
#v(25pt, weak: true)







===== Brosse Adaptative Gaussian
// Insert space
#v(25pt, weak: true)

Ce type de brosse applique un seuil local lors de la peinture. La valeur du seuil est déterminée par les intensités des pixels dans l'aire de la brosse (somme pondérée des intensités des pixels, moins une constante, avec des poids suivant un modèle gaussien).
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0073.png", width:80%),
      caption: [Brosse: Adaptive Gaussian],
    )
// Insert space
#v(25pt, weak: true)








===== Brosse Local Otsu
Ce type de brosse applique un seuil local lors de la peinture. La valeur du seuil est déterminée en maximisant la variance entre deux classes de pixels dans l'environnement local défini par l'aire de la brosse. Cochez la case « upper » ou « lower » pour sélectionner les pixels au-dessus ou en dessous du seuil.
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0074.png", width:80%),
      caption: [Brosse: Local Otsu],
    )

//Saut de page
#pagebreak()










== Segmentation avec l'outil Point and Click
// Insert space
#v(25pt, weak: true)
Ces outils permettent d'étendre la sélection sur la base d'une similitude d'intensité et d'une connectivité avec les pixels sélectionnés manuellement avec la brosse. 

Il y a trois outils *Point and Click* dans Dragonfly:
- Tool
- Ontline tool
- Fill tool
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0089.png", width:50%),
      caption: [Outil: *Point and Click*],
    )
// Insert space
#v(25pt, weak: true)


Pour segmenter l'outil *Point & Click*

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ ROI Painter] 
      - Sélectionner un des outils #text(weight: "bold")[Point & Click]
          - Choisir le dataset dans le menu déroulant
            - Pour ajuster la taille de la grille: 
            - Choisir le niveau de connectivité
          ]

// Insert space
#v(25pt, weak: true)

- Pour segmenter, maintenir *Ctrl + Clic gauche* et déplacer la souris sur la zone d’intérêt 

- Pour effacer/retirer des pixels, maintenir *Shift + Clic gauche* et déplacer la souris sur la zone à retirer. 


// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0091.png", width:70%),
      caption: [Outil: *Point and Click*],
    )

//Saut de page
#pagebreak()









=== Les niveaux de connectivité
// Insert space
#v(25pt, weak: true)
==== 4-connected
// Insert space
#v(25pt, weak: true)
La connexité 4 (4-connected) signifie que la propagation s’effectue en tenant compte uniquement des pixels qui sont en contact avec les quatre côtés (haut, bas, gauche, droite) des pixels sélectionnés.

Un pixel P est un voisin 4 d’un pixel donné Q si P et Q partagent un bord.

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0092.png", width:30%),
      caption: [Outil: *Point and Click*],
    )
// Insert space
#v(25pt, weak: true)






==== 8-connected 
// Insert space
#v(25pt, weak: true)
La connexité 8 (8-connected) signifie que la propagation s’effectue en prenant en compte les pixels en contact avec les quatre côtés ainsi que les quatre coins des pixels sélectionnés.

Un pixel P est un voisin 8 (ou simplement un voisin) d’un pixel donné Q si P et Q partagent soit un bord, soit un sommet.

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0093.png", width:30%),
      caption: [Outil: *Point and Click*],
    )
// Insert space
#v(25pt, weak: true)










=== Les différents outils Point & Click
// Insert space
#v(25pt, weak: true)

==== Point & Click Tool
// Insert space
#v(25pt, weak: true)
L’outil "Point & Click" permet d’ajouter ou de retirer des pixels connectés partageant les mêmes caractéristiques que ceux déjà sélectionnés (en fonction de la zone couverte par la brosse).
// Insert space
#v(25pt, weak: true)







==== Outline Tool
// Insert space
#v(25pt, weak: true)
L’outil "Outline" permet d’ajouter ou de retirer des pixels appartenant à un contour, en se basant sur une valeur d’intensité correspondant à celle de la sélection.
// Insert space
#v(25pt, weak: true)











==== Fill Tool
// Insert space
#v(25pt, weak: true)
L’outil "Fill" remplit une région fermée à l’intérieur d’une ROI (région d’intérêt).

Avec l’outil « Fill Tool », seul le pixel situé au centre de la zone couverte par la brosse est pris en compte pour la sélection.


// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0094.png", width:70%),
      caption: [Outil: *Point and Click*],
    )
// Insert space
#v(25pt, weak: true)

//Saut de page
#pagebreak()











== Segmentation manuelle avec Smart Grid
// Insert space
#v(25pt, weak: true)
L'outil Smart Grid, qui fournit des régions de masque de contours pouvant être remplies d'un seul clic pour définir une région d'intérêt ou pour modifier une segmentation, utilise un algorithme de watershed avec transformation de distance et amélioration du contraste pour accélérer et optimiser les tâches de segmentation. Il est pratique pour segmenter des objets avec des bordures.
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0080.png", width:50%),
      caption: [Outil: *Smart Grid*],
    )
// Insert space
#v(25pt, weak: true)
Pour segmenter avec le Smart Grid:

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ ROI Painter] 
      - Sélectionner #text(weight: "bold")[Smart Grid]
          - Une grille est calculée puis superposée sur la vue 2D sélectionnée
          - Pour ajuster la taille de la grille: 
            - Choisir la taille de la grille en x et en y 
            - Augmenter ou réduire la valeur de sigma
          ]

Lorsque le découpage est satisfaisant, sélectionnez les grilles dans l'image en maintenant *(clic +Ctrl)* pour les ajouter à la ROI sélectionnée, ou *(clic +Shift)*

 // Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0085.png", width:70%),
      caption: [Outil: *Smart Grid*],
    )        

//Saut de page
#pagebreak()











== Segmentation manuelle avec le Snap Tool
// Insert space
#v(25pt, weak: true)
Cet outil crée automatiquement une ligne de contour en se basant sur un gradient d’intensité qui détermine les bords d’une région. Il est peu adapté pour les échantillons biologiques.

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0079.png", width:50%),
      caption: [Outil: *Path Tool*],
    )
// Insert space
#v(25pt, weak: true)
Pour segmenter avec le Path tool:

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ ROI Painter] 
      - Sélectionner #text(weight: "bold")[Snap Tool]
        - Maintenir *Ctrl + Clic gauche* et au centre de l'objet à segmenter
        - Élargir la sélection en écartant la souris du centre vers la périphérie. 
        - Retirer des pixels en maintenant la touche *Maj* au lieu de *Ctrl*
          ]

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0086.png", width:40%),
      caption: [Segmentation avec Path Tool],
    )

//Saut de page
#pagebreak()










== Segmentation manuelle avec le Path Tool
// Insert space
#v(25pt, weak: true)

L'outil *Path Tool* permet de créer des ROI constituées d'une seule ligne et d'une largeur précise (1 pixel ou plus). des contours d'une seule ligne d'1 pixel d'épaisseur(ou plus)

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0077.png", width:50%),
      caption: [Outil: Path Tool],
    )

// Insert space
#v(25pt, weak: true)

Pour segmenter avec le Path tool:

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ ROI Painter] 
      - Sélectionner #text(weight: "bold")[Path brush Tool]
        - Choisir l'épaisseur du contour avec l'option Radius et Pixels.
          - Maintenir *Ctrl + Clic gauche* et dessiner le contour en glissant la souris 
          ]
          
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0087.png", width:40%),
      caption: [Segmentation avec Path Tool],
    )

//Saut de page
#pagebreak()











== Segmentation manuelle avec les formes
// Insert space
#v(25pt, weak: true)
Ces outils permettent de créer des zones de sélection fermées, aux formes particulières. Il peut s’agir de figures géométriques définies ou de tracés manuels, réalisés point par point. Une fois le tracé terminé, tous les pixels à l’intérieur de cette zone sont sélectionnés.
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0082.png", width:50%),
      caption: [Outil: *Smart Grid*],
    )      
// Insert space
#v(25pt, weak: true)
Pour segmenter avec les formes

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ ROI Painter] 
      - Sélectionner une des formes présentes
          - Maintenir *Ctrl + Clic gauche* et dessiner la forme de la région à segmenter
          ]








=== Rectangle ou Ellipse
// Insert space
#v(25pt, weak: true)
Positionnez le curseur sur l’image, puis étendez la sélection jusqu’à la taille désirée tout en maintenant la touche Ctrl pour l’ajouter à la ROI (utilisez la touche Maj pour retirer des pixels de la ROI).









=== Polygone 
// Insert space
#v(25pt, weak: true)
Cliquez successivement pour définir les sommets d’une région polygonale, toujours en maintenant la touche Ctrl pour l’ajouter à la ROI (Maj pour retirer).











=== Tracé libre
// Insert space
#v(25pt, weak: true)
Dessinez un contour point par point en déplaçant le curseur tout en maintenant la touche Ctrl afin d’ajouter la zone à la ROI (Maj pour la retirer).


// Image
    #figure(
      image("../Image/0088.png", width:50%),
      caption: [Outil: *Smart Grid*],
    )      


          



