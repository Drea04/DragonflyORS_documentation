#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Manipulation des données

== Main Tab
// Insert space
#v(25pt, weak: true)

La partie *Main Tab* comprend divers outils pour la manipulation des jeu de données ainsi que leur analyse. Les sections qui permettent d'expliquer comment manipuler les données seront expliquées dans cette partie. 


// Image
    #figure(
      image("../Image/0008.PNG", width: 50%),
      caption: [Main Tab et fonctionnalités],
           )

//Saut de page
#pagebreak()


== Utilisation de la fenêtre Manipulate
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0009.PNG", width: 100%),
      caption: [Manipulate Tools],
           )


 // Insert space
#v(25pt, weak: true)
La fenêtre manipulate dans le Main tab permet de manipuler votre jeu de données une fois celui-ci est chargée dans Dragonfly.

+ #text(weight: "bold")[Track :] Permet de déplacer le curseur en 3D et de pivoter le jeu de données librement en 3D. 

+ #text(weight: "bold")[Pan :] Permet de faire glisser l'image dans n'importe quelle direction.

+ #text(weight: "bold")[Cine :] Permet de parcourir les slices en 2D dans un volume d'image.

+ #text(weight: "bold")[Zoom :] Pour zoomer, faites glisser vers le bas et pour dézoomer faites glisser vers le haut. 

+ #text(weight: "bold")[Walk :] Permet de créer des vues obliques des jeu de données en 2D. 

+ #text(weight: "bold")[Pivot Point :] Permet de changer le point de pivot pour faire pivoter le jeu de données en 3D. 

+ #text(weight: "bold")[Fit :] Permet d'ajuster la vue des objets sélectionnés dans la scène actuelle au centre de la fenêtre

+ #text(weight: "bold")[Reset :] Permet de réinitialiser le jeu de données dans la scène actuelle aux paramètres de zoom et de position d'origine. 

//Saut de page
#pagebreak()


== Utilisation de la fenêtre :Flipping and Rotating
// Image
#figure(
  image("../Image/0010.PNG", width: 100%),
  caption: [Outils de flip et rotation]
) 

// Insert space
#v(25pt, weak: true)

+ #text(weight: "bold")[Flip horizontal :] Inverser la vue sélectionnée horizontalement.

+ #text(weight: "bold")[Flip vertical :] Inverser la vue sélectionnée verticalement.

+ #text(weight: "bold")[Rotate 90° CW :] Pivoter la vue sélectionnée de 90° dans le sens des aiguilles d'une montre.

+ #text(weight: "bold")[Rotate 90° CCW :] Pivoter la vue sélectionnée de 90° dans le sens inverse des aiguilles d'une montre.

+ #text(weight: "bold")[Rotate CW :] Pivoter la vue sélectionnée dans le sens des aiguilles d'une montre selon un angle précis.

+ #text(weight: "bold")[Rotate CCW :] Pivoter la vue sélectionnée dans le sens inverse des aiguilles d'une montre selon un angle précis.

+ #text(weight: "bold")[Angle for rotation :] Indiquer l'angle de rotation souhaité.

//Saut de page
#pagebreak()
