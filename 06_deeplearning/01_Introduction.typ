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
#v(25pt, weak: true)











== Réseaux de neurones convolutifs (CNN)
// Insert space
#v(25pt, weak: true) 

Un CNN est un type de réseau de neurones artificiels spécialement conçu pour traiter des données structurées en matrice, comme les images. Grâce à leur capacité à capturer les caractéristiques spatiales et les motifs locaux, ces réseaux sont particulièrement efficaces pour la reconnaissance d'images et les tâches de segmentation.

Pour entraîner un CNN, il faut fournir des images accompagnées d'annotations correspondant aux objets d'intérêt. Le réseau s'entraîne ensuite à reconnaître ces objets en ajustant ses neurones pour minimiser l'erreur entre ses prédictions et les annotations fournies. Durant cet apprentissage, le réseau apprend de lui-même à détecter les caractéristiques visuelles des objets.

Les processus permettant la détection sont cachés dans ses couches internes ce qui les rends difficiles à interpréter, c'est pourquoi il est nécessaire d'évaluer l'efficacité du réseau, via des métriques adaptées et des contrôles visuel appliqué sur des données externe à l'apprentissage appelés jeu de validation.
// Insert space
#v(25pt, weak: true)
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
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0044.png", width:55%),
      caption: [Structure d'un réseau de neurone artificiel],
    )
// Insert space
#v(25pt, weak: true) 

Traditionnellement développé pour les images en couleurs, ces réseaux prennent en entrée des images 2D avec 3 canaux. Dans notre cas, nos données sont des stacks d’image  en niveaux de gris (1 canal). Il est donc possible de récupérer la dimension pour la couleur et l’attribuer à l’axe z, ce qui permet de fournir un contexte spatial supplémentaire déterminant. On appelle cela du 2,5D ou du multislice. On fournit alors au réseau plusieurs coupes adjacente pour lui donner un contexte spatial sans avoir à manipuler des matrices 3D qui sont beaucoup plus lourdes et nécessitent par extension des annotations 3D.
// Insert space
#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0045.png", width:70%),
    )
// Insert space
#v(25pt, weak: true)














== Jeu d’entrainement
// Insert space
#v(25pt, weak: true)

Pour créer un jeu d'entraînement, il faut fournir des annotations, c'est-à-dire attribuer, à l'aide d'un outil de segmentation manuel, une classe aux pixels de l'image. Il faut au moins deux classes : une pour l'objet d'intérêt et une autre pour le fond, qui sert à délimiter les frontières de l'objet.
// Insert space
#v(25pt, weak: true)
La création du jeu de données est une étape cruciale qui repose sur deux facteurs : un nombre suffisant d'annotations et une diversité suffisante. Un manque d'annotations empêche la convergence du modèle, en revanche, un réseau ne souffrira jamais d'un excès d'annotations, il sera juste plus long à entraîner. 
// Insert space
#v(25pt, weak: true)
Si les annotations manquent de diversité, le modèle donnera des résultats imprécis sur des objets inconnus. Il n'existe pas de règle précise, d'où l'importance de bien comprendre le processus d'apprentissage des réseaux de neurones pour créer un jeu de données de qualité, maximisant ainsi les chances de succès.
// Insert space
#v(25pt, weak: true)
Attention, il est facile de se complaire dans la segmentation d'objets "faciles" ou conformes à une esthétique stéréotypée et ainsi tomber dans le piège d'une annotations biaisé qui passera à côté d'une grande partie de la diversité des objets. Par exemple, pour les gouttelettes lipidiques, il est crucial de ne pas annoter uniquement leur centre, mais aussi leurs extrémités. Même chose avec les mitochondries où il ne faut surtout pas se restreindre à annoter que les “belles mitochondries”.
// Insert space
#v(25pt, weak: true)
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
#v(25pt, weak: true)











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
#v(25pt, weak: true)













==== Annotation du fond
// Insert space
#v(25pt, weak: true)
L'annotation du fond comprend la segmentation des objets d'intérêts ainsi que le background situé à côté. 
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
// Insert space
#v(25pt, weak: true)
Ne pas hésiter à rajouter des annotations de fond vide. Cela permet de minimiser la sur-segmentation et donc de limiter les étapes de nettoyage. 
// Insert space
#v(25pt, weak: true)








==== C- Groupement de l'objet et du fond en une multi-ROI
// Insert space
#v(25pt, weak: true)

Pour grouper les deux ROIs créés:

#tree-list[
- Sélectionner la ROI "Background" (en premier) et la ROI de l'objet d'intérêt (en deuxième) en maintenant Ctrl
  - Clique droit afin d'afficher le menu déroulant
    - Choisir: Create Multi-ROI from ROIs
      - Renommer la multi-ROI nouvellement créé: *Training_data*
]
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0048.png", width:100%),
)   
// Insert space
#v(25pt, weak: true)







=== Paramétrage et entraînement du modèle de deep learning
// Insert space
#v(25pt, weak: true)

==== A - Création du modèle
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
Vous pouvez décocher les cases: super resolution et denoising. 

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
// Insert space
#v(25pt, weak: true)










==== B- Configuration du jeu d'entraînement
// Insert space
#v(25pt, weak: true)

Pour commencer à configurer le modèle de deep learning: cliquer sur le modèle créée, puis cliquer sur *Go to Training* 
// Insert space
#v(25pt, weak: true)

Nous avons trois onglets: 
- Inputs
- Training Parameters
- Advanced Tools
// Insert space
#v(25pt, weak: true)

Dans l'onglet *Inputs*:

#tree-list[
  - Choisissez l'input: Ce sont les images ou dataset
    - Choisissez l'output: C'est la multi-ROI qui contient nos annotations.
] 

// Insert space
#v(25pt, weak: true)


Nous pouvons ajouter un *Mask* dans le cas, ou nous voulons ne pas inclure certains slices dans l'entraînement de notre modèle.
// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0055.png", width:100%))  
// Insert space
#v(25pt, weak: true)


==== C- Augmentation des données
// Insert space
#v(25pt, weak: true)
L'augmentation des données permet d'augmenter artificiellement la taille d'un jeu de données en créant de nouvelles données à partir de celles existantes. Cette augmentation permet d'améliorer les performances d'un modèle, surtout sir le jeu de données est petit. 

Dans la section *Data augmentation settings*, nous pouvons sélectionner les différentes transformations possibles pour l'augmentation de notre jeu de données:
- le facteur d'augmentation *Augment*
- Inversion horizontale ou verticale
- Recadrage
- Changement de luminosité ou de contraste
- Ajout de bruit etc.. 
// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/117.png", width:100%))  
// Insert space
#v(25pt, weak: true)










==== D- Configuration du visual feedback
// Insert space
#v(25pt, weak: true)

Cette étape est optionnelle mais fortement conseillée. 

Les métriques sont des chiffres abstrait qui peuvent ne pas refléter l'efficacité réel du modèle au cours de l'apprentissage. Le visual feedback lui est un retour direct sur les performance de notre réseau. 
Il est cependant impératif de sélectionner une zone exempte d'objets annotés pour être sûr d'évaluer l'efficacité sur une zone externe à l'apprentissage.
// Insert space
#v(25pt, weak: true)
Afin de configurer le visual feedback:

#tree-list[
  - Sélectionner l'outil d'annotation rectangle (cet outil est dans le Menu: Main)
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
    - Dans la partie région, sélectionner votre ROI Region. 
] 
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0056.png", width:100%))  
// Insert space
#v(25pt, weak: true)











==== E- Configuration des paramètres d'entraînement
// Insert space
#v(25pt, weak: true)
Avant de lancer l'entraînement du modèle, il est nécessaire d'ajuster plusieurs paramètres d'entraînement. Ces paramètres sont présents dans l'onglet *Training Parameters*
// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0053.png", width:100%))  
// Insert space
#v(25pt, weak: true)
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
// Insert space
#v(25pt, weak: true)


==== F - Lancement et surveillance de l'entraînement
// Insert space
#v(25pt, weak: true)
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


Une fois l'entraînement est terminé, nous pouvons fermet la fênetre d'entraînement. Le réseau est sauvegardé automatiquement. 
// Insert space
#v(25pt, weak: true)








=== Evaluation et application du modèle entraîné
// Insert space
#v(25pt, weak: true)
==== A- Aperçue de la segmentation
// Insert space
#v(25pt, weak: true)
Avant d'appliquer le modèle sur l'ensemble des images, il est nécessaire de contrôler la qualité avec des preview?

Une preview consiste à appliquer le modèle uniquement sur la vue de l'image en cours. Cela permet de limiter la zone de travail et donc de limier le temps de calcul. 

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/112.png", width:100%))  
// Insert space
#v(25pt, weak: true)

Si le modèle commence à trouver une segmentation, mais il reste encore trop imprécis pour utiliser les prédictions, il faut continuer à entraîner le réseau de neurone. 

Souvent, il faut également ajouter de nouvelle annotaton pour aider le réseau à corriger ses erreurs. 
// Insert space
#v(25pt, weak: true)


==== B- Application du modèle à l'ensemble des images
// Insert space
#v(25pt, weak: true)
En fonction de la taille de l'image, l'application du modèle peut prendre du temps, immobilisant le logiciel Dragonfly. 

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/113.png", width:100%))  
// Insert space
#v(25pt, weak: true)

L'application du modèle à l'ensemble des images, permet de générer une multi-ROI contenant le nombre de classes indiqués dans l'entraînement. 
// Insert space
#v(25pt, weak: true)






=== Ré-entrainement à partir d'un résultat de segmentation
// Insert space
#v(25pt, weak: true)

Dans le cas ou la segmentation générée ne correspond pas aux résultats attendus, nous pouvons réentraîner le modèle de deep learning. Pour cela il faut corriger la segmentation généré. 
// Insert space
#v(25pt, weak: true)
Exemple :

Dans le cas de segmentation de mitochondries:
- si le réseau a segmenté autre chose que les mitochondries, nous pouvons les supprimer
- si le réseau a segmenté des mitochondries, mais pas entièrement, nous pouvons compléter la segmentatin. 
// Insert space
#v(25pt, weak: true)

Pour appliquer ces corrections, nous pouvons suivre les trois prochaines parties:
// Insert space
#v(25pt, weak: true)








==== A- Extraction de la ROI de l'objet du résultat de la segmentation
// Insert space
#v(25pt, weak: true)
La multi-ROI généré par l'entraînement contient deux classes:
- le Background
- l'objet d'intérêt (mitochondries par exemple)
// Insert space
#v(25pt, weak: true)
Nous allons extraire la ROI d'objet d'intérêt de la multi-ROI. Pour cela,

#tree-list[
  - Sélectionner la multi-ROI *Segmentation*
    - Sélectionner la sous-classe ROI d'intérêt.
      - Cliquer droit sur cette classe
        - Chosir *Extract class as an ROI*. ] 

Une nouvelle ROI apparaît. Nous allons travailler avec cette ROI. 

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/114.png", width:100%))  
// Insert space
#v(25pt, weak: true)
// Insert space
#v(25pt, weak: true)






==== B- Annotation du fond et correction de la ROI de l'objet
// Insert space
#v(25pt, weak: true)

Dans un premier temps, il faut corriger la ROI:
- Supprimer les régions ségmentés qui ne correspond pas à votre ojets d'intérêts.
- Segmenter avec le pinceau les régions non segmentées par le réseaux de neurones. 

Ensuite, nous pouvons créer une nouvelle ROI Backgroud pour annoter le fond.
- Ajouter des annotations manuelles de fond par dessus les annotations des objets
// Insert space
#v(25pt, weak: true)

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/115.png", width:100%))  
// Insert space
#v(25pt, weak: true)





==== C- Intersection et groupement de l'objet et du fond en une multi-ROI
// Insert space
#v(25pt, weak: true)
Créer une multi-ROI à partir des deux ROIs (background + ROI objet corrigés)
- Vous pouvez suivre la même procédure que dans le section * C- Groupement de l'objet et du fond en une multi-ROI*
// Insert space
#v(25pt, weak: true)

Une fois que vous avez terminé les corrections, vous pouvez reprendre la section deep learning et refaire la même procédure d'apprentissage. 
Ce processus peut être répétée plusieurs fois jusqu'à ce que votre segmentation prédite correspond à vos attentes. 
// Insert space
#v(25pt, weak: true)

// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/116.png", width:100%))  
// Insert space
#v(25pt, weak: true)

*Attention au surapprentissage et au sous-apprentissage. *

//Saut de page
#pagebreak()
== Lexique Deep learning 
// Insert space
#v(25pt, weak: true)
*Batch size: * Nombre d'échantillons traités simultanément pour calculer les gradients et mettre à jour les poids du modèle lors d'une itération d'entraînement.
// Insert space
#v(15pt, weak: true)
*Data augmentation :* Transformation appliquées aux données d'entraînement (par ex. rotation, zoom, flip) pour augmenter leur nombre et leur diversité. C'est un processus décisif qui aide à la généralisation de notre modèle
// Insert space
#v(15pt, weak: true)
*Estimated memory ratio :* Pourcentage de la mémoire GPU utilisée par le modèle par rapport à la mémoire totale disponible, permettant de surveiller l'utilisation des ressources.
// Insert space
#v(15pt, weak: true)
*Epoch :* Un passage complet sur l'ensemble du jeu d'entraînement, impliquant plusieurs itérations en fonction de la taille des batches.
// Insert space
#v(15pt, weak: true)
*Filtre initial :* Nombre de filtres dans la première couche convolutionnelle du modèle, servant de base pour extraire des caractéristiques de bas niveau des images.
// Insert space
#v(15pt, weak: true)
*GPU (Graphics Processing Unit) :* Processeur spécialisé dans les calculs parallèles massifs, utilisé pour accélérer les opérations en deep learning, notamment le traitement de grandes matrices.
// Insert space
#v(15pt, weak: true)
*Jeu d'entraînement :* Ensemble de données utilisé pour entraîner un modèle, en ajustant ses paramètres afin qu'il apprenne à reconnaître des motifs. Composé d'image et d'annotation de nos objets et du fond
// Insert space
#v(15pt, weak: true)
*Jeu de validation :* Ensemble de données séparé du jeu d'entraînement, utilisé pour évaluer la performance du modèle pendant l'entraînement sans qu'il n'ait été entraîné sur ces données.
// Insert space
#v(15pt, weak: true)
*Loss :* Fonction de coût qui mesure l'écart entre les prédictions du modèle et les valeurs attendues, utilisée pour guider l'apprentissage.
// Insert space
#v(15pt, weak: true)
*Modèle :* Ensemble de couches de neurones artificiels configurés pour résoudre une tâche spécifique, comme la classification ou la segmentation d'images.
// Insert space
#v(15pt, weak: true)
*Niveau de profondeur :* Nombre de couches ou d'étapes dans l'architecture du modèle, correspondant souvent à la complexité des motifs appris.
// Insert space
#v(15pt, weak: true)
*Patch size :* Taille des sous-régions extraites d'une image pour être analysées par le modèle, exprimée en pixels
// Insert space
#v(15pt, weak: true)
*Steps :* Nombre d'itérations d'entraînement ou de validation nécessaires pour traiter l'ensemble des données d'un batch ou d'un epoch.
// Insert space
#v(15pt, weak: true)
*U-Net :* Architecture de réseau de neurones utilisée principalement pour la segmentation d'images, caractérisée par une structure en forme de "U" combinant étapes de contraction et d'expansion.
// Insert space
#v(15pt, weak: true)
*Val_loss :* Perte calculée sur le jeu de validation, permettant de surveiller la performance du modèle sur des données non vues pendant l'entraînement.
// Insert space
#v(15pt, weak: true)
*Visual feedback :* Représentation visuelle des résultats du modèle utilisée pour évaluer durant l'entraînement

//Saut de page
#pagebreak()
== Documentation Deep learning
// Insert space
#v(25pt, weak: true)
Il existe un grand nombre de documentation en ligne sur le deep learning. 
// Insert space
#v(15pt, weak: true)
Voici quelque une:

#link("https://www.fidle.cnrs.fr/w3/")[FIDLE]: Formation introduction au deep learning, libre, gratuite, proposée en distanciel par le CNRS, l’Université Grenoble Alpes et le MIAI
// Insert space
#v(15pt, weak: true)

#link("https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi")[3Blue1Brown Neural Network Course]: Série de vidéo en anglais pour apprendre les bases théoriques des réseaux de neurone et du principe de “backpropagation” l'algorithmes au coeur de l’apprentissage.
// Insert space
#v(15pt, weak: true)

#link("https://www.youtube.com/@DigitalSreeni/featured")[DigitalSreeni youtube channel]: Chaîne youtube spécialisée dans le traitement d’image avec Python. Apprend depuis les bases théoriques de l'apprentissage profond jusqu’à l’application pratique en Python.