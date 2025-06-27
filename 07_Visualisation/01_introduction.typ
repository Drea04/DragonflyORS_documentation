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
      image("../Image/0095.png", width:80%),
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

*image 118*




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
#v(25pt, weak: true)
Il est possible d'obtenir un modèle 3D à partir de la pile d'images en sélectionnant l'icône ()
#v(25pt, weak: true)
- mettre l'image de l'icône
- mettre image histogramme 
- mettre image rendu 3D 
#v(25pt, weak: true)
L'histogramme permet de modifier l'affichage des voxels. Le nombre de voxels par valeur est représentée sur l'histogramme. 
#v(25pt, weak: true)
Pour modifier l'affichage des voxels, nous pouvons
- Déplacer les barres jaunes. Le déplacement vers le centre de l'histogramme permet d'exclure les voxels alors que le déplacement des barres vers les extrémités permet d'inclure les voxels. 
- Modifier la courbe entre les barres jaunes, afin d'avoir l'affichage de tous les voxels en dessous de la courbe. 
#v(25pt, weak: true)
Exemples de modifications d'affichage en déplaçant les barres jaunes :
- affichage exterieur
- affichage intérieur
#v(25pt, weak: true)







=== Modification de l'opacité du rendu 3D 
Nous pouvons modifier l'opacité du randu 3D avec le menu "Opacity Mapping"
#v(25pt, weak: true)
- mettre une image du menu avec les explications et les noms
- mettre une image d'un Exemples


Il est possible de choisir le type d'aire sous la courbe, influençant ainsi l'affichage des voxels du rendu 3D.

// Insert space
#v(25pt, weak: true)






== Modifier les propriétés de la séquence d'images
// Insert space
#v(25pt, weak: true)
Nous pouvons modifier différentes propriétés de la séquence d'image. Ceci nous permet de modifier finement l'affichage du rendu 3D et/ou de couper dans notre volume (clip).
// Insert space
#v(25pt, weak: true)
- mettre l'image du menu propriété de la pile d'image 
// Insert space
#v(25pt, weak: true)

=
=


=== Paramètre Solidity
Paramètre Solidity par défaut au centre, faible à gauche et élevé à droite. Il ny a pas besoin de lumière pour le modifier 
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/118.png", width:100%),
  caption: [Paramètre Solidity par défaut au Centre, faible à gauce et élevé à droite.])
// Insert space
#v(25pt, weak: true)


=== Paramètre Diffuse
Paramètre diffuse par défaut au centre, faible à gauche et élevé à droite. Il s'applique sur la lumière appliquée au rendu 3D
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/119.png", width:100%),
  caption: [Paramètre Diffuse par défaut au Centre, faible à gauce et élevé à droite.])
// Insert space
#v(25pt, weak: true)



=== Paramètre Specular
Paramètre specular par défaut au centre, faible à gauche et élevé à droite. Il s'applique sur la lumière appliquée au rendu 3D

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/119.png", width:100%),
  caption: [Paramètre Solidity par défaut au Centre, faible à gauce et élevé à droite.])
// Insert space
#v(25pt, weak: true)








=== Paramètre Shininess
// Insert space
#v(25pt, weak: true)
Paramètre shininess par défaut au centre, faible à gauche et élevé à droite. Il s'applique sur la lumière appliquée au rendu 3D

// Insert space
#v(25pt, weak: true)
- mettre l'image rendu Shininess
// Insert space
#v(25pt, weak: true)






=== Paramètre Tone mapping
// Insert space
#v(25pt, weak: true)
Paramètre Tone mapping activé (droite) et non activée (gauche). Il n’y a pas besoin de l’effet de lumière activé
// Insert space
#v(25pt, weak: true)
- mettre l'image rendu Tone mapping
// Insert space
#v(25pt, weak: true)







=== Paramètre Unsharp
// Insert space
#v(25pt, weak: true)
Paramètre Unsharp activé (droite) et non activée (gauche). Il s'applique sur la lumière appliquée au rendu 3D
// Insert space
#v(25pt, weak: true)
- mettre l'image Unsharp
// Insert space
#v(25pt, weak: true)




=== Paramètre Specular boost 
// Insert space
#v(25pt, weak: true)
Paramètre Specular boost activé (droite) et non activée (gauche). Il s’applique sur la lumière appliquée au rendu 3D
// Insert space
#v(25pt, weak: true)
- mettre l'image Specular boost 
// Insert space
#v(25pt, weak: true)


=== Paramètre Filtered gradient
// Insert space
#v(25pt, weak: true)
Paramètre Filtered gradient activé (droite) et non activée (gauche). Il s’applique sur la lumière appliquée au rendu 3D
// Insert space
#v(25pt, weak: true)
- mettre l'image 
// Insert space
#v(25pt, weak: true)





=== High quality
// Insert space
#v(25pt, weak: true)
Paramètre High quality activé (droite) et non activée (gauche). Il n’y a pas besoin de l’effet de lumière activé

// Insert space
#v(25pt, weak: true)
- mettre l'image 
// Insert space
#v(25pt, weak: true)





=== Median
// Insert space
#v(25pt, weak: true)
Paramètre Median activé (droite) et non activée (gauche). Il n’y a pas besoin de l’effet de lumière activé

// Insert space
#v(25pt, weak: true)
- mettre l'image 
// Insert space
#v(25pt, weak: true)






=== Edge contrast
// Insert space
#v(25pt, weak: true)

Paramètre Edge contrast par défaut au centre, faible à gauche et élevé à droite. Il n’y a pas besoin de lumière pour le modifier
// Insert space
#v(25pt, weak: true)
- mettre l'image 
// Insert space
#v(25pt, weak: true)

Interpolation des voxels Linear au centre par défaut, Nearest à gauche et Cubic à droite

Tous ces paramètres peuvent être combinés ensemble pour obtenir le rendu 3D souhaité à partir de la pile d’images.








== Clip 
// Insert space
#v(25pt, weak: true)
La fonction de Clip quant à elle permet de couper le rendu 3D de la pile d’images. Elle est activée en cliquant sur l’icône . Pour faire le clip dans une direction, il faut cliquer sur la face du rectangle entourant la surface/le rendu 3D et la déplacer vers l’intérieur/l’extérieur de celui-ci.
Nous obtiendrons notre rendu 3D plein même avec le clip.  




// Insert space
#v(25pt, weak: true)





== Génération d'un maillage polygonal (mesh)
=== modifier les propriétés d'un maillage
=== Propriété 3D du maillage 
=== Affinage du maillage
=== Clip 

== Animation 3D

== Export des modèles 
=== Export des maillages polygonaux
=== Export d'animation 

