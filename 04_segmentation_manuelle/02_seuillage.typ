#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Segmentation par seuillage
#v(25pt, weak: true)

Le seuillage est une technique utilisée pour segmenter une image en différentes régions en fonction de l'intensité des pixels. Cela consiste à définir une ou deux valeurs seuils d'intensité. 

*Avec un seuil unique* :  l'image est séparée en deux classes : d'une part, les pixels dont l'intensité est supérieure au seuil, et d'autre part, ceux dont l'intensité est inférieure.

*En utilisant deux seuils* : il devient possible de sélectionner les pixels dont l'intensité se situe soit dans une plage spécifique définie entre ces deux seuils, soit en dehors de cette plage.

// Insert space
#v(25pt, weak: true)










== Segmentation par seuillage manuel
// Insert space
#v(25pt, weak: true)

Dans le seuillage manuel, l'utilisateur choisit directement la ou les valeurs de seuil en fonction de l'analyse visuelle de l'image ou de son expérience.

// Insert space
#v(25pt, weak: true)

Pour segmenter par seuillage manuel :

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
  - Sélectionner :#text(weight: "bold")[ ROI Tools -> Range] 
      - Cocher la case #text(weight: "bold")[Define range]
      -  Ajuster les bornes de seuillage pour définir une plage d’intensité des pixels.
      - Les pixels sélectionnés apparaissent en rouge dans la vue 2D.
        - Les valeurs des seuils sont affichées dans la section « Selected range ».
              - Cliquer sur Add pour ajouter la sélection à la ROI présélectionnée.
                - Décocher la case #text(weight: "bold")[Define range]
          ]
          
// Image
    #figure(
      image("../Image/0034.png", width:50%),
      caption: [Sous-menu de seuillage manuel],)

// Insert space
#v(25pt, weak: true)


*Facultatif :* Nous pouvons afficher l’histogramme des niveaux de gris en cochant la case 

*Show histogram*. Cela permet de sélectionner directement une plage spécifique de pixels dans l’histogramme (selected range).


*Méthode Alternative :* 

Utiliser l'option *Add to New* pour ajouter la sélection à une nouvelle ROI. 

La nouvelle ROI s’affiche dans la liste des objets sous le nom par défaut « New ROI ». 

Pour renommer la ROI, double-cliquez sur son nom et saisissez le nouveau nom.
// Insert space
#v(25pt, weak: true)









=== Les opérations possibles
// Insert space
#v(25pt, weak: true)

Le bouton *Reset* réinitialise le seuillage en cours en repositionnant les bornes aux valeurs extrêmes.

Le bouton *Invert* inverse la sélection actuelle.

Le bouton *Remove* supprime la sélection de pixels d'une ROI. 

// Image
    #figure(
      image("../Image/0035.png", width:70%),
      caption: [Option de seuillage manuel],)


// Insert space
#v(25pt, weak: true)










=== Segmentation par seuillage automatique
// Insert space
#v(25pt, weak: true)

Dans le seuillage automatique, un algorithme calcule les valeurs optimales de seuil qui minimise le poids de la variance dans chacune des 2 classes : foreground et background

La méthode d'Otsu est une technique de seuillage automatique qui cherche à trouver un seuil (ou plusieurs) en minimisant la variance intra-classe et en maximisant la variance inter-classe. Cela permet de séparer l'image en régions distinctes basées sur l'intensité.
// Insert space
#v(25pt, weak: true)

Pour segmenter par seuillage automatique Otsu :

#tree-list[
- Créer et/ou sélectionner une ROI vide
  - Accéder au menu Segment
    - Sélectionner :#text(weight: "bold")[ ROI Tools -> Range] 
      - Cocher la case #text(weight: "bold")[Define range]
      -  Cliquer sur la case *Lower Otsu* ou sur la case *Upper Otsu* 
        - Les valeurs des seuils sont affichées dans la section «Selected range».
          - Cliquer sur Add pour ajouter la sélection à la ROI sélectionnée.
            - Décocher la case #text(weight: "bold")[Define range]
          ]

// Insert space
#v(30pt, weak: true)
// Image
    #figure(
      image("../Image/0036.png", width:50%),
      caption: [Seuillage automatique Otsu],)

// Insert space
#v(25pt, weak: true)

- *Cas 1 : Lower Otsu :* Permet de trouver un seuil inférieur qui sépare les pixels d'intensité plus faible des autres. Il est utile pour extraire les zones sombres ou faibles de l'image.
- *Cas 2 : Upper Otsu :* Permet de trouver un seuil qui sépare les pixels d'intensité plus élevée des autres. Il est utile pour mettre en évidence les zones les plus claires de l'image. 
- *Cas 3 : Lower Otsu puis Upper Otsu* Permet de sélectionner une gamme de pixels comprises entre deux seuils définis automatiquement. 


// Insert space
#v(25pt, weak: true)

// Image
    #figure(
      image("../Image/0037.png", width:100%),
      caption: [Seuillage automatique Otsu],)

