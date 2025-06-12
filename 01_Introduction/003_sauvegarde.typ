#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

== Sauvegarde de la session en cours
// Insert space
#v(25pt, weak: true)

// Étapes
Si vous souhaitez reprendre votre travail là où vous vous êtes arrêté, il est nécessaire de sauvegarder votre session. Pour cela, suivez ces étapes :
// Insert space
#v(25pt, weak: true)

Dans le #text(weight: "bold")[menu] déroulant, sélectionnez :

#tree-list[
  - #text(weight: "bold")[File]
    - Cliquer sur : #text(weight: "bold")[Save session as]
      -  La fenêtre de sauvegarde s'affiche à l'écran
        - Enregistrer votre session sous le format #text(weight: "bold")[Session Files (.ORSSession)] 
          ]
// Insert space
#v(25pt, weak: true)

// Image
    #figure(
      image("../Image/0006.jpg", width: 30%),
      caption: [Sauvegarde de la session .ORS],
           )



// Insert space
#v(30pt, weak: true)
== Ouvrir une session sauvegardée
// Insert space
#v(25pt, weak: true)

// Etapes 
Pour reprendre votre travail à partir de la session ORS que vous avez sauvegarder:

#tree-list[
- Ouvrir une nouvelle session de Dragonfly
  - Dans le #text(weight: "bold")[menu] déroulant, sélectionnez :
    - #text(weight: "bold")[File]
      -  Cliquer sur : #text(weight: "bold")[Load session]
        - Choisir la session que vous voulez ouvrir
          ]

// Image
    #figure(
      image("../Image/0007.jpg", width: 30%),
      caption: [Chargement d'une session .ORS],
           )

//Saut de page
#pagebreak()