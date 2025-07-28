#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Visualisation et modélisation 3D
// Insert space
#v(25pt, weak: true)
Dans cette section, nous expliquerons comment construire un modèle 3D en utilisant soit les niveaux de gris issus de l'acquisition, soit une segmentation.

// Insert space
#v(25pt, weak: true)

== Modification des propriétés de la scène
// Insert space
#v(25pt, weak: true)
Dans un premier temps, il est possible d'ajuster les caractéristiques de la scène 3D dans la rubrique *Scene'sviews and properties*. Pour cela il existe trois principaux paramètres
// Insert space
#v(15pt, weak: true)
- Modification du fond de l'écran
- Eclairage de la scène: *Lighning*
- Mise au point: *Focus*

#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0095.png", width:70%),
      caption: [Propriétés de la scène])
// Insert space
#v(25pt, weak: true)



=== Modification de la couleur de fond
// Insert space
#v(25pt, weak: true)
Il est possible de modifier la couleur de fond, qui restera invariable au cours des animations. Cette modification s'effectue dans le sous-menu "3D Views Background Color", accessible depuis le menu "Scene's Views and Properties". 


#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0123.png", width:40%),
      caption: [Couleur de fond])
// Insert space
#v(25pt, weak: true)

Trois modes de couleur de fond sont possibles:
// Insert space
#v(15pt, weak: true)
- Le mode *Uniforme* pour un fond uni. Ce mode est sélectionné par défaut.
- Le mode *Gradient Linéaire*, qui permet de choisir la direction du dégradé.
- Le mode *Gradient Radial*, pour un effet de dégradé circulaire.


// Insert space
#v(25pt, weak: true)

*mettre trois images côte à côte de Uniforme, Gradient linéaire et Gradient Radial*

// Insert space
#v(25pt, weak: true)

=== Mise au point "*Focus*"
// Insert space
#v(25pt, weak: true)
Les propriétés de mise au point permettent de faire ressortir clairement les objets d'intérêt ou, au contraire, de flouter certains éléments de l'image afin de mieux guider l'attention de l'observateur.
// Image
#figure(
  image("../Image/0125.png", width:50%),
  caption: [Modification du focus])
// Insert space
#v(25pt, weak: true)



=== Eclairage de la scène
// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0097.png", width:70%),
  caption: [Option d'éclairage])
// Insert space
#v(25pt, weak: true)

Les options d'éclairage présentées ci-dessous permettent de modificier la direction et l'intensité de la lumière sur les objets au vue 3D.
// Insert space
#v(25pt, weak: true)

1.* Modification de la direction de l'éclairage:* Cette option est possible en déplaçant la source lumineuse directement sur la sphère grise.


2. *Choix du nombre d'éclairage:* Il est possible d'activer 1, 2 ou 3 sources d'éclairage. Pour les sélectionner, cliquez sur Light1, Light2, etc.


3.* Mofidication de l'éclairage des objets en 3D:* La case *Use lighting* permet d'activer l'éclairage sur l'objet 3D sélectionné.


4. *Modification des ombres:* La case *Use shadows* permet d'afficher les ombres de l'objet 3D sélectionné.


5. *Réglage de l'intensité de l'éclairage et des ombres :* Ces paramètres permettent d'affiner le rendu visuel :
   - Light Intensity: Intensité de la lumière
   - Shadows Strength: Intensité des ombres
   - Shadow opacity: Opacité des ombres

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0096.png", width:100%),
  caption: [Eclairage de l'objet en 3D et ombres])
// Insert space
#v(25pt, weak: true)




=== Faire une capture d'écran
// Insert space
#v(25pt, weak: true)
Pour capturer une image de la vue 3D, deux options sont disponibles :
// Insert space
#v(25pt, weak: true)
- Utiliser l'option *Export Screenshot* dans le menu *Scene's views and properties*

  // Image
#figure(
  image("../Image/0124.png", width:50%),
  caption: [Capture d'écran depuis le menu])

Cette option permet d'enregistrer l'image aux formats suivants :
.tif, .png, .jpeg, .bmp

  // Insert space
#v(25pt, weak: true)
- Faire un clic droit sur la vue 3D (ou 2D) et sélectionner *Export Screenshot of View*.
 
// Image
#figure(
  image("../Image/0100.png", width:45%),
  caption: [Capture d'écran depuis un clic droit])

Cette fonction est compatible avec les vues 3D et 2D.
Elle permet également d'enregistrer aux formats :
.tif, .png, .jpeg, .bmp

#v(25pt, weak: true)



//Saut de page
#pagebreak()
=== Sol virtuel
#v(25pt, weak: true)

Il est possible d'intégrer une surface réfléchissante pour enrichir l'aspect visuel de la modélisation 3D. Cette option s'applique au rendu 3D, aux ROI, ainsi qu'au maillage polygonal.

* Mettre comment accéder au sol virtuel*


#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0122.png", width:30%),
  caption: [Sol virtuel (Virtual Floor)])
#v(25pt, weak: true)


Les réglages suivants peuvent être ajustés :
#v(10pt, weak: true)
- *Reflective Surface :* intensité de la réflexion
- *Color :* couleur de la surface réfléchissante
- *Distance :* espacement entre la surface et l'objet 3D
- *Position :* position de la surface selon un axe de l'objet
- Tilt : inclinaison de la surface sur l'axe concerné

#v(25pt, weak: true)



== Génération d'un rendu 3D
#v(25pt, weak: true)
Il est possible de générer un modèle 3D à partir d'une pile d'images en cliquant sur l’icône 3D du menu "Data Properties and Settings".
#v(25pt, weak: true)

* mettre une image de l'icône oeil*

Lorsque le modèle 3D est généré, un histogramme s'affiche automatiquement pour permettre le réglage de l'affichage des voxels. *mettre ou est il affiché* Cet histogramme permet de modifier l'affichage des voxels. Le nombre de voxels par valeur est représentée sur l'histogramme. 
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0127.png", width:100%),
  caption: [Rendu 3D])
  * mettre une autre image pour le rendu 3D*

#v(25pt, weak: true)



=== Contrôle de l'affichage des voxels
#v(25pt, weak: true)

Plusieurs actions sont possibles pour affiner le rendu :
- *Déplacement des barres jaunes :*
  - Les déplacer vers le centre de l'histogramme permet d'exclure des voxels.
  - Les déplacer vers les extrémités permet d'en inclure davantage.

- *Modification de la courbe entre les barres :*
  - Tous les voxels situés sous la courbe sont rendus visibles.
  - La courbe permet un contrôle fin du seuil d-intensité.

#v(25pt, weak: true)
Il existe également l'outil "Color Mapping", qui permet de modifier les seuils et l'apparence des voxels en fonction de leur intensité.
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0129.png", width:40%),
  caption: [Outil Color Mapping pour le rendu 3D])

* modifier cette capture d'écran pour la nouvelle version*

#v(25pt, weak: true)

==== Exemples de rendus selon la position des barres jaunes
- *Affichage extérieur :* seuls les voxels périphériques sont visibles.

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0128.png", width:100%),
  caption: [Exemple de rendu 3D filtré par l'histogramme])
#v(25pt, weak: true)
 * Ajout exemple Modification de la courbe entre les barres :*


=== Modification de l'opacité du rendu 3D 
#v(25pt, weak: true)
L'opacité du rendu 3D peut être modifiée à l'aide du menu "Opacity Mapping". *mettre ou se trouve opacity mapping*

 #v(25pt, weak: true)
// Image
#figure(
  image("../Image/0130.png", width:50%),
  caption: [Accès au menu Opacity Mapping])
#v(25pt, weak: true)

Ce menu permet de régler la courbe d'opacité, influençant la visibilité des voxels selon leur intensité.


Il est possible de modifier la forme de la courbe ou le type de zone (aire) sous la courbe afin d'obtenir des effets de transparence spécifiques dans le rendu 3D.

#v(25pt, weak: true)
==== Exemple:  Modification de l'opacité du rendu 3D 
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0131.png", width:80%),
  caption: [Rendu 3D])
#v(25pt, weak: true)

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0132.png", width:80%),
  caption: [Rendu 3D])

#v(25pt, weak: true)

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0133.png", width:80%),
  caption: [Rendu 3D])
#v(25pt, weak: true)



Nous pouvons enfin choisir une variété de LookUp Tables (LUT), ou même en créer une personnalisée. Cette table permet d’associer une couleur à une valeur de pixel, et DragonFly en possèdent plusieurs adaptées à la fois aux sciences du vivant et aux sciences des matériaux.
#v(25pt, weak: true)
Si vous souhaitez personnaliser votre propre LUT : https://www.theobjects.com/dragonfly/dfhelp/2024-1/Default.htm#Visualizing%20Images/Using%20the%20LUT%20Editor.htm?TocPath=Visualizing%2520Images%257CWindow%2520Leveling%257C_____3. 
#v(25pt, weak: true)
Les applications possibles sont: 
- Des effets de luminosité et d’ombrage
- DEs effets de focus
- Ajouter un plan réfléchissant sur un plan du rendu 3D.


Exemple d'applications
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0134.png", width:80%),
  caption: [Comparaison de la luminosité : avant (gauche) et après ajout (droite)])
#v(25pt, weak: true)

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0135.png", width:80%),
  caption: [Avant application de la luminosité et de l’ombrage (gauche) vs après ajout des deux effets (droite)])
#v(25pt, weak: true)

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0136.png", width:80%),
  caption: [Avant application de l’effet de focus (gauche) et après ajout (droite)])
#v(25pt, weak: true)



#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0137.png", width:80%),
  caption: [AJout d'une surface réfléchissante à droite])
#v(25pt, weak: true)





//Saut de page
#pagebreak()

== Modifier les propriétés de la séquence d'images
// Insert space
#v(25pt, weak: true)
Il est possible de modifier plusieurs propriétés liées à la séquence d'images. Ces réglages permettent d'ajuster finement l'affichage du rendu 3D et/ou de découper le volume affiché à l'aide de l'outil de clipping situé à droite. 
// Insert space

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0138.png", width:40%),
  caption: [Menu des propriétés 3D])
#v(25pt, weak: true)



//Saut de page
#pagebreak()

=== Les différents paramètres 
#v(25pt, weak: true)
==== Paramètre Solidity
#v(25pt, weak: true)
Le paramètre *Solidity* définit l'opacité perçue des voxels selon un rendu non linéaire : cela crée un effet plus dense que la simple opacité. 
#v(25pt, weak: true)
Le paramètre "Solidity" est par défaut au centre. 

- Solidity faible (valeur basse)
  - Les voxels sont plus transparents, même s'ils ont une intensité élevée. 
  - L'image paraît plus diffuse. 
  - Les structures internes peuvent être plus visibles, mais le rendu est souvent moins contrasté
- Solidity élevée (valeur haute):
  - Les voxels apparaissent plus denses et plus opaques, même avec peu d'intensité
  - Risque de masquer les détails internes
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/118.png", width:100%),
  caption: [Paramètre Solidity ])
// Insert space
#v(25pt, weak: true)

//Saut de page
#pagebreak()
=== Paramètre Diffuse
// Insert space
#v(25pt, weak: true)
Le paramètre "Diffuse" contrôle la lumière diffuse réfléchie par les surfaces. Augmenter la valeur améliore la définition visuelle des structures
// Insert space
#v(25pt, weak: true)
Le paramètre "Diffuse" est par défaut au centre. 
- Diffuse faible (valeur basse):
  - Les surfaces sont difficiles à distinguer
  - Les détails de forme et de relief sont moins visibles. 
- Diffuse élevée (valeur haute)
  - La lumière se diffuse fortement sur les surfaces
  - Les reliefs deviennent plus visibles. Cela donne un rendu plus contrasté. 
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/119.png", width:100%),
  caption: [Paramètre Diffuse ])
// Insert space
#v(25pt, weak: true)


//Saut de page
#pagebreak()
=== Paramètre Specular
// Insert space
#v(25pt, weak: true)
Le paramètre "Specular" contrôle la quantité de lumière réfléchie de manière spéculaire (c'est-à-dire en reflets brillants, comme un miroir ou un éclat de lumière sur une surface polie). 
// Insert space
#v(25pt, weak: true)
Le paramètre "Specular" est par défaut au centre. 
- Specular faible:
  - La surface paraît matte, sans éclats
  - Pas de réfléchissant
  - L'objet est moins brillant. 
- Specular élevé:
  - La surface montre des reflets brillants
  - Le rendu donne l'impression que la surface est lisse ou polie

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/119.png", width:100%),
  caption: [Paramètre Solidity ])
// Insert space
#v(25pt, weak: true)







//Saut de page
#pagebreak()
=== Paramètre Shininess
// Insert space
#v(25pt, weak: true)
Le paramètre "Shininess" contrôle la taille et la netteté des reflets du paramètres "Specular". 

Le paramètre "Specular" est par défaut au centre. 
- Sininess faible:
  - Les reflets sont larges et diffuse
  - La lumière réfléchie est étalée sur une grande surface
- Shininess élevé:
  - Les reflets sont concentrés
  - La lumière réfléchie forme des points brillants très précis
  - La surface semble très lisse et brillante. 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0140.png", width:100%),
  caption: [Paramètre Shininess ])
// Insert space
#v(25pt, weak: true)




//Saut de page
#pagebreak()
=== Paramètre Tone mapping
// Insert space
#v(25pt, weak: true)
Le paramètre "Tone mapping" est une technique utilisée pour adapter la plage dynamique d'une image à l'écran. Cela permet d'appliquer une rééchelle tonale dynamique pour préserver les détails dans des images à large plage dynamique. 

Il existe deux possibilités: 
- Tone Mapping désactivé: 
  - L'image conserve sa plage dynamique naturelle. 
  - Les zones très sombres peuvent apparaître complètement noire et les zones très claires complètement blanches. 
  - Le contraste peut sembler trop fort, avec des détails cachés dans les extrêmes. 
- Tone Mapping activé:
  - Les détails dans zones sombres et claires sont mieux conservés. 
  - Le rendu paraît plus équilibré, avec un contraste amélioré. 
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0141.png", width:100%),
  caption: [Paramètre Tone mapping])
// Insert space
#v(25pt, weak: true)



//Saut de page
#pagebreak()
=== Paramètre Unsharp
// Insert space
#v(25pt, weak: true)
Paramètre Unsharp activé (droite) et non activée (gauche). Il s'applique sur la lumière appliquée au rendu 3D
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0142.png", width:100%),
  caption: [Paramètre Unsharp ])
// Insert space
#v(25pt, weak: true)




=== Paramètre Specular boost 
// Insert space
#v(25pt, weak: true)
Paramètre Specular boost activé (droite) et non activée (gauche). Il s’applique sur la lumière appliquée au rendu 3D
// Image
#figure(
  image("../Image/0143.png", width:100%),
  caption: [Paramètre Specular boost])
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

