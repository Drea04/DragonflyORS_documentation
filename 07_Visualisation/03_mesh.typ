#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Modélisation 3D

== Les maillages (Mesh)
#v(25pt, weak: true)
Une mesh (ou un maillage) est une répresentation de surface 3D constitutée de sommet, arêtes et faces, formant une géométrie utilisée pour visualiser ou analyser des objets issues de données volumétriques. 

Dans Dragonfly, nous pouvons créer les mesh à partir de ROIs. La transformation des ROIs en mesh permet de transformer les données (en voxels) en une surface 3D plus légère, utilise pour visualiser les contours avec précision et clarté. 
#v(25pt, weak: true)


== Génération d'une mesh
#v(25pt, weak: true)
Pour créer une mesh à partir d’une ROI :

#tree-list[
  - Faites un clic droit sur la ROI que vous souhaitez convertir en mesh
    - Sélectionnez 3D Modeling
      - Choisissez Generate Contour Mesh
]

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0068.png", width:60%),
  caption: [Génération d'une mesh])
// Insert space
#v(25pt, weak: true)

Le menu *Generate Contour Mesh* apparaît à droite. Ce menu permet de choisir les paramètres pour la agénération de votre mesh. 

// Image
#figure(
  image("../Image/0069.png", width:60%),
  caption: [Génération d'une mesh])
// Insert space
#v(25pt, weak: true)

=== Les paramètres pour la génération d'un Contour mesh
// Insert space
#v(25pt, weak: true)
1. *L'objet :* Correspond à votre ROI sélectionnée.
2. *Le seuil (ou Threshold) :* Permet de définir la valeur de seuil utilisée pour positionner la mesh par rapport à la ROI.
  - Si le seuil = 50, la mesh est générée exactement à la frontière de la ROI
  - SI le seuil < 50, la mesh est générée à l'extérieur de la ROI.
  - Si le seuil > 50, la mesh est générée à l'intérieur de la ROI. 
  
3. *L'échantillonnage (ou Sampling) :* Détermine le taux d'échantillonnage appliqué le long de chaque axe. Une valeur de 4 signifie qu'1 pixel sur 4 est pris en compte. Une valeur de 1 signifie que tous les voxels sont analysés, offrant une mesh plus précise.  


Une fois que vous avez ajusté ces paramètres, cliquer sur *Export to a Mesh*.


#pagebreak()
== Les propriétés d'une mesh
 // Insert space
#v(25pt, weak: true)
En sélectionnant une meseh, nous pouvons avoir les informations associées à droite. Ces informations incleunt le nombre de sommets, d'arêtes et de triangle, ainsi que la surface de la mesh et son volume. 
 // Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0118.png", width:60%),
  caption: [Génération d'une mesh])
// Insert space
#v(25pt, weak: true)

== La décimation d'une mesh dans Dragonfly
 // Insert space
#v(25pt, weak: true)
La décimation d'une mesh est une technique qui permet de réduire le nombre de polygones (triangles, sommets, arêtes) d'une mesh tout en préservant au maximum sa forme générale et son volume. 

Une mesh est composée de milliers ou millions de petits triangles formant sa surface. PLus il y a de triangles, plus le modèle est détaillé, mais cela peut ralentir l'affichage, l'édition ou l'exportation. 
 // Insert space
#v(25pt, weak: true)
Pour décimer une mesh dans dragonfly:

#tree-list[
- Faites un clic droit sur une mesh dans le panel Data Properties and Settings.
  - Choisissez Mesh Decimator
]
 // Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0090.png", width:60%),
  caption: [Décimation d'une mesh])
// Insert space
#v(25pt, weak: true)

=== Les paramètres pour la décimation d'une mesh
 // Insert space
#v(25pt, weak: true)
1. *Mesh :* Indique le nom de la Mesh à décimer. 
2. *Method :* IL existe deux méthodes de décimation, la décimation Pro et la décimation quadric. 
  1. *La décimation Pro :* Sélection de sommets selon un critère d'eereur, suppression itérative.
  2. *La décimation quadric :* Effondrement d'arêtes basé sur la mesure d'erreur quadrique afin de minimiser la déviation de forme.  
3. *Target Reduction :* C'est le pourcentage ou nombre cible de réduction des triangles/sommets/arêtes. 

  // Insert space
#v(25pt, weak: true)
Une fois que ces pacamètres ont été sélectionné, cliquer sur Apply. Vous pouvez appliquer les changements sur la mesh existantes ou créer une nouvelle mesh. 
 // Insert space
#v(25pt, weak: true)

#pagebreak()
== Le lissage d'une mesh
 // Insert space
#v(25pt, weak: true)
Le lissage de mesh est une méthode qui permet de corriger les irrégularités et le bruit dans un modèle 3D généré à partir d'un volume, tout en conservant sa forme générale. 

Cela permet d'obtenir une surface plus lisse, avec des sommets mieux répartis et moins de déformations visuelles. 
 // Insert space
#v(25pt, weak: true)
Pour lisser une mesh dans Dragonfly:

#tree-list[
  - Sélectionner la mesh à lisser.
    - Le menu *Smooth mesh* apparaît en bas à droite accessible depuis le panneau Data Properties and Settings.

]
 // Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0121.png", width:60%),
  caption: [Lissage d'une mesh])
// Insert space
#v(25pt, weak: true)


Pour appliquer un lissage, choisir le nombre d'itérations dans la Boite Iterations. PLus le nombre d'itération est élevé, plus le lissage est fort. 




== Graphs

== Vector fields



=== modifier les propriétés d'un maillage
=== Propriété 3D du maillage 
=== Affinage du maillage
=== Clip 
