#set page("a4")
#set text(
  lang: "fr", 
  size: 12pt)
#show outline: set text(fill: blue)
#show outline.entry.where(
  level: 1
): set block(above: 2em)

#import "@preview/ilm:1.4.1": *
#show: ilm.with(
  title: [Documentation Dragonfly ORS],
  author: "Lucien DAUNAS, Catherine DURIEU, Manuel MAJROUH, Sandra SARA",
  paper-size: "a4",
  date-format: datetime(year: 2024, month: 03, day: 19),
  abstract:[],
  table-of-contents: outline(depth: 5),
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true)
)

#set page(numbering: "1 of 1")
#show heading: set text(fill: blue)
#import "@preview/numbly:0.1.0": numbly
#set heading(
  numbering: numbly(
    "Chapitre {1}:",
    "Partie {2}",
    "{3}",
    "{3}.{4}",
    "{3}.{4}.{5}"
 ),
)

#include "01_Introduction/001_Interface.typ"
#include "01_Introduction/002_chargement_donnees.typ"
#include "01_Introduction/003_sauvegarde.typ"

#include "02_Manipulation_data/001_MainTab.typ"
#include "02_Manipulation_data/002_visualisation_2D.typ"
#include "02_Manipulation_data/003_propriete.typ"
#include "02_Manipulation_data/004_modification.typ"

#include "03_Filtre/01_introduction.typ"

#include "04_segmentation_manuelle/01_base_segmentation.typ"
#include "04_segmentation_manuelle/02_seuillage.typ"
#include "04_segmentation_manuelle/segmentation_manuelle.typ"

#include "05_Quantification/001_quantification.typ"

#include "06_deeplearning/01_Introduction.typ"

#include "07_Visualisation/01_introduction.typ"
#include "04_segmentation_manuelle/04_segmentation_3D"