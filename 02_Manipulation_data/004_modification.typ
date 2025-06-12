#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Modification basique d'un jeu de données

// Insert space
#v(25pt, weak: true)








== Marquage des slices et modification des piles d'images

// Insert space
#v(25pt, weak: true)
En marquant les slices dans un jeu de données, nous pouvons supprimer les slices marquées, créer un jeu de données à partir des slices marquées, 

// Insert space
#v(25pt, weak: true)











=== Marquer les slices

// Insert space
#v(25pt, weak: true)
Pour marquer les slices dans un jeu de données: 

#tree-list[
- Sélectionner le jeu de données en question dans la fenêtre #text(weight: "bold")[Data Properties and settings]
  - Clique-droit sur la slice affichée
    - Choisir #text(weight: "bold")[Show Marked Slices Indicator]
      - Une petite case en bas à droite de l'affichage apparaît
   ]
 

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0067.png", width:100%),
      caption: [Outil 3D presets],
    )
    

// Insert space
#v(25pt, weak: true)















=== Supprimer les slices marquées

// Insert space
#v(25pt, weak: true)
Pour supprimer certaines slices dans un jeu de données:

#tree-list[
- Cocher les cases pour chaque slice que vous souhaitez supprimer
  - Clique-droit sur l'image
    - Sélectionner: #text(weight: "bold")[Remove All Marked Slices]
   ]

   

// Insert space
#v(25pt, weak: true)











=== Créer un jeu de données à partir des slices marquées

// Insert space
#v(25pt, weak: true)
Pour créer un jeu de données uniquement à partir des slices marquées:

#tree-list[
- Cocher les cases pour chaque slice que vous souhaitez supprimer
  - Sélectionner le jeu de données dans la fenêtre #text(weight: "bold")[Data Properties and settings]
    - Clique-droit sur le jeu de données
      - Sélectionner: #text(weight: "bold")[New image from marked Slices]
   ]


// Insert space
#v(25pt, weak: true)













== Modification et transformation d'un jeu de données
// Insert space
#v(25pt, weak: true)

- mettre image modify and transform

// Insert space
#v(25pt, weak: true)









=== Crop
// Insert space
#v(25pt, weak: true)
L’outil Crop permet de rogner les jeux de données, les images ainsi que les régions d’intérêt (ROIs). La zone à rogner peut être définie de deux manières :
- en spécifiant manuellement les valeurs selon les axes X, Y et Z 
- en ajustant la sélection de façon interactive directement dans les vues 2D et 3D. 


// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0103.png", width:40%),
      caption: [Outil Crop],
    )

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0102.png", width:80%),
      caption: [Outil Crop sur vue 2D et 3D],
    )

// Insert space
#v(25pt, weak: true)
La boîte verte illustrée dans la figure 38 représente une zone de crop interactive. En la manipulant directement à l’aide de la souris, il est possible d’ajuster précisément les régions des données à rogner.

Une fois la zone de crop ajustée, il est possible soit d’appliquer le rognage directement sur le jeu de données actuel, soit de générer un nouveau jeu de données contenant uniquement la zone sélectionnée.

// Insert space
#v(25pt, weak: true)










=== Remplissage ou "Padding"
// Insert space
#v(25pt, weak: true)
Le padding, en français appelé remplissage, est l'ajout de voxels vides autour du jeu de données. Cela permet d'éviter les bords coupés pendant le traitement d'images par exemple. 

Nous pouvons ajouter du padding pour les jeus de données, les ROIs et les multi-ROIs. 

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0104.png", width:40%),
      caption: [Outil Crop sur vue 2D et 3D],
    )

// Insert space
#v(25pt, weak: true)
Pour ajouter du padding sur un jeu de données:


#tree-list[
- Sélectionner le jeu de données pour le padding
  - Faire un clique droit et choisir  #text(weight: "bold")[Modify and transform]
    - Choisir  #text(weight: "bold")[Padding]
      - Chosir les valeurs de padding (en voxels) du côté droit ou gauche ou les deux.
        - Cliquer sur #text(weight: "bold")[Apply]
   ]


Voici un exemple d'un jeu de données avant et après padding de 1000 (gauche et droite) sur l'axe x uniquement. 
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0109.png", width:40%),
      caption: [Jeu de données avant padding],
    )
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0108.png", width:40%),
      caption: [Jeu de données après padding],
    )














=== Echantillonnage ou "Sampling"
// Insert space
#v(25pt, weak: true)
L'échantillonnage est le processus de modification de la résolution d'un jeu de données en ajustant le nombre de voxels (ou pixels) ou l'espacement entre les deux.

IL existe deux catégories d'échantillonnage:
- Le sur-échantillonnage ou "upsampling": C'est la réduction de l'espacement ou l'augmentation du nombre de voxels
- Le sous-échantillonnage ou "downsampling": C'est l'augmentation de l'espacement ou la réduction du nombre de voxels. 


Même si la résoluion est modifiée par cette opération, les dimensions de la taille du jeu de données sont conservées. 


// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0105.png", width:40%),
      caption: [Menu "Dataset sampler"],
    )

// Insert space
#v(25pt, weak: true)


// Insert space
#v(25pt, weak: true)
Pour effectuer un échantillonnage:

#tree-list[
- Sélectionner le jeu de données pour le sampling
  - Faire un clique droit et choisir  #text(weight: "bold")[Modify and transform]
    - Choisir  #text(weight: "bold")[Sampling]
      - Chosir une des options suivantes: 

   ]
// Insert space
#v(25pt, weak: true)
- *Spacing (in nm):*  Modification de l'espacement entre les slices sur les trois axes dans le jeu de données. 
- *Voxels:* Augmenter ou diminuer le nombre de pixels.
- *Upsample by a factor:* Sur-échantillonner le jeu de données en appliquant un facteur. 
- *Downsample by a factor:* Sous-échantillonner le jeu de données en appliquant un facteur. 
// Insert space
#v(25pt, weak: true)












=== Conversion 
Cette partie permet d'expliquer les options de conversion des jeu de données dans Dragonfly
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0106.png", width:40%),
      caption: [Menu "Image Converter"],
    )

// Insert space
#v(25pt, weak: true)

Dans le mneu "Image convertir", nous pouvons choisir les données à convertir dans Input Image. Le *Filter Values* permet de séelctionner une place de données à convertir. 

Dans la partie *Output Image*, nous pouvons choisir le type de données ( 8bits, 17 bits, 32 bits ou float)

// Insert space
#v(25pt, weak: true)















=== Ré-échantillonnage de la géométrie
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0110.png", width:40%),
      caption: [Menu "Image Converter"],
    )

// Insert space
#v(25pt, weak: true)

La géométrie d'une ROI dans Dragonfly désigne les valeurs d'intersections de l'objet avec le jeu de données. 

Lors de la création d'une ROI, nous devons choisir la géométrie de la ROI. C'est le jeu de données auquel cet ROI est rattachée. 

NOus pouvons à l'aide de cet option ré-échantillonner les ROI afin de mofifier leur géométrie et de les appliquer sur d'autres jeu de donénes. Cela peut être utile dans le cas, ou nous avons besoin de maintenir une forme uniforme entre divers jeu de données. 

// Insert space
#v(25pt, weak: true)













=== Inversion d'un jeu de données
// Insert space
#v(25pt, weak: true)
L'inversion dans Dragonfly permet de modifier l'affichage des images ou du volume 3D:
- Par l'inversion des valeurs: les valeurs faibles deviennent élevées, les valeurs élevées deviennent faibles.
- Par l'inversion des axes (X, Y, Z). 

Cette inversion est utile lors du chargement des données. Parfois, l'affichage de données d'un logiciel à un autre n'est pas identique et une inversion des axes serait nécessaire. 
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0107.png", width:40%),
      caption: [Menu "Dataset Inverter"],
    )

// Insert space
#v(25pt, weak: true)


Les inversions possibles sont:
- Inversion de l'axe X
- Inversion de l'axe Y 
- Inversion de l'axe Z 
- Inversion des valeurs 
- Transformation des axes: 
  - XYZ: ordre par défaut
  - XZY: Les axes Y et Z sont interchangés
  - YXZ: les axes X et Y sont interchangés 
  - YZX, ZXY ou ZYX: les trois axes sont réorganisés




