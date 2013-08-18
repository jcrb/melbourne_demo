% Créer un projet avec ProjectTemplate et Github
% par <Jeanclaude.Bartier@gmail.com>
% RESURAL

Ce document est placé dans le répertoire **doc** du projet.

# Initialisation

- Dans RStdio installer projectTemplate
- puis l'activer: library("projectTemplate")
- créer le dossier **melbourne_demo** via l'instruction *create.project("melbourne_project")*. Le dossier est créé dans le répertoire courant (getwd()) avec tous les sous dossier du projet. Rajouter un autre *path* si nécessaire.
- Il faut maintenant associer à se dossier un **projet RStudio**, un gestionaire de version **git** et lier ce dernier à **gitHub**.

Création d'un RStudio Project
-----------------------------
- dans le menu *project* sélectionner *create_project* puis *existing directory*.
- avec le sélecteur (browse) sélectionner le dossier *melbourne_demo* et valider.
- un nouveau projet est créé.

Création d'un dépot git
-----------------------
- dans le menu *project* sélectionner *create_project* puis *version control* et enfin *git*.
- un dossier caché *.git* est créé dans le dosier *melbourne_demo*.

Création d'un lien avec gitHub
------------------------------
Ouvrir gitHub
- create a new directory: lui donner le même nom que le dossier déjà créé (ie melbourne_demo)
- une nouvelle page apparait; en bas de la page, se rendre à la rubrique **push an existing directory**
- copier les deux instructions qui y figurent:
  - git remote add origin https://github.com/jcrb/melbourne_demo.git
  - git push -u origin master
- ouvrir une console et se placer ans le répertoire caché (ctrl+h) ;git: cd melbourne_demo/.git
- y coller les 2 instruction et valider. Le dossier est transféré dans gitHub.

Finitions
---------
- dans la sous-fenêtre en bas et à droite, sélectionner l'onglet *files* et le premier fichier de la liste *.gitignore*. Il contient la liste des dossiers ou fichiers que l'on ne souhaite pas transférer à github à chaque *commit*. On y trouve par défaut *Rproj.user*, *Rhistory* et *Rdata*.
- on y rajoute (manuellement) *data*, *logs* et *cache*.
- on peut maintenant faire un premier *commit*.

Connvertir ce document en *PDF*
-------------------------------
Il est possible de convertir ce document en **.pdf** à l'aide de **pandoc**:

1. si nécessaire installer le programme de conversion *pandoc* via synaptic ou sudo apt-get install pandoc.
2. exécuter ce fichier via knit HTML qui produit les fichiers *.Rmd*, *.md* et *.html* correspondant. Pandoc sait convertir les fichiers *.md* en d'autres formats dont *.pdf*
3. file<-"creer_projecttemplate"
4. system(paste("pandoc -o ", file, ".pdf ", file, ".md", sep=""))

On peut automatiser complètement la tache sous forme d'un script *R*:

**rmd2pdf.R**
~~~~~~~ { .python .numberLines startFrom="10" }

## Convert Rmd into pdf

## Set working directory
setwd("/media/woobe/SUPPORT/Repo/blenditbayes/2013-08-easy-documentation")

## Define filename
FILE <- "report"

## Convert .Rmd into .md
library(knitr)
knit2html(paste(FILE, ".Rmd", sep=""))

## Convert .md into .pdf
system(paste("pandoc -o ", FILE, ".pdf ", FILE, ".md", sep=""))
~~~~~~~  

essai de <u>souligné</u> et du `code`  

#### Titre numéroté et avec Id {#premTitre}

#### Titre _stylé_ non numéroté {style="background: #ddf;" -}

Lien vers le [premier](#premTitre) de ces 2 titres

Une ~~portion de texte~~ barrée ! \
2^10^ vaut 1024 \
La molécule de l'eau est H~2~O

$a \cdot x^2 + b \cdot x + c = 0 \quad \Longrightarrow \quad
x = \frac {-b \pm \sqrt{b^2 - 4ac}}{2a}$

~~~~~~~ { .python .numberLines startFrom="10" }
#!/usr/bin/env python3
from time import localtime
heure = localtime().tm_hour
if heure < 17:
    print("Bonjour !")
else:
    print("Bonsoir !")
~~~~~~~  

Références
==========
Création et conversion de documents avec Pandoc
Jean-Daniel.Bonjour
http://enacit1.epfl.ch/markdown-pandoc/article-fi-juillet-2013.html


