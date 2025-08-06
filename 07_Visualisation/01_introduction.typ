#set page("a4")
#import "@preview/treet:0.1.1": *
#set text(lang: "fr")

= Visualisation et modélisation 3D
// Insert space
#v(25pt, weak: true)
Dans cette section, nous expliquerons comment construire un modèle 3D en utilisant soit les niveaux de gris issus de l'acquisition, soit une segmentation.

// Insert space
#v(25pt, weak: true)

== Modification des propriétés de la scène
// Insert space
#v(25pt, weak: true)
Dans un premier temps, il est possible d'ajuster les caractéristiques de la scène 3D dans la rubrique *Scene'sviews and properties*. Pour cela il existe trois principaux paramètres
// Insert space
#v(15pt, weak: true)
- *Background : *Modification du fond de l'écran
- *Lighning : *Eclairage de la scène
- *Focus : *Mise au point 

#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0095.png", width:70%),
      caption: [Propriétés de la scène])
// Insert space
#v(25pt, weak: true)






=== Modification de la couleur de fond

// Insert space
#v(25pt, weak: true)

Il est possible de modifier la couleur de fond, qui restera invariable au cours des animations. Cette modification s'effectue dans le sous-menu *3D Views Background color*, accessible depuis le *Scene's Views and Properties*. 

#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0123.png", width:40%),
      caption: [Couleur de fond])
// Insert space
#v(25pt, weak: true)


Trois modes de couleur de fond sont possibles:
- Le mode *Uniforme* pour un fond uni. Ce mode est sélectionné par défaut.
- Le mode *Gradient Linéaire*, qui permet de choisir la direction du dégradé.
- Le mode *Gradient Radial*, pour un effet de dégradé circulaire. 

Nous pouvons également chosir la couleur du fond (noir, blanc, gris etc..)

#v(25pt, weak: true)
// Image
    #figure(
      image("../Image/0147.png", width:100%),
      caption: [Couleur de fond])
// Insert space
#v(25pt, weak: true)




=== Eclairage de la scène
// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0097.png", width:62%),
  caption: [Option d'éclairage])
// Insert space
#v(25pt, weak: true)

Les options d'éclairage présentées ci-dessous permettent de modificier la direction et l'intensité de la lumière sur les objets au vue 3D.
// Insert space
#v(25pt, weak: true)

1. *Modification de la direction de l'éclairage :* Cette option est possible en déplaçant la source lumineuse directement sur la sphère grise. 
2. *Choix du nombre d'éclairage :* Il est possible d'activer 1, 2 ou 3 sources d'éclairage. Pour les sélectionner, cliquez sur *Light1*, *Light2*, etc..
3. *Mofidication de l'éclairage des objets en 3D:* La case *Use lighting* permet d'activer l'éclairage sur l'objet 3D sélectionné.
4. Modification des ombres: La case *Use shadows* permet d'afficher les ombres de l'objet 3D sélectionné.
5. *Réglage de l'intensité de l'éclairage et des ombres :* Ces paramètres permettent d'affiner le rendu visuel:
   - Light Intensity: INtensité de la lumière
   - Shadows Strength: Intensité des ombres
   - Shadow opacity: Opacité des ombres
  
// Insert space
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0144.png", width:100%),
  caption: [Eclairage de l'objet en 3D et ombres])
// Insert space
#v(25pt, weak: true)



=== Mise au point "*Focus*"
// Insert space
#v(25pt, weak: true)
Les propriétés de mise au point permettent de faire ressortir clairement les objets d'intérêt ou, au contraire, de flouter certains éléments de l'image afin de mieux guider l'attention de l'observateur. 
// Image
#figure(
  image("../Image/0125.png", width:50%),
  caption: [Modification du focus])
// Insert space
#v(25pt, weak: true)

*Exemple de modification de focus*
// Image
#figure(
  image("../Image/0145.png", width:100%),
  caption: [Modification du focus: L’activation du focus, dans ce cas, a permis de flouter les bords de la structure tout en conservant les détails au centre. ])
// Insert space
#v(25pt, weak: true)



=== Faire une capture d'écran
// Insert space
#v(25pt, weak: true)
Pour capturer une image de la vue 3D, nous avons deux options:
// Insert space
#v(25pt, weak: true)
=======
Pour capturer une image de la vue 3D, deux options sont disponibles :

- Utiliser l'option *Export Screenshot* dans le menu *Scene's views and properties*

  // Image
#figure(
  image("../Image/0124.png", width:50%),
  caption: [Capture d'écran])
enregistrement .tif, .png, .jpeg, .bitmap 
  // Insert space
#v(25pt, weak: true)
- Effectuer un clic droit sur la vue 3D et sélectionner *Export Screenshot of View*. Cette fonction fonctionne aussi pour les vues en 2D. 
// Image
#figure(
  image("../Image/0100.png", width:45%),
  caption: [Capture d'écran])

Nous pouvons enregistrer la capture d'écran sous plusieurs formats:
- .tif
- .png
- .jpeg
- .bitmap




#pagebreak()
== Sol virtuel
#v(25pt, weak: true)
Nous pouvons intégrer une surface réfléchissante pour enrichir l'aspect visuel de notre modélisation 3D. Cette modification s'applique au rendu 3D, aux ROI et au maillage polygonal. 

Le menu *Sol virtuel* se trouve dans la section *Main*

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0122.png", width:30%),
  caption: [Menu Sol Virtuel (Virtual Floor)])
#v(25pt, weak: true)

Les réglages suivants peuvent être ajustés :
#v(10pt, weak: true)
- *Reflective Surface :* Intensité de la réflexion
- *Color :* Couleur de la surface réfléchissante
- *Distance :* Espacement entre la surface et l'objet 3D
- *Position :* Position de la surface selon un axe de l'objet
- *Tilt :* Inclinaison de la surface sur l'axe concerné

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0146.png", width:100%),
  caption: [Menu Sol Virtuel (Virtual Floor)])


#v(25pt, weak: true)




== Génération d'un rendu 3D
#v(25pt, weak: true)
Il est possible d'obtenir un modèle 3D à partir de la pile d'images en sélectionnant l'icône 3D dans le menu "Data Properties and Settings"
#v(25pt, weak: true)

// Image
#figure(
  image("../Image/0149.png", width:30%),
  caption: [Menu Sol Virtuel (Virtual Floor)])
#v(25pt, weak: true)


Lorsque le modèle 3D est généré, un histogramme s'affiche dans le menu *Window Leveling* pour permettre le réglage de l'affichage des voxels. 

Cet histogramme permet de modifier l'affichage des voxels. Le nombre de voxels par valeur est représentée sur l'histogramme. 
 

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0148.png", width:100%),
  caption: [Histogramme du modèle en 3D])

#v(25pt, weak: true)

Pour modifier l'affichage des voxels, nous pouvons
- Déplacer les barres jaunes. Le déplacement vers le centre de l'histogramme permet d'exclure les voxels alors que le déplacement des barres vers les extrémités permet d'inclure les voxels. 
- Modifier la courbe entre les barres jaunes, afin d'avoir l'affichage de tous les voxels en dessous de la courbe. 
#v(25pt, weak: true)


=== Le mappage des couleurs
#v(25pt, weak: true)
Par défaut, Dragonfly affiche l'image en niveaux de gris (0 = noir, valeurs max = blanc). Le *color mapping* permet de convertir ces valeurs en couleurs en appliquant une palette ou *colormap*. Cela facilite la visualisation et la différenciation de structures présentant des intensités proches. 

Il existe deux stratégies principales de color mapping:
1. *Map to full data range :* La palette est appliquées à l'échelle complète des valeurs du jeu de données. 
2. *Map to Selected window :* La palette est appliquée uniquement aux valeurs comprises dans la fenêtre sélectionnée. Cette option permet d'améliorer le contraste local dans la plage d'intensité définie. 

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0129.png", width:40%),
  caption: [Rendu 3D])

#v(25pt, weak: true)

*Exemples de modifications*

#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0127.png", width:100%),
  caption: [Rendu 3D avec le mappage des couleurs])
#v(25pt, weak: true)


=== Modification de l'opacité
#v(25pt, weak: true)
L'opacity mapping ou cartographie d'opacité en français, est une technique utilisé en visualisation volumique permettant de contrôler la transparence ou l'opacité des différentes intensités dans un volume 3D. 

Dans Dragonfly, nous pouvons modifier l'opacité et la transparence avec le menu "Opcaity Mapping" suivant: 
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0130.png", width:50%),
  caption: [Rendu 3D])
#v(25pt, weak: true)

Il existe plusieurs paramètres permettant de modifier l'opacité et la transparence d'un jeu de données, que ce soit en 2D ou en 3D. 

Certains outils sont spécifiques àl'affichage en 2D, tandis que d'autres sont réservés à l'affichage en 3D. 
#v(25pt, weak: true)


==== L'opacity Slider ou opacité globale 
#v(25pt, weak: true)
Ce slider permet de régler la transparence globale du dataset sélectionné. Une valeur basse donne un dataset plus transparent et une valeur haute donne un dataset plus opaque. 
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0128.png", width:100%),
  caption: [Rendu 3D])
#v(25pt, weak: true)


==== Le paramètre Gamma
#v(25pt, weak: true)
La valeur gamma ajuste la relation non linéaire entre les valeurs d'intensité d'entrée et leur luminence affichée. En pratique:
- *Gamma = 1.0 :* Aucun changement, relation linéaire entre intensité et luminosité. 
- *Gamma > 1.0 :* Rend les zones sombres plus claires, tout en laissant les zones très lumineuses quasiment inchangées. 
- *Gamma < 1.0 :* Accentue les tons sombres et assombrit l'image globale.  
#v(25pt, weak: true)

==== Les modes d'opacity mapping en 3D
#v(25pt, weak: true)
Il existe six modes d'opacity mapping en 3D 
// Image
#figure(
  image("../Image/0150.png", width:100%),
  caption: [Les modes d'opacity mapping en 3D])
#v(25pt, weak: true)
1. *Left-Gated ramp :* Le mode Left-Gated Ramp définit l'opacité des vvvvvvoxels en fonction d'un seuil inférieur unique.
   - Les valeurs situées en dessous du seuil inférieur sont totalement transparentes (opacité = 0)
   - Aucune limite supérieure n'est appliquée: toutes les valeurs supérieures à ce seuil sont affectées.
   - A l'intérieur de la plage active: l'opacité est appliquée selon une rampe linéaire, dont la pente peut être ajustée à l'aide du paramètre gamma. 



2. *Bi-Gated ramp :* Ce mode définit l'opacité des pixels selon leur intensité, en fonction de deux seuils (lower threshold et upper threshold) qui délimitent une plage (la fenêtre) :
    - Les valeurs à gauche du seuil inférieur (lower threshold) ont leur opacité fixée à 0 → ces pixels sont totalement transparents (invisibles).
    - Les valeurs à droite du seuil supérieur (upper threshold) ont leur opacité fixée à la valeur maximale d'opacité possible dans la fenêtre. Ces pixels sont donc complètement opaques 
    - Les valeurs entre les deux seuils (dans la fenêtre) ont leur opacité qui varie linéairement entre 0 et la valeur maximale. Cette transition progressive s’appelle une rampe linéaire d’opacité.


3. *Bandpass ramp :* Ce mode applique une opacité progressive uniquement aux valeurs situées entre un seuil inférieur et un seuil supérieur.
   - Les valeurs inférieures au seuil inférieur → totalement transparentes.
   - Les valeurs supérieures au seuil supérieur → totalement transparentes.
   - Les valeurs dans la fenêtre → opacité définie par une rampe linéaire, ajustable via le paramètre gamma.

4. *Bandpass Gaussien :* Ce mode applique une opacité progressive aux valeurs comprises entre un seuil inférieur et un seuil supérieur, selon une distribution gaussienne :
  - Les valeurs en dehors de la fenêtre (inférieures ou supérieures aux seuils) → totalement transparentes.
  - Les valeurs au centre de la fenêtre → opacité maximale.
  - Les valeurs proches des seuils → opacité décroissante de façon douce (courbe en cloche).

5. *Bandpass constant :*  Ce mode rend visibles uniquement les valeurs comprises entre un seuil inférieur et un seuil supérieur, en leur appliquant une opacité constante :
  - Valeurs hors de la fenêtre → totalement transparentes (opacité = 0).
  - Valeurs dans la fenêtre → opacité uniforme (50% par défaut).

6. *Piecewise :* Le mode Piecewise offre un contrôle manuel et personnalisé de l’opacité à l’intérieur et à l’extérieur de la fenêtre, en utilisant des points de contrôle (Alpha Control Points) permettant de définir une courbe d’opacité sur mesure.
  - Dans la fenêtre active : L’opacité des valeurs est définie par les points de contrôle Alpha, qui permettent de dessiner une courbe personnalisée.
  - EN dehors de la fenêtre: À gauche du seuil inférieur, l'opacité est dfinie par la valeur du premier point de contrôle. A droite du seuil supérieur, l'opacité est définie par la valeur du dernier point de contrôle (le plus à droite).

7. *Gain and bias :* Le mode Gain and Bias est conçu pour ajuster l’opacité des valeurs dans la fenêtre en modifiant la forme globale de la courbe d’opacité à l’aide de deux paramètres : Gain (gain) et Bias (biais). Contrairement aux autres modes, il ne se limite pas à une rampe ou à une courbe fixe, mais permet de déplacer et d’étirer la réponse d’opacité dans la fenêtre active.
  - Fenêtre active (entre les seuils) : Les valeurs d’intensité sont mappées à l’opacité selon une courbe ajustée par :
    - Gain → contrôle la pente de la courbe, permettant d’augmenter ou réduire le contraste d’opacité.
    - Bias → contrôle le décalage de la courbe, influençant la répartition de l’opacité vers les valeurs basses ou hautes.

  - En dehors de la fenêtre : l'opacité est de 0 (transparente)

#v(25pt, weak: true)
Il est possible de modifier la forme de la courbe ou le type de zone (aire) sous la courbe afin d'obtenir des effets de transparence spécifiques dans le rendu 3D.
#v(25pt, weak: true)






=== Look-up table (LUT)
#v(25pt, weak: true)
Le LUT editor est un outil qui permet de contrôler la façon dont les intensités de voxels sont traduites en couleurs et en opacité pour l'affichage 2D et 3D des données. 

#v(25pt, weak: true)
Si vous souhaitez utiliser les LUT, vous pouvez avoir toutes les informations via le lien suivant:  votre propre LUT : https://www.theobjects.com/dragonfly/dfhelp/2022-2/Content/Visualizing%20Images/Using%20the%20LUT%20Editor.htm 
#v(25pt, weak: true)







// Saut de page
#pagebreak()

== Modifier les propriétés de la séquence d'images
// Insert space
#v(25pt, weak: true)

Nous pouvons modifier plusieurs propriétés liées à la séquence d'images. Ces réglages permettent d'ajuster finement l'affichage du rendu 3D et/ou de découper le volume affiché à l'aide de l'outil de clipping situé à droite.

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0138.png", width:50%),
  caption: [Menu des Propriétés 3D])
#v(25pt, weak: true)
 

=== Les différents paramètres 

====  1 - Paramètre Solidity
// Insert space
#v(25pt, weak: true)
Le paramètre *Solidity* définit l'opacité perçue des voxels selon un rendu non linéaire: cela crée un effet plus dense que la simple opacité. 

Le paramètre "Solidity" est par défaut au centre.

*Solidity faible (valeur basse):*
- Les voxels sont plus transparents, même s'ils ont une intensité élevée. 
- L'image paraît plus diffuse. 
- Les structures internes peuvent être plus visibles, mais le rendu est souvent moins contrasté. 

*Solidity élevée (valeur haute) :*
- Les voxels apparaissent plus denses et plus opaques, même avec peu d'intensité.
- Risque de masquer les détails internes. 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0134.png", width:100%),
  caption: [Paramètre Solidity ])
// Insert space
#v(25pt, weak: true)


==== 2 - Paramètre Diffuse
// Insert space
#v(25pt, weak: true)
Le paramètre *Diffuse* contrôle la lumière diffuse réfléchie par les surfaces. AUgmenter la valeur améliore la définition visuelle des structures. 

Le paramètre *Diffuse* est par défaut au centre. 
* Valeur Diffuse faible :*
- Les surfaces sont difficiles à distinguer.
- Les détails de forme et de relief sont moins visibles. 
* Valeur Diffuse élevée :*
- La lumière se diffuse fortement sur les surfaces. 
- Les reliefs deviennent plus visibles. Cela donne un rendu plus contrasté. 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0135.png", width:100%),
  caption: [Paramètre Diffuse ])
// Insert space
#v(25pt, weak: true)



==== 3 - Paramètre Specular
// Insert space
#v(25pt, weak: true)

Le paramètre *Specular* contrôle la quantité de lumière réfléchie de manière spéculaire (c'est-à-dire en reflets brillants, comme un miroir ou un éclat de lumière sur une surface polie).

Le paramètre *Specular* est par défaut au centre.
* Valeur Specular faible :*
- La surface paraît matte, sans éclats.
- Pas de réfléchissant.
- L'objet est moins brillant.

*Valeur Specular élevée :*
- La surface montre les reflets brillants.
- Le rendu donne l'impression que la surface est lisse ou polie. 

// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0136.png", width:100%),
  caption: [Paramètre Specular ])
// Insert space
#v(25pt, weak: true)



==== 4 - Paramètre Shininess
// Insert space
#v(25pt, weak: true)
Le paramètre *SHininess* contrôle la taille et la netteté des reflets du paramètres *Specular*. 

Le paramètre *Specular* est par défaut au centre.

*Shininess faible :*
- Les reflets sont larges et diffuse.
- La lumière est étalée sur une grande surface. 

*Shininess élevée*
- Les reflets sont concentrés. 
- La lumière réfléchie forme des points brillants très précis.
- La surface semble très lisse et brillante. 


// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0137.png", width:100%),
  caption: [Paramètre Shininess])
// Insert space
#v(25pt, weak: true)





==== 5 - Paramètre Tone mapping
// Insert space
#v(25pt, weak: true)
Le paramètre *Tone mapping* est une technique utilisée pour adapter la plage dynamique d'une image à l'écran. Cela permet d'appliquer une réechelle tonale dynamique pour préserver les détails dans des images à large plage dynamique. 
IL existe deux possibilités:
- *Tone mapping désactivé : *
  - L'image conserve sa plage dynamique naturelle.
  - Les zones très sombres peuvent apparaître complètement noire et les zones très claires complètement blanches. 
  - Le contraste peut sembler trop fort, avec des détails cachés dans les extrêmes. 
- *Tone mapping activé :*
  - Les détails dans les zones sombres et claires sont mieux conservés. 
  - Le rendu paraît plus équilibré, avec un contraste amélioré. 


// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0139.png", width:100%),
  caption: [Paramètre Tone mapping])
// Insert space
#v(25pt, weak: true)



==== 6 - Paramètre Unsharp
// Insert space
#v(25pt, weak: true)
Le paramètre Unsharp permet d'améliorer la netteté visuelle d'une image ou d'un volume en renforçant le contraste des contours et des détails fins. C'est une technique de réhaussement des hautes fréquences. 

- *Unsharp désactivé :*
  - L'image ou le volume sont visibles uniquement selon le contraste d'origine.
- *Unsharp activé :*
  - Augmente le contraste local le long des contours.
  - Rend les bords plus nets et mieux définis.
  - Accentue les détails fins et structures à hautes fréquences. 


// Insert space
#v(25pt, weak: true)
// Image
#figure(
  image("../Image/0140.png", width:100%),
  caption: [Paramètre Unsharp ])
// Insert space
#v(25pt, weak: true)


==== 7 - Paramètre Specular boost 
// Insert space
#v(25pt, weak: true)
Le paramètre *Specular boost* agit comme un amplificateur d'effet spéculaire dans l'éclairage 3D.

- * Paramètre Specular boost activé :*
  - Permet d'accentuer les reflets et faire ressortir les bords ou faces polies dans un volume.
- * Paramètre Specular boost désactivé :*
  - Permet d'avoir un rendu plus mat et réaliste, ou lorsqu'un effet brillant excessif n'est pas souhaité. 
// Image
#figure(
  image("../Image/0141.png", width:100%),
  caption: [Paramètre Specular boost])
// Insert space
#v(25pt, weak: true)




==== 8 - Paramètre Filtered gradient
// Insert space
#v(25pt, weak: true)
Le paramètre *Filtered gradient* agit comme un filtre anti-bruit. IL améliore la lisibilité des ombrages en supprimant les petites fluctuations dans le gradient. 
- Si le paramètre est activé, les petits changements de direction du gradient sont réduit et l'éclairage est plus stable. 
- SI le paramètre est désactivé, l'éclairage est plus précis, mais aussi plus bruité. 

Paramètre Filtered gradient activé (droite) et non activée (gauche). Il s’applique sur la lumière appliquée au rendu 3D
// Image
#figure(
  image("../Image/0142.png", width:100%),
  caption: [Paramètre Specular boost])
// Insert space
#v(25pt, weak: true)



==== 9 - High quality
// Insert space
#v(25pt, weak: true)
Le paramètre High quality de Dragonfly permet d'améliorer le rendu visuel 3D en utilisant plus de ressources GPU, pour produire une image plus précise et plus lisse. 
// Insert space
#v(25pt, weak: true)


==== 10 - Median
// Insert space
#v(25pt, weak: true)
Le paramètre médian si activé applique un filtre median directement à l'affichage du volume ou de l'image afin d'atténuer le bruit tout en préservant les contours des objets. 
// Insert space
#v(25pt, weak: true)



==== 11 - Edge contrast
// Insert space
#v(25pt, weak: true)
Le paramètre *Edge COntrast* permet d'accentuer visuellement les contours dans le volume 3D en utilisant les informations de gradient. 
- Si le paramètre est activé, les contours sont mis en avant et apparaîssent plus brillants. 
- Si le paramètre est désactivé, l'image est affichée selon les valeurs d'intensité d'origine. Les surfaces peuvent être moins nettes, surtout si le contraste naturel est faible. 



*Tous ces paramètres peuvent être combinés ensemble pour obtenir le rendu 3D souhaité à partir de la pile d’images.*
