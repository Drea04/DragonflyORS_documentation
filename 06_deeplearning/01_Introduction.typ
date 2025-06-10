#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

//Saut de page
#pagebreak()
= Deep Learning sur Dragonfly
// Insert space
#v(25pt, weak: true)
Lorsqu’une tâche de segmentation devient trop complexe pour être résolue avec des techniques conventionnelles comme le seuillage, et que le nombre d'objets à segmenter est trop important pour être traité manuellement, on peut déployer un réseau de neurones convolutifs (CNN) pour l'entraîner à reconnaître nos objets d'intérêt.

// Insert space
#v(30pt, weak: true) 
== Réseaux de neurones convolutifs (CNN)
// Insert space
#v(25pt, weak: true) 

Un CNN est un type de réseau de neurones artificiels spécialement conçu pour traiter des données structurées en matrice, comme les images. Grâce à leur capacité à capturer les caractéristiques spatiales et les motifs locaux, ces réseaux sont particulièrement efficaces pour la reconnaissance d'images et les tâches de segmentation.

Pour entraîner un CNN, il faut fournir des images accompagnées d'annotations correspondant aux objets d'intérêt. Le réseau s'entraîne ensuite à reconnaître ces objets en ajustant ses neurones pour minimiser l'erreur entre ses prédictions et les annotations fournies. Durant cet apprentissage, le réseau apprend de lui-même à détecter les caractéristiques visuelles des objets.

Les processus permettant la détection sont cachés dans ses couches internes ce qui les rends difficiles à interpréter, c'est pourquoi il est nécessaire d'évaluer l'efficacité du réseau, via des métriques adaptées et des contrôles visuel appliqué sur des données externe à l'apprentissage appelés jeu de validation.

// Image
    #figure(
      image("../Image/0043.png", width:70%),
      caption: [Pour approfondir :#link("https://www.youtube.com/watch?v=IHZwWFHWa-w&t")[
  Gradient Descent, how neural network learn ?
]


#link("https://www.youtube.com/watch?v=Ilg3gGewQ5U")[
  What is backpropagation really doing ?
]  ]
    )


L'efficacité d'un CNN dépend en grande partie de son architecture. Celle-ci définit la structure et l'organisation des différentes couches qui composent le réseau, déterminant ainsi comment les données sont traitées à chaque étape, depuis l'entrée de l'image jusqu'à la production de la segmentation. En outre, l'architecture influence directement les performances du réseau et impose  une structure des données d'entraînement.

Parmi les architectures les plus reconnues dans le domaine de la segmentation, le U-Net s'est imposé comme une référence, notamment pour les images biologiques. Sa capacité à capturer à la fois les détails fins et les informations contextuelles en fait un outil particulièrement adapté à ces tâches complexes.

// Image
    #figure(
      image("../Image/0044.png", width:55%),
      caption: [Structure d'un réseau de neurone artificiel],
    )
// Insert space
#v(30pt, weak: true) 

Traditionnellement développé pour les images en couleurs, ces réseaux prennent en entrée des images 2D avec 3 canaux. Dans notre cas, nos données sont des stacks d’image  en niveaux de gris (1 canal). Il est donc possible de récupérer la dimension pour la couleur et l’attribuer à l’axe z, ce qui permet de fournir un contexte spatial supplémentaire déterminant. On appelle cela du 2,5D ou du multislice. On fournit alors au réseau plusieurs coupes adjacente pour lui donner un contexte spatial sans avoir à manipuler des matrices 3D qui sont beaucoup plus lourdes et nécessitent par extension des annotations 3D.

// Image
    #figure(
      image("../Image/0045.png", width:70%),
    )

//Saut de page
#pagebreak()

== Jeu d’entrainement
// Insert space
#v(25pt, weak: true)

Pour créer un jeu d'entraînement, il faut fournir des annotations, c'est-à-dire attribuer, à l'aide d'un outil de segmentation manuel, une classe aux pixels de l'image. Il faut au moins deux classes : une pour l'objet d'intérêt et une autre pour le fond, qui sert à délimiter les frontières de l'objet.
// Insert space
#v(15pt, weak: true)
La création du jeu de données est une étape cruciale qui repose sur deux facteurs : un nombre suffisant d'annotations et une diversité suffisante. Un manque d'annotations empêche la convergence du modèle, en revanche, un réseau ne souffrira jamais d'un excès d'annotations, il sera juste plus long à entraîner. 
// Insert space
#v(15pt, weak: true)
Si les annotations manquent de diversité, le modèle donnera des résultats imprécis sur des objets inconnus. Il n'existe pas de règle précise, d'où l'importance de bien comprendre le processus d'apprentissage des réseaux de neurones pour créer un jeu de données de qualité, maximisant ainsi les chances de succès.
// Insert space
#v(15pt, weak: true)
Attention, il est facile de se complaire dans la segmentation d'objets "faciles" ou conformes à une esthétique stéréotypée et ainsi tomber dans le piège d'une annotations biaisé qui passera à côté d'une grande partie de la diversité des objets. Par exemple, pour les gouttelettes lipidiques, il est crucial de ne pas annoter uniquement leur centre, mais aussi leurs extrémités. Même chose avec les mitochondries où il ne faut surtout pas se restreindre à annoter que les “belles mitochondries”.
// Insert space
#v(15pt, weak: true)
Un jeu de données peut toujours être enrichi après coup. On peut commencer avec un ensemble modeste, lancer un apprentissage, puis l'enrichir si nécessaire. Souvent, après l'entraînement, il faut ajouter des annotations dans le fond pour corriger des erreurs de sur-segmentation. Cependant, chaque entraînement mobilise des ressources et prend du temps, donc mieux vaut constituer un jeu de données solide dès le départ.

//Saut de page
#pagebreak()
== Entraînement
// Insert space
#v(25pt, weak: true)
=== Création d'un jeu d'entraînement 
// Insert space
#v(25pt, weak: true)
Afin de créer un jeu d'entraînement, nous avons besoin de trois ROIs:
- Une ROI contenant les objets d'intérêts segmentés
- une ROI contenant le fond
- une ROI contenant une annotation des objets d'intérêts, mais non segmentés. Cette ROI est expliquée dans la partie *Configuration du visual feedback* 

// Insert space
#v(30pt, weak: true)
==== A- Annotation des objets d'intérêts
// Insert space
#v(25pt, weak: true)
L'annotation des objets d'intérêts est expliqué en détails dans le chapitre segmentation manuelle
Dans le cas du deep learning, il ne s'agit pas de segmenter l'objet en entier pour l'entraînement, mais de quelques slices uniquement


Pour annoter les objets d'intérêts:

#tree-list[
- Créer une première ROI pour notre objet 
  - Sélectionner la ROI (clic gauche)
    - Sélectionner le pinceau rond
      - Annoter les objets (Ctrl + clic gauche) 
          ]
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0046.png", width:100%),
)   


// Insert space
#v(30pt, weak: true)
==== Annotation du fond
// Insert space
#v(25pt, weak: true)
C'est quoi le but de l'annotation du fond ? 
Pour annoter le fond:

#tree-list[
- Créer une seconde ROI pour le fond
  - Sélectionner la ROI (clic gauche)
    - Sélectionner le pinceau carré
    - Ajouter des annotations manuelles de fond par dessus les annotations d'objets.
          ]
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0047.png", width:100%),
)   


Ne pas hésiter à rajouter des annotations de fond vide. Cela permet de minimiser la sur-segmentation et donc de limiter les étapes de nettoyage. 

// Insert space
#v(30pt, weak: true)
==== C- Groupement de l'objet et du fond en une multi-ROI
// Insert space
#v(25pt, weak: true)

Pour grouper les deux ROIs créés:

#tree-list[
- Sélectionner la ROI "Background" et l'objet d'intérêt en maintenant Ctrl
  - Cliq droit afin d'afficher le menu déroulant
    - Choisir: Create Multi-ROI from ROIs
      - Renommer la multi-ROI nouvellement créé
]
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0048.png", width:100%),
)   


// Insert space
#v(30pt, weak: true)
=== Paramétrage et entraînement du modèle de deep learning

==== Création du modèle
// Insert space
#v(25pt, weak: true)
Nous allons commencer par créer le modèle à partir de l'outil: *Deep Learning Tool*

Dans le #text(weight: "bold")[menu] déroulant, sélectionnez :

#tree-list[
  - #text(weight: "bold")[Artificial Intelligence]
    - Cliquer sur : #text(weight: "bold")[Deep learning Tool]
      -  La fenêtre de Deep learning Tool s'affiche à l'écran
        - Cliquer sur #text(weight: "bold")[New] pour créer un nouveau model
          - Une nouvelle fenêtre #text(weight: "bold")[Model Generator] apparaît. 
] 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0050.png", width:50%))
  
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0051.png", width:100%))  
  //Saut de page
#pagebreak()
Dans la fenêtre *Model Generator*

#tree-list[
  - Sélectionner l'architecture #text(weight: "bold")[U-net]
    - Sélectionner la dimension #text(weight: "bold")[2.5 D]
      -  Donner un nom explicite au modèle
        - Générer le modèle
] 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0052.png", width:70%))    



Une fois le modèle est généré, la fenêtre *Deep Learning Tool* se met à jour:

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0054.png", width:100%))  

==== Configuration du jeu d'entraînement
// Insert space
#v(25pt, weak: true)
Pour commencer à configurer le modèle de deep learning:

Dans l'onglet *Training* de la fenêtre *Deep learning Tool*:

#tree-list[
  - Choisissez l'input: Ce sont les images
    - Choisissez l'output: C'est la multi-ROI qui contient nos annotations.
] 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0055.png", width:100%))  
// Insert space
#v(30pt, weak: true)
==== Configuration du visual feedback
// Insert space
#v(25pt, weak: true)

Cette étape est optionnelle mais fortement conseillée. 

Les métriques sont des chiffres abstrait qui peuvent ne pas refléter l'efficacité réel du modèle au cours de l’apprentissage. Le visual feedback lui est un retour direct sur les performance de notre réseau. 
Il est cependant impératif de sélectionner une zone exempte d’objets annotés pour être sûr d’évaluer l’efficacité sur une zone externe à l’apprentissage.

Afin de configurer le visual feedback:

#tree-list[
  - Sélectionner l'outil d'annotation rectangle
    - Créer une nouvelle région d'annotation sur des objets non annotés.
] 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0057.png", width:100%))  

Une fois que la région d'annotation est créée, revenir dans la fenêtre *Deep Learning Model*, dans l'onglet *Training*


#tree-list[
  - Se déplacer en bas de la fenêtre pour trouver l'onglet *Visual Feedback*
    - Dans la partie région, sélectionner votre ROI d'annotation. 
] 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0056.png", width:100%))  

  
// Insert space
#v(30pt, weak: true)
==== Configuration des paramètres d'entraînement
Avant de lancer l'entraînement du modèle, il est nécessaire d'ajuster plusieurs paramètres d'entraînement. Ces paramètres sont présents dans l'onglet *Training Parameters*


// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0053.png", width:100%))  


===== Patch size
Le *patch size* représente la taille en pixels des images en entrée.


Plus la valeur du patch size est élevée, plus le réseau dispose de contexte, mais plus son entraînement devient lourd. 

===== Batch size
La *batch size* représente le nombre de patchs que le réseau traite avant de se réajuster. 


Plus la valeur du batch size est faible, plus le réseau se réajuste fréquemment et améliore sa capacité de généralisation, mais plus l'entraînement est long en raison des nombreux échange de mémoire. 

===== Estimated memory ratio
L'estimated memory ratio représente le rapport entre la mémoire requise pour l'entraînement et la mémoire totale disponible en GPU. 

Cette valeur permet d'évaluer si les ressources GPU sont sous-uilisées ou surchargées. 
Elle est directement liée aux tailles de patch et de batch. Plus les valeurs de Patch et de Batch sont élevées, plus le GPU doit traiter un volume d'informations simultanément. 

L'objectif est donc de maximiser ce ratio tout en le maintenant en dessous de 0.9, afin d'éciter un crash pendant l'entraînement. 



==== Lancement et surveillance de l'entraînement
Pour lancer l'entraînement, cliquer sur *Train* en bas de la fenêtre de *Deep learning Tool* 

Une seconde fenêtre s'ouvrira, permettant de suivre l'évolution des performances en temps réel. 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0058.png", width:100%)) 

La courbe verte représente les performances sur le jeu d'entraînement, tandis que la courbe violette correspond aux performances sur le jeu de validation. 

L'évolution de l'entraînement peut être suivie visuellement grâce au retour affiché sur la droite. 

Le réseau interrompt son entraînement lorsqu'un plateau est atteint, mais il est également possible de l'arrêter manuellement à l'aide du bouton *STOP*, une fois que le résultat est satisfaisant.  Idéalement, les valeurs des courbes verte et violette doivent diminuer progressivement au fil de l'entraînement. 

*Expliquer le sous-apprentissage et le sur-apprentissage*

//Saut de page
#pagebreak()

=== Evaluation et application du modèle entraîné

==== Aperçue de la segmentation

==== Application du modèle à l'ensemble des images

=== Réentrainement à partir d'un résultat de segmentation

==== Extraction de la ROI de l'objet du résultat de la segmentation

==== Annotation du fond et correction de la ROI de l'objet

==== Intersection et groupement de l'objet et du fond en une multi-ROI

//Saut de page
#pagebreak()
== Lexique Deep learning 
// Insert space
#v(15pt, weak: true)
*Batch size: * Nombre d'échantillons traités simultanément pour calculer les gradients et mettre à jour les poids du modèle lors d'une itération d'entraînement.

*Data augmentation :* Transformation appliquées aux données d'entraînement (par ex. rotation, zoom, flip) pour augmenter leur nombre et leur diversité. C'est un processus décisif qui aide à la généralisation de notre modèle

*Estimated memory ratio :* Pourcentage de la mémoire GPU utilisée par le modèle par rapport à la mémoire totale disponible, permettant de surveiller l'utilisation des ressources.

*Epoch :* Un passage complet sur l'ensemble du jeu d'entraînement, impliquant plusieurs itérations en fonction de la taille des batches.

*Filtre initial :* Nombre de filtres dans la première couche convolutionnelle du modèle, servant de base pour extraire des caractéristiques de bas niveau des images.

*GPU (Graphics Processing Unit) :* Processeur spécialisé dans les calculs parallèles massifs, utilisé pour accélérer les opérations en deep learning, notamment le traitement de grandes matrices.

*Jeu d'entraînement :* Ensemble de données utilisé pour entraîner un modèle, en ajustant ses paramètres afin qu'il apprenne à reconnaître des motifs. Composé d'image et d'annotation de nos objets et du fond

*Jeu de validation :* Ensemble de données séparé du jeu d'entraînement, utilisé pour évaluer la performance du modèle pendant l'entraînement sans qu'il n'ait été entraîné sur ces données.

*Loss :* Fonction de coût qui mesure l'écart entre les prédictions du modèle et les valeurs attendues, utilisée pour guider l'apprentissage.

*Modèle :* Ensemble de couches de neurones artificiels configurés pour résoudre une tâche spécifique, comme la classification ou la segmentation d'images.

*Niveau de profondeur :* Nombre de couches ou d'étapes dans l'architecture du modèle, correspondant souvent à la complexité des motifs appris.

*Patch size :* Taille des sous-régions extraites d'une image pour être analysées par le modèle, exprimée en pixels

*Steps :* Nombre d'itérations d'entraînement ou de validation nécessaires pour traiter l'ensemble des données d'un batch ou d'un epoch.

*U-Net :* Architecture de réseau de neurones utilisée principalement pour la segmentation d'images, caractérisée par une structure en forme de "U" combinant étapes de contraction et d'expansion.

*Val_loss :* Perte calculée sur le jeu de validation, permettant de surveiller la performance du modèle sur des données non vues pendant l'entraînement.

*Visual feedback :* Représentation visuelle des résultats du modèle utilisée pour évaluer durant l'entraînement


== Documentation Deep learning
Il existe un grand nombre de documentation en ligne sur le deep learning. 
Voici quelque une:

#link("https://www.fidle.cnrs.fr/w3/")[FIDLE]: Formation introduction au deep learning, libre, gratuite, proposée en distanciel par le CNRS, l’Université Grenoble Alpes et le MIAI


#link("https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi")[3Blue1Brown Neural Network Course]: Série de vidéo en anglais pour apprendre les bases théoriques des réseaux de neurone et du principe de “backpropagation” l'algorithmes au coeur de l’apprentissage.


#link("https://www.youtube.com/@DigitalSreeni/featured")[DigitalSreeni youtube channel]: Chaîne youtube spécialisée dans le traitement d’image avec Python. Apprend depuis les bases théoriques de l'apprentissage profond jusqu’à l’application pratique en Python.