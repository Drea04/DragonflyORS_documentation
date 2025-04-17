#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Les Multi-ROIs
// Insert space
#v(25pt, weak: true)
Lorq'une classe regroupe plusieurs objets similaires - comme les mitochondries dans une cellule - une analyse précise nécessite son seulement de segmenter tous ces obets dans la même classe, mais aussi de les distinguer individuellement. Pour cela, chaque objet est traité comme une ROI distincte, portant un label unique. L'ensemble de ces ROIs individuelles, rassemblées sous une même clasqqe, constitue ce qu'on appelle une multi-ROI. 

La ROI permet donc d'isoler une zone d'intérêt spécifique pour l'analyse, tandis que la multi-ROI offre une représentation structurée de plusieurs objets similaires, chacun identifié séparément au sein d'un groupe cohérent.

Il existe plusieurs façons de créer une multi-ROI:
- La méthode la plus simple consiste à la définir dès le départ, en y intégrant plusieurs objets ou sous-classes, avant même la segmentation.
- On peut également construire une multi-ROI en regroupant plusieurs ROIs-simples préexistantes.
- Enfin, à partir d'une ROI globale, il est possible d'identifier a posteriori les différents objets qu'elle contient, à condition qu'ils soient bien séparés. Cette étape de séparation est appelée labellisation, et permet d'attribuer un label unique à chaque objet, les transformant ainsi en ROIs distinctes à l'intérieur de la multi-ROI. 

// Insert space
#v(30pt, weak: true)
== Création d'une multi-ROI vide 
// Insert space
#v(25pt, weak: true)

Pour créer une multi-ROI vide avec plusieurs classes:
#tree-list[
- Cliquer sur #text(weight: "bold")[Segment] dans l'onglet en haut à gauche 
  - Sélectionner :#text(weight: "bold")[ ROI Tools -> Basic] 
    - #text(weight: "bold")[File]
      -  Cliquer sur : #text(weight: "bold")[New]
        - La fenêtre "New Region of Interest" apparaît sur l'écran
          - Choisir la géométrie (Le dataset à segmenter)
          - Cocher la case #text(weight: "bold")[Create as Multi-ROI]
            - Cliquer sur : OK]
// Insert space
#v(25pt, weak: true)
* mettre image Dragonfly multi-ROI*

// Insert space
#v(30pt, weak: true)
=== Affichage d'une multi-ROI
// Insert space
#v(25pt, weak: true)
* mettre image Data properties and settings*

// Insert space
#v(30pt, weak: true)
=== Propriétés d'une multi-ROI 
// Insert space
#v(25pt, weak: true)
La liste des labels contenus dans la multi-ROI s'affichent dans le tableau *Classes and Scalar Information*
 
*mettre image classes and scalar information*

Il est possible de segmenter chaque label individuellement. Pour cela, commencez par sélectionner la classe que vous souhaitez analyser, puis appliquez la segmentation à l'aide des outils présentés précédemment.

==== Classes and scalar information


// Insert space
#v(30pt, weak: true)
== Création d'une multi-ROI à partir de ROIs
// Insert space
#v(25pt, weak: true)



// Insert space
#v(30pt, weak: true)
== Création de ROIs à partir d'une multi-ROI
// Insert space
#v(25pt, weak: true)

== Création d'une multi-ROI par labellisation des composants non connectés 



