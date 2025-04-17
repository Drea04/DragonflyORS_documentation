#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Propriétés et paramètres des jeu de données en 2D
// Insert space
#v(20pt, weak: true)
Les propriétés et les paramètres des jeu de données se trouvent à droite dans l'interface Dragonfly.


// Image
    #figure(
      image("../Image/0023.PNG", width: 50%),
      caption: [Les propriétés et les paramètres des données],
           )

// Insert space
#v(20pt, weak: true)

Nous expliquerons dans cette partie les outils de gestion des jeu de données, et les différents menu (Basic properties, Tools, 2D settings, 3D presets, 3D settings and Clip)


// Insert space
#v(30pt, weak: true)

//Saut de page
#pagebreak()

== Gestion des jeu de données et des objets
// Insert space
#v(20pt, weak: true)


// Image
    #figure(
      image("../Image/0024.PNG", width: 70%),
      caption: [Gestion des jeu de données et des objets],
           )
    
#set enum(numbering: "A")

+ - Affiche tous les jeu de donnés chargés dans Dragonfly
+ - Affiche les annotations
+ - Affiche les ROIs
+ - Affiche les multi-ROIs
+ - Affiche les meshs
+ - Affiche les formes (ou shapes)
+ - Affiche les superpositions (ou overlays)
+ - Affiche les groupe
+ - Affiche les vecteurs
+ - Affiche les graphes
+ - Affiche tous les précédents
+ - Affiche tous ce qui visibles dans la fenêtre sélectionnée

//Saut de page
#pagebreak()
== Les propriétés d'un jeu de données
// Insert space
#v(20pt, weak: true)

La fenêtre *Basic Properties* permet d'afficher les propriétés d'un jeu de donnée sélectionné. Les informations que l'on peut avoir sont: 

// Insert space
#v(20pt, weak: true)

// Image
    #figure(
      image("../Image/0025.PNG", width:50%),
      caption: [Les propriétés d'un jeu de données],
           )
// Insert space
#v(30pt, weak: true)

#set enum(numbering: "1.")
+ #text(weight: "bold")[Width (ou largeur):] Indique le nombre de pixels le long de l'axe X. Dans ce cas, la largeur est de 2344 px. La dimension physique est de 35 160 nm. 
+ #text(weight: "bold")[Height (ou hauteur) : ] Indique le nombre de pixels le long de l'axe Y. Dans ce cas, la hauteur est de 535 px. La dimension physique est de 8025nm.
+ #text(weight: "bold")[Depth (ou profondeur) :] Indique le nombre de pixels le long de l'axe Z. Dans ce cas, la profondeur est de 501 px. La dimension physique est de 7515 nm.  
+ #text(weight: "bold")[Time steps :] Indique la taille de la dimension temporelle. Dans ce cas, on n'a pas de dimension temporelle.
+ #text(weight: "bold")[Voxels :] Indique le nombre total de voxels dans l'ensemble du jeu de données. Pour le calculer, il suffit de faire le calcul suivant:  voxels = largeur x hauteur x profondeur x étapes temporelles

+ #text(weight: "bold")[Size (ou taille):] Indique la taille des données sélectionnées.
+ #text(weight: "bold")[Data type (ou type des données) :] Indique le type de données. Les types de données possibles sont: 
  + Caractère non signé (UBYTE)
  + Entier court non signé (USHORT)
  + Entier non signé (UINT)
  + Flottant (Float)
  
+ #text(weight: "bold")[Volume :] Indique le volume total occupé par l'ensemble du jeu de données sélectionnée.

//Saut de page
#pagebreak()

== L'histogramme
// Insert space
#v(20pt, weak: true)

L'outil *Histogramme* permet d'afficher la distribution du jeu de données sélectionnées
// Insert space
#v(20pt, weak: true)

// Image
    #figure(
      image("../Image/0026.PNG", width:50%),
      caption: [Tools],
           )

Cet outil permet de générer des histogrammes pour les images. Lorsque vous sélectionnez un ensemble de données et cliquez sur l'icône bleue (histogramme), une nouvelle fenêtre s'ouvre, affichant l'histogramme.

// Image
    #figure(
      image("../Image/0064.png", width:100%),
      caption: [Histogramme],
           )
// Insert space
#v(20pt, weak: true)
Cette fenêtre affiche la distribution des intensités de pixels du jeu de données sélectionnés. 
Nous pouvons également avoir des statistiques spécifiques concernant le jeu de données en cochant les cases spécifiques à chaque statistique (moyenne, median, minim, maximum etc...) 


// Insert space
#v(30pt, weak: true)        
== Propriétés 2D
// Insert space
#v(20pt, weak: true)

L'outil *Propriété 2D* permet de modifier l'apparence des images en 2D. Il existe trois apparences possibles:
+ #text(weight: "bold")[Linear :]  Nous obtenons un rendu lisse des images.
+ #text(weight: "bold")[Nearest :] Nous pouvons visualiser les pixels dans l'image. 
+ #text(weight: "bold")[cubic :] Donne un rendu intermédiaire entre 'linear' et 'nearest'
// Insert space
#v(30pt, weak: true)

// Image
    #figure(
      image("../Image/0027.PNG", width:50%),
      caption: [L'interpolation],
    )

// Image
    #figure(
      image("../Image/0065.png", width:100%),
      caption: [Rendu de l'interpolation],
    )   
// Insert space
#v(30pt, weak: true)
A gauche: Interpolation Nearest

Au milieu: Interpolation Linéaire

A droite: Interpolation Cubique

//Saut de page
#pagebreak()



== 3D Presets, 3D Settings and Clip tools (à modifier)
// Insert space
#v(20pt, weak: true)

// Image
    #figure(
      image("../Image/0028.PNG", width:50%),
      caption: [Outil3D presets],
    )

// 2 images en colomnes
#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
      image("../Image/0029.PNG", width:75%),
      image("../Image/0030.PNG", width:75%),
    ),
    caption: "Outil 3D settings et Clip"
)
// Insert space
#v(30pt, weak: true)
L'utilisation des outils 3D Presets, 3D settings et Clip requiert que la fenêtre 3D soit sélectionnée. 
Ces outils permettent d'appliquer des effets d'éclairage et de rendu 3D sur votre jeu de données. L'utilisation de ces outils sera développée dans la section visualisation et rendue en 3D. 

//Saut de page
#pagebreak()
== Les propriétés de l'image 
// Insert space
#v(20pt, weak: true)

Afin d'obtenir les propriétés des images: 

#tree-list[
- Sélectionner le jeu de données en question dans la fenêtre #text(weight: "bold")[Data Properties and settings]
  - Clique-droit sur le jeu de données
    - Choisir #text(weight: "bold")[Image Properties]
      - La fenêtre #text(weight: "bold")[Image Properties] s'affiche
   ]
// Insert space
#v(30pt, weak: true)
// Image
    #figure(
      image("../Image/0062.png", width:50%),
      caption: [Outil 3D presets],
    )

// Insert space
#v(20pt, weak: true)
Nous pouvons avoir les informations suivantes: 
- La taille des pixels pour chacun des axes: X, Y et Z
- La taille physique (en Mb et en volume)
- L’espacement et l'intensité. 

Ces différents propriétés sont expliqués dans la partie "Paramètres d'images"

//Saut de page
#pagebreak()