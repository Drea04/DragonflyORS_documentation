#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Les bases de la segmentation
// Insert space
#v(20pt, weak: true)
La segmentation d'une image numérique consiste à identifier et marquer les pixels en fonction de leur appartenance à des classes, appelées ROIs (Regions of Interest). 

Dans cette section, nous expliquerons comment créer des ROIs, sélectionner des pixels, et les assigner à une ROI. 

// Insert space
#v(30pt, weak: true)
== Menu de segmentation
// Insert space
#v(20pt, weak: true)
Voici un rappel de l'interface de Dragonfly, avec les menus pertinents pour cette étape.

// Image
    #figure(
      image("../Image/68.png", width:50%),
      caption: [Menu *Segment*],)

Dans le menu *Segment*, nous trouvons trois sous-menu:
- ROI Painter
- ROI Tools
- Segment with AI
    
// Insert space
#v(30pt, weak: true)

=== Création d'une ROI vide
// Insert space
#v(20pt, weak: true)
La classification des pixels s’effectue en deux étapes : d’abord la sélection des pixels, puis leur attribution à une classe (ROI). La création de la ROI peut être réalisée en amont,  c’est ce que nous présentons ici. 

// Insert space
#v(25pt, weak: true)
Pour créer une ROI vide:

#tree-list[
- Cliquer sur #text(weight: "bold")[Segment] dans l'onglet en haut à gauche 
  - Sélectionner :#text(weight: "bold")[ ROI Tools -> Basic] 
    - #text(weight: "bold")[File]
      -  Cliquer sur : #text(weight: "bold")[New]
        - La fenêtre "New Region of Interest" apparaît sur l'écran
          - Donner un nom à la classe (exemple: noyau ou mitochondrie)
          - Choisir la géométrie (Le dataset à segmenter)
          - Choisir la couleur de la ROI en cliquant sur le carré de couleurs
            - Cliquer sur : OK]
          
// Insert space
#v(25pt, weak: true)

// 2 images en colomnes
#figure(
    grid(
        columns: 2,     // 2 means 2 auto-sized columns
        gutter: 2mm,    // space between columns
      image("../Image/0032.png", width:90%),
      image("../Image/0031.png", width:90%),
    ),
    caption: "Création d'une ROI vide")
    
// Insert space
#v(30pt, weak: true)
=== Affichage d'une ROI
// Insert space
#v(20pt, weak: true)
La ROI nouvellement créée apparaît dans la liste des objets. Comme elle est « vide », aucun pixel de couleurs n’apparaît dans l’image lorsque nous la sélectionnons. Le nom de la ROI est suivie d’un astérisque $*$ indiquant qu’elle n’a pas encore été sauvegardée (voir le chapitre sur les exports et la sauvegarde).


// Image
    #figure(
      image("../Image/0033.png", width:50%),
      caption: [Nouvelle ROI créée appelée Noyau],)

// Insert space
#v(30pt, weak: true)      
=== Propriétés d'une ROI
// Insert space
#v(25pt, weak: true)


=== Histogramme de la ROI 

