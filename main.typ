#import "@preview/mantys:1.0.0": *
#import "@preview/treet:0.1.1": *

#set outline.entry(fill: none)
#set text(
  lang: "fr", 
  size: 5pt)

#show: mantys(
  name: "mantys",
  version: "1.0.0",
  authors: (
    "Lucien DAUNAS", "Catherine DURIEU", "Manuel MAJROUH", "Sandra SARA",
  ),
 
  license: "",
  description: "Guide d'utilisation du logiciel Dragonfly ORS",
  repository: "https://dragonfly.comet.tech/",

  /// Uncomment one of the following lines to load the above
  /// package information directly from the typst.toml file
  // ..toml("../typst.toml"),
  // ..toml("typst.toml"),

  title: "Dragonfly ORS",
  // subtitle: "Tagline",
  date: datetime.today(),


  // url: "",

  abstract: [
  Ce document de travail sert de guide pour l'utilisation du logiciel Dragonfly ORS dans l'analyse d'images d'échantillons biologiques. Destiné à la communauté des microscopistes en France, il constitue une ressource d'accompagnement pour débuter avec Dragonfly.
  ],

  // examples-scope: (
  //   scope: (:),
  //   imports: (:)
  // )

  // theme: themes.modern
)
/// Helper for Tidy-Support
/// Uncomment, if you are using Tidy for documentation
// #let show-module(name, scope: (:), outlined: true) = tidy-module(
//   read(name + ".typ"),
//   name: name,
//   show-outline: outlined,
//   include-examples-scope: true,
//   extract-headings: 3,
// )
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
#include "04_segmentation_manuelle/03_segmentation_2D.typ"
#include "04_segmentation_manuelle/04_segmentation_3D.typ"
#include "04_segmentation_manuelle/05_ROI_Multi_ROI.typ"
#include "04_segmentation_manuelle/06_operation_morphologique.typ"

#include "05_Quantification/001_quantification.typ"

#include "06_deeplearning/01_Introduction.typ"

#include "07_Visualisation/01_introduction.typ"
