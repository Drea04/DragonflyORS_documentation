#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

== Chargement des fichiers d'image
// Insert space
#v(25pt, weak: true)

En utilisant Dragonfly, vous avez la possibilité d'importer vos jeu de données sous différents formats.

Les formats de fichiers d'images acceptés par Dragonfly sont présentés dans le tableau suivants:


// Table
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 5pt,
  align: horizon,
  table.header( [*Format*], [*Import*], [*Export*],[*Format*], [*Import*], [*Export*] ),
  [*TIFF* (.tif ; .tiff)], [Yes], [Yes], [*TXM* (.txm ; .txrm)], [Yes], [No],
  [*CZI* (.czi)], [Yes], [Yes], [*JPEG* (.jpg ; .jpeg ; .jpe)], [Yes], [Yes],
  [*JPEG 2000* (.jp2)], [Yes], [No], [*PNG* (.png)], [Yes], [Yes],
  [*Bitmap* (.bmp, .dib)], [Yes], [Yes], [*RAW* (.raw ; .pic)], [Yes], [Yes],
  [*DAT* (.dat)], [Yes], [Yes], [*Analyze 7.5* (.hdr)], [Yes], [Yes],
  [*NIfTI* (.nii)], [Yes], [No], [*REK* (.rek)], [Yes], [No],
  [*MRC* (.mrc)], [Yes], [No], [*ORS Dataset* (.ORSObject ; .xml)], [Yes], [Yes],
  [*Avizo/Amira* (.am)], [Yes], [No], [*Digital Micrograph* (.dm4)	], [Yes], [No],
  [*NetCDF* (.nc)	], [Yes], [No], [*DICOM* (.dcm)], [Yes], [Yes],
  [*Scanco* (.aim)], [Yes], [No], [*VFF* (.vff)], [Yes], [No],
  [*Vox* (.vox)], [Yes], [No], [*VTK* (.vtk)], [Yes], [No],
  
)

// Insert space
#v(25pt, weak: true)
Plus d'informations sur le type de formats de fichiers supportés sont présents via le lien suivant :
#link("https://www.theobjects.com/dragonfly/dfhelp/2024-1/Default.htm#Key%20Features/Supported%20File%20Formats.htm?TocPath=Key%2520Features%257C_____8")[
Supported File Formats]

//Saut de page
#pagebreak()


== Chargement d'une séquence d'image
// Insert space
#v(25pt, weak: true)

Pour charger une séquence d'image dans Dragonfly  (Version 2024.1):

// Etapes 
#tree-list[
- Ouvrir une nouvelle session Dragonfly
  -  Dans le #text(weight: "bold")[menu] déroulant, sélectionnez :
    - #text(weight: "bold")[File]
      - #text(weight: "bold")[Import Image Files...]
        - Une fenêtre intitulée #text(weight: "bold")["Import image"] s'affiche à l'écran. 
          ]

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0002.PNG", width: 100%),
      caption: [Fenêtre : Import Image])
// Insert space
#v(25pt, weak: true)
 
- #emph(text(red)[Add : Permet d'ajouter les fichiers d'images présent dans un dossier.])     
- #emph(text(aqua)[Open Folder: Permet d'ajouter les fichiers d'images présent dans un dossier.])
- #emph(text(fuchsia)[Preview: Permet de prévisualiser les fichiers avant de les importer. ])
- #emph(text(lime)[Next: Cliquer sur Next une fois vos données sont chargé.])
// Insert space
#v(25pt, weak: true)


Vous pouvez prévisualiser les fichiers avant de les importer.
// Insert space
#v(25pt, weak: true)

// Etapes 
Pour charger vos images:

#tree-list[
- Cliquer sur: #text(weight: "bold")[Add]
  - Sélectionner les fichiers à charger
    - Cliquer sur : #text(weight: "bold")[Next]
      -  La fenêtre des paramètres d'images s'affiche à l'écran
        - Choisir les paramètres de vos images
          - Cliquer sur : #text(weight: "bold")[Finish]
          ]

// Insert space
#v(25pt, weak: true)

=== Paramètres d'image
// Insert space
#v(25pt, weak: true)
Lors de l'importation d'une séquence d'images, ou de données brutes, il est essentiel de spécifier l'ensemble des paramètres suivant:
// Insert space
#v(25pt, weak: true)

// Image
    #figure(
      image("../Image/0003.PNG", width: 80%),
      caption: [Les paramètres d'image])           

// Insert space
#v(25pt, weak: true)

  + #text(weight: "bold")[Image Group :] Permet de nommer les données d'image importées. 
 

  + #text(weight: "bold")[Image sampling :] L'image sampling ou échantillonnage d'image (ou binning) est le processus de sélection d'une partie de vos données d'image lors de l'importation. C'est la façon de choisir la résolution ou la densité des images dans les dimensions X, Y et Z. Par défaut, les valeurs d'échantillonnage sont définies sur "1". Pas d'échantillonnage dans ce cas. 
    Si vous importez des données avec une dimension temporelle, vous pouvez également définir un taux d'échantillonnage d'image pour la dimension "T"


  + #text(weight: "bold")[Image spacing :] C'est la résolution en x, y et z. (à voir la définition avec le groupe de travail)
 
  
  + #text(weight: "bold")[Information :] Cette rubrique vous donne les informations sur la taille des données chargées.

Les autres paramètres #text(weight: "bold")[(Physical conversion, Transform, RGB output)] sont utilisés que dans le cas de certains formats de fichiers. Plus d'informations sont présentes via le lien suivant: #link("https://www.theobjects.com/dragonfly/dfhelp/2024-1/Default.htm#Importing%20Data/Using%20the%20Image%20Loader/Image%20Loader%20Interface.htm")[
Paramètres d'image]

// Insert space
#v(25pt, weak: true)
=== Chargement de données brutes
// Insert space
#v(25pt, weak: true)

Si le format de vos fichiers ne figure pas parmi ceux acceptés par Dragonfly, vous avez la possibilité de les importer sous forme de données brutes.
// Insert space
#v(25pt, weak: true)

Pour charger des données brutes: 

#tree-list[
- Ouvrir une nouvelle session Dragonfly
  -  Dans le #text(weight: "bold")[menu] déroulant, sélectionnez :
    - #text(weight: "bold")[Import]
      - #text(weight: "bold")[Import Image Files...]
        - Une fenêtre intitulée #text(weight: "bold")["Import image"] s'affiche à l'écran. 
          - Cliquer sur: #text(weight: "bold")[Open Folder]
            - Sélectionner manuellement l'ensemble des images à importer
              - Cliquer sur : #text(weight: "bold")[Next]
          ]

// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0004.jpg", width: 80%),
      caption: [Chargement de données brutes],
           )

// Insert space
#v(25pt, weak: true)
Une fois que vous avez les fichiers affichés, il faudra indiquer les caractéristiques de vos données. En cliquant sur Next: une autre fenêtre apparaît. 
// Insert space
#v(25pt, weak: true)


// Image
    #figure(
      image("../Image/0005.jpg", width: 80%),
      caption: [Caractéristiques des données brutes],
           )

// Insert space
#v(25pt, weak: true)
Les caractéristiques à mettre pour le chargement des données brutes: 

#tree-list[
- Indiquer #text(weight: "bold")[la taille de pixels (X, Y, Z et T)]
  - Choisir le type de données #text(weight: "bold")[Data type]
    -  Cocher #text(weight: "bold")[Reverse byte ordering] et/ou #text(weight: "bold")[Signed Data] si nécessaire
      - Remplir la case #text(weight: "bold")[Offset into file]
        - Cliquer sur : #text(weight: "bold")[Next]
          ]

// Insert space
#v(30pt, weak: true)