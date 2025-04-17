#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

//Saut de page
#pagebreak()
= Quantification et analyse
// Insert space
#v(15pt, weak: true)

== Quantification et analyse pour les multi-ROIs
// Insert space
#v(15pt, weak: true)
Pour réaliser vos quantifications sur une multi-ROI: 

#tree-list[
- Faites un clique droit sur votre ROI pour afficher le menu déroulant
  - Choisissez : #text(weight: "bold")[Compute measurements]
  -  La fenêtre d'analyse s'affiche à l'écran 
          ]

// Insert space
#v(15pt, weak: true)

// Image
    #figure(
      image("../Image/0038.PNG", width:50%),
      caption: [Fenêtre #text(weight: "bold")[Compute measurements]],
    )

// Insert space
#v(15pt, weak: true)
=== Anisotropy
L'anisotropie est une propriété de certaines structures qui se comportent différemment selon la direction et l'orientation. Ce type de calcul est particulièrement intéressant pour les échantillons de types matériaux.  

Pour mesurer l'anisotropie, il y a deux méthodes implémentés dans Dragonfly:
- La méthode de la longueur moyenne d'interception (MIL)
- La méthode de la distribution de volume étoilé (SVD)


=== Basic Measurements 
Cette partie comprend des mesures tels que le nombre de voxels, la surface, le centre de masse etc. 

Pour avoir plus d'informations sur la liste des mesures et leurs explications, cliquer sur le lien suivant: 
#link("https://www.theobjects.com/dragonfly/dfhelp/2024-1/Content/ROIs%20and%20Multi-ROIs/Multi-ROIs/Measurements%20and%20Scalar%20Data%20for%20Multi-ROIs/Basic%20Measurements.htm")[
Basic Measurements]

===  Basic Measurements with datasets
Cette partie vous permets de calculer des propriétés statistiques sur votre jeu de données en lien avec la multi-ROI sélectionnées. Les mesures incluent les valeurs d'intensité maximale et minimale, l'entropie, la variation d'intensité etc. 

Dans ce cas, le jeu de données doit être sélectionnée. Seul les jeu de données en lien avec la multi-ROI sélectionné vont apparaître. 

Pour plus d'informations sur la liste des mesures et leurs explications, cliquer sur le lien suivant: 
#link("https://www.theobjects.com/dragonfly/dfhelp/2024-1/Content/ROIs%20and%20Multi-ROIs/Multi-ROIs/Measurements%20and%20Scalar%20Data%20for%20Multi-ROIs/Basic%20Measurements%20with%20Dataset.htm")[
Basic Measurements with Datasets]

=== Constant
Cette rubrique permet d'ajouter une valeur constante à chaque classe de la Multi-ROI sélectionnée.

Pour cela, il faut indiquer un titre pour la constante ainsi que sa valeur comme illustré ci-dessous.

// Insert space
#v(15pt, weak: true)

// Image
    #figure(
      image("../Image/0039.PNG", width:50%),
      caption: [Ajout d'une constante],
    )

// Insert space
#v(25pt, weak: true)


=== Intersection with ROI or Shape
Cette section vous permet d'identifier les classes de la multi-ROI sélectionne qui croisent une autre ROI ou multi-ROI.

Pour cela, vous devez spécifier un titre pour la mesure ainsi que l'objet d'intérêt afin de calculer l'intersection avec votre multi-ROI.

// Insert space
#v(15pt, weak: true)
// Image
    #figure(
      image("../Image/0040.PNG", width:50%),
      caption: [Ajout d'une constante],
    )

// Insert space
#v(25pt, weak: true)

=== Intersection (voxel count) with ROI or Shape
Cette section permet de calculer le nombre de pixels dans les classes de votre multi-ROI qui intersectent avec une autre ROI. 

=== Longest lenght
Dans cette section, deux calculs sont disponible:
- La longueur maximale : calcul de la longueur maximale de chaque classe
- La tortuosité: C'est le rapport moyen de la longueur de cheminement (trajet) entre deux points à la distance rectiligne qui les sépare. 


=== Random Classes and Random Labels
Cette partie permet d'ajouter des classes dans la multi-ROI sélectionnée ainsi que des Label. 

//Saut de page
#pagebreak()
    
== Analyzing and Classifying Measurements
// Insert space
#v(15pt, weak: true)
Cet Outil peut être utilisé une fois que la partie *Quantification et analyse pour les multi-ROIs* a été effectué. Voir Rubrique *9.1*.


Pour ouvrir la fenêtre d'analyse et de classification des mesures: 

#tree-list[
- Dans le #text(weight: "bold")[menu] déroulant, sélectionnez :
  - #text(weight: "bold")[Utilities]
    - Cliquer sur : #text(weight: "bold")[Analyse and Classify Measurements]
      -  La fenêtre d'analyse s'affiche à l'écran 
          ]
// Insert space
#v(15pt, weak: true)
// Image
    #figure(
      image("../Image/0041.PNG", width:100%),
      caption: [Fenêtre: Analyse and Quantify Measurements],
    )
// Insert space
#v(25pt, weak: true)         

Dans cette fenêtre, vous pouvez trouver les mesures réalisées dans la partie *Quantification et analyse pour les Multi-ROI*. 

A gauche, nous trouvons la liste des multi-ROI analysées.
A droite, nous trouvons la liste des classes de la multi-ROI ainsi que les mesures pour chaque classe.
// Insert space
#v(15pt, weak: true)
// Image
    #figure(
      image("../Image/0042.PNG", width:70%),
      caption: [Fenêtre: Analyse and Quantify Measurements],
    )

// Insert space
#v(25pt, weak: true) 

*A* - *New Measurement*

Permet d'ouvrir la fenêtre "Compute measurements" si besoin de réaliser d'autre mesure supplémentaire. 

*B* - *Histogram Analysis*

Permet d'ouvrir l'outil d'analyse des histogramme à partir duquel, nous pouvons analyser la distribution des données mesurées ainsi que de calculer des statistiques. 

*C* - *Arithmetic Operations*

Permet d'ouvrir l'outil d'opération arithmétiques à partir duquel nous pouvons appliquer des expression arithmétiques (addition, soustraction,)
Ouvre la boîte de dialogue "Opérations arithmétiques", dans laquelle vous pouvez appliquer des expressions arithmétiques à une ou plusieurs entrées pour modifier les mesures sélectionnées ou calculer de nouvelles mesures (voir Appliquer des opérations arithmétiques).

*D* - *Cross-Reference Measurement*

*E* - *Basic Statistics*

*F* - *Export as CSV* 


== Connected Components Analysis

== Analyzing Histograms and Creating Classes from Scalar Data

== Importing Scalar Values from CSV Files

== Assigning Units to Scalar Values

== Deleting Scalar Values