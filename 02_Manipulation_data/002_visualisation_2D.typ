#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")


= Visualisation des données en 2D
// Insert space
#v(25pt, weak: true)
Afin de visualiser les données en 2D, il existe plusieurs possibilités dans Dragonfly. 

Pour un jeu de données en 3D, nous pouvons visualiser les données en XY, YZ, XZ et en 3D. 
// Insert space
#v(25pt, weak: true)


*Pour choisir l'axe de visualisation en 2D:*

#tree-list[
- Clic-droit sur la vue en 2D affichés
  - Un menu pop-up s'affiche avec les possibilités de choisir l'axe de visualisation
    - Choisir un des axes de visualisations : 3D, XY, YZ ou XZ. 

          ]


// Image
#figure(
  image("../Image/0011.jpg", width: 30%),
  caption: [Axe de visualisations en 2D.]
) 





== Outil: Layout
// Insert space
#v(20pt, weak: true)

Avec l'outil Layout, nous avons deux possibilités:
- Modifier les vues de scène
- Modifier les dispositions de scène
 
 // Image
#figure(
  image("../Image/0012.png", width: 60%),
  caption: [Option de visualisation]
) 

// Insert space
#v(25pt, weak: true)






=== Option de disposition de scène
// Insert space
#v(25pt, weak: true)
Nous avons la possibilité d'avoir cinq vues de scènes différentes:
 
- #emph(text(aqua)[*Scène Simple :*]) Nous pouvons voir une seule scène, mais avec plusieurs vues en même temps
- #emph(text(green)[*Scène double verticale:*]) Nous pouvons voir deux scènes scène, chacune avec vue possibles.
- #emph(text(red)[*Scène triple verticale:*]) Trois scènes en vertical en même temps. 
- #emph(text(orange)[*Scène double horizontale*])
- #emph(text(fuchsia)[*Scène Simple triple horizontale*])
  

// Image
#figure(
  image("../Image/0013.png", width: 60%),
  caption: [Option de disposition de scène]
)

// Insert space
#v(25pt, weak: true)





=== Exemple de disposition de scène double verticale
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0014.png", width: 70%),
  caption: [*Exemple d'une disposition de scène double verticale :* À gauche, une vue 2D de l'axe XY. À droite, une vue 2D montrant un masque de la même image que celle affichée à gauche.] 
)

// Insert space
#v(25pt, weak: true)
Cette disposition de scène peut être particulièrement utile lorsque l'on souhaite comparer deux images issues du même jeu de données, auxquelles deux filtres différents ont été appliqués, par exemple.

// Insert space
#v(25pt, weak: true)






=== Option de vue de scène
// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0015.png", width: 80%),
  caption: [Option de vue de scène])


// Insert space
#v(30pt, weak: true)






=== Exemple d'une vue de scène en 3D, XY, YZ et XZ
// Insert space
#v(25pt, weak: true) 

// Image
#figure(
  image("../Image/0016.png", width: 70%),
  caption: [
Option de vue de scène : en haut à gauche, une vue en 3D ; en haut à droite, une vue XZ ; en bas à gauche, une vue XY ; et en bas à droite, une vue YZ.])
// Insert space
#v(25pt, weak: true) 





== Scene's View Properties
// Insert space
#v(25pt, weak: true) 

Avec cet outil dans le Main Tab, nous pouvons:
- Afficher la barre d'échelle (Show scal bar)
- Afficher la légende du dataset (Show legends)
- Afficher l'annotation de texte (Show text annotations)
- Changer la couleur de fond (Background color)


// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0017.png", width: 50%),
  caption: [Menu: Scene's Views Properties]
) 

// Insert space
#v(25pt, weak: true) 







=== Affichage de la barre d'échelle
// Insert space
#v(25pt, weak: true) 

// Image
#figure(
  image("../Image/0059.png", width: 90%),
  caption: [Barre d'échelle]
) 
// Insert space
#v(25pt, weak: true) 

Pour modifier la barre d'échelle et la personnaliser, réaliser un clic droit sur cette barre. Le menu déroulant contient plusieurs outils qui permettent de modifier l'alignement du texte, le style de la barre d'échelle, la longueur, la taille du 
// Insert space
#v(25pt, weak: true) 







=== Affichage de la légende
// Insert space
#v(25pt, weak: true) 
La légende permet d'afficher le nom du jeu de données ainsi que les valeurs de nuances de gris des images sélectionnées. La légende peut être placée verticalement ou horizontalement. 
// Image
#figure(
  image("../Image/0061.png", width: 80%),
  caption: [Barre d'échelle]
) 
// Insert space
#v(25pt, weak: true) 








=== Affichage des annotations de texte
// Insert space
#v(25pt, weak: true) 
Les annotations de texte affichent des informations spécifiques à chaque vue. 

// Image
    #figure(
      image("../Image/0060.png", width: 80%),
      caption: [Curseur 3D],
           )

// Insert space
#v(25pt, weak: true) 


- *9357001.98 x 6128619.14 nm* : le zoom indique les dimensions actuelles de la vue. 
- *Range Min:0 Max:255* : indique le Window leveling appliquée à la fenêtre. 
- *Slice 413/832* : indique la slice actuelle et le nombre total de slice dans le jeu de données sélectionnés. 
- *Yaw, Pitch and Roll* : indique les différents angles d'orientation de la vue actuelle. 
// Insert space
#v(25pt, weak: true) 








== Utilisation du curseur 3D
// Insert space
#v(25pt, weak: true) 

// Image
    #figure(
      image("../Image/0018.PNG", width: 80%),
      caption: [Curseur 3D],
           )


// Insert space
#v(25pt, weak: true) 
Le curseur 3D est un outil facilitant l'orientation lors de l'analyse de volumes 3D. Il synchronise les vues 2D sur les plans XY, XZ et YZ. Les lignes horizontales et verticales, colorées en bleu, rouge et vert, aident à localiser le même objet dans les différentes vues 2D comme présenté dans la figure 6.
//Saut de page
#pagebreak()








== Utilisation de l'Outil Probe
// Insert space
#v(25pt, weak: true) 

L'outil Probe affiche les valeurs et les coordonnées du voxel sélectionné en cliquant sur l'image 2D.
// Insert space
#v(25pt, weak: true) 

// Image
    #figure(
      image("../Image/0020.png", width: 60%),
      caption: [Outil Probe dans le Main Tab],
           )

// Insert space
#v(25pt, weak: true) 
- #emph(text(aqua)[*Point Probe:*]) Affiche la position et les valeurs du voxel sélectionné. La value indique la valeur de l'intensité en pixel.Nous avons aussi la position dans le volume total ainsi que la position en x, y et z. 
- #emph(text(green)[*Disk Probe:*]) Affiche la position et les valeurs d'un disque de diamètre précisé. Dans ce cas là, nous avons la valeur de l'intensité de pixel, le nombre de voxel dans le disque, la moyenne, le minimim, le maximum, la déviation standard et le mode de l'intensité des pixels. Nous pouvons aussi avoir la position du centre en x, y et z. 
- #emph(text(red)[*Square Probe:*]) Affiche la position et les valeurs du voxel et du voisinage carré sélectionné. 
- #emph(text(fuchsia)[*Sphere Probe*]) Affiche la position et les valeurs du voxel et du voisinage sphérique sélectionné
- #emph(text(orange)[*Cube probe*]) Affiche la position et les valeurs du voxel et du voisinage cubique sélectionné. 

// Insert space
#v(25pt, weak: true) 

// Image
    #figure(
      image("../Image/0021.png", width: 40%),
      caption: [Outil Probe: Exemple],
           )









== Ajustement du contraste/Brightness 
// Insert space
#v(25pt, weak: true) 
Le fenêtre Window Leveling permet d'ajuster le Contraste/Brightness pour chaque jeu de données sélectionnées. 

Il y a plusieurs méthodes d'ajuster le contraste/Brightness :
- Ajustement avec l'outils d'annotation de texte interactive
- AJustement au niveau de le fenêtre sélectionnées
- Ajustement automatique avec l'outil Zone
// Insert space
#v(25pt, weak: true) 
   // Image
    #figure(
      image("../Image/0022.PNG", width:40%),
      caption: [Fenêtre: Windows leveling],
           )
// Insert space
#v(25pt, weak: true)








=== L'outil Window level 
// Insert space
#v(25pt, weak: true) 
   // Image à modifier
    #figure(
      image("../Image/0101.png", width:40%),
      caption: [Fenêtre: Windows leveling],
           )
// Insert space
#v(25pt, weak: true)

Cet outil permet d’ajuster interactivement le contraste et la luminosité sur les vues 2D et 3D.
Il suffit de sélectionner l’outil, puis de faire glisser le curseur sur l’image pour modifier le rendu visuel.
// Insert space
#v(25pt, weak: true)






=== L'outil de modification automatique 
// Insert space
#v(25pt, weak: true)
Cet outil vous permet de régler automatiquement le niveau de contraste et de luminosité dans la zone sélectionné par le carré sur une vue 2D. 


Pour utiliser cet outil:

#tree-list[
- Sélectionner une vue en 2D 
  - Cliquer sur le bouton *Zone*
    - Faites glisser sur la zone en 2D pour définir une petite zone rectangulaire, puis relâcher le bouton.  ]


// Insert space
#v(25pt, weak: true)
Cette opération va permettre d'ajuster automatiquement le niveau B/C. 
