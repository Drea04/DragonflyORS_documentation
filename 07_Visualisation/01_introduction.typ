#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Visualisation et modélisation 3D
// Insert space
#v(30pt, weak: true)
Dans cette section, nous expliquerons comment construire un modèle 3D en utilisant soit les niveaux de gris issus de l'acquisition, soit une segmentation.

// Insert space
#v(25pt, weak: true)

== Modification des propriétés de la scène
// Insert space
#v(20pt, weak: true)
Dans un premier temps, il est possible d'ajuster les caractéristiques de la scène 3D dans la rubrique *Scene'sviews and properties*. Pour cela il existe trois principaux paramètres
// Insert space
#v(10pt, weak: true)
- Modification du fond de l'écran
- Eclairage de la scène: *Lighning*
- Mise au point: *Focus*

#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0095.png", width:100%),
      caption: [Propriétés de la scène])
// Insert space
#v(25pt, weak: true)

=== Modification de la couleur de fond
// Insert space
#v(20pt, weak: true)
Il est possible de modifier la couleur de fond, qui restera invariable au cours des animations. Trois modes sont possibles:
- Le mode *Uniforme* pour un teint unie. Ce mode là est le paramètre par défaut. 
- Le mode *Gradient Linéaire* qui permet de choisir la direction
- Le mode *Gradient Radial* 

Nous pouvons également chosir la couleur du fond 

mettre l'effet des trois modes 



// Insert space
#v(25pt, weak: true)
=== Eclairage de la scène
// Insert space
#v(20pt, weak: true)

// Image
#figure(
  image("../Image/0097.png", width:100%),
  caption: [Option d'éclairage])

// Insert space
#v(20pt, weak: true)
Les options d'éclairage présentées ci-dessous permettent de modificier la direction et l'intensité de la lumière sur les objets au vue 3D.
// Insert space
#v(20pt, weak: true)

1. Modification de la direction de l'éclairage: Cette option est possible en déplacer l'éclairage directement sur la sphère grise. 
2. Choix du nombre d'éclairage: Nous pouvons avoir 1, 2 ou 3 éclairages. Pour sélectionner les clairages, cliquer sur Light1 etc. 
3. Mofidication de l'éclairage des objets en 3D: La case *Use lighting* permet d'éclairer l'objet en 3D sélectionné. 
4. Modification de l'ombre: La case *Use shadows* permet de modifier l'ombre de l'objet en 3D sélectionné. 
5. Nous pouvons modifier l'intensité de l'éclairage et de l'ombre avec les options:
   - Light Intensity
   - Shadows Strength
   - Shadow opacity
// Insert space
#v(20pt, weak: true)

// Image
#figure(
  image("../Image/0096.png", width:100%),
  caption: [Eclairage de l'objet en 3D et ombres])

// Insert space
#v(25pt, weak: true)
=== Mise au point "*Focus*"
// Insert space
#v(20pt, weak: true)

// Image
#figure(
  image("../Image/0098.png", width:50%),
  caption: [Modification du focus])

Les propriétés de mise au point permettent de définir clairement les objets intéressants ou de flouter certains objets au niveau de l'image. 

// Insert space
#v(25pt, weak: true)

=== Faire une capture d'écran
// Insert space
#v(20pt, weak: true)
Pour capturer une image de la vue 3D, nous avons deux options:
// Insert space
#v(10pt, weak: true)
- Utiliser l'option *Export Screenshot* dans le menu *Scene's views and properties*
  // Image
#figure(
  image("../Image/0099.png", width:50%),
  caption: [Capture d'écran])
enregistrement .tif, .png, .jpeg, .bitmap 
  // Insert space
#v(10pt, weak: true)
- Effectuer un clic droit sur la vue 3D et sélectionner *Export Screenshot of View*. Cette fonction fonctionne aussi pour les vues en 2D. 
// Image
#figure(
  image("../Image/0100.png", width:45%),
  caption: [Capture d'écran])

Nous pouvons enregistrer la capture d'écran sous plusieurs formats:
- .tif
- .png
- .jpeg
- .bitmap


=== Sol virtuel
#v(20pt, weak: true)

Nous pouvons intégrer une surface réfléchissante pour enrichir l'aspect visuel de notre modélisation 3D. Cette modification s'applique au rendu 3D, aux ROI et au maillage polygonal. 
#v(20pt, weak: true)
Les réglages qui peuvent être ajustés sont:
#v(10pt, weak: true)
- L'intensité de la réfléxion
- La couleur de la surface réfléchissante
- L'espacement entre la surface et l'objet 3D
- La position de la surface sur un des axes de l'objet 3D
- L'inclinaison de la surface sur l'axe ou elle se trouve 

capture d'écran 


#v(25pt, weak: true)
== Génération d'un rendu 3D à partir des valeurs de pixels

#v(20pt, weak: true)

// Insert space
#v(25pt, weak: true)
== Modifier les propriétés de la pile d'images
// Insert space
#v(20pt, weak: true)

// Insert space
#v(25pt, weak: true)
== Propriétés 3D
// Insert space
#v(20pt, weak: true)

=== Solidité
=== Diffuse
=== Specular
=== Shininess
=== Tone mapping
=== Unsharp
=== Specular boost
=== Filtered gradient
=== High quality
=== Median
=== Edge contrast

== Clip 

== Génération d'un maillage polygonal (mesh)
=== modifier les propriétés d'un maillage
=== Propriété 3D du maillage 
=== Affinage du maillage
=== Clip 

== Animation 3D

== Export des modèles 
=== Export des maillages polygonaux
=== Export d'animation 

