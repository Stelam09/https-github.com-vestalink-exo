# Objectif
Cloner ce repo dans son compte github
Créer une application Ruby on Rails permettant de visualiser les données contenues dans le dossier data.
Les données représentent un parc immobilier, le fichier data contient :
- le fichier `sites.csv` contenant les immeubles
- le fichier `parts.csv` contenant les lots associés aux immeubles. Un lots représente un partie d'un immeuble, 
  c'est souvent un appartement, une cave ou une place de parking

## le fichier sites.csv
```
reference_site,nom,address_line1,zipcode,city
A001,LE MAJESTIC,19 rue des Poissonniers, 75018,Paris
```
- La première colonne représente la référence de l'immeuble. C'est un identifiant textuel pour représenter l'immeuble
- Le nom de l'immeuble permet à l'utilisateur de nommer ses immeubles pour s'y retrouver
- les 3 dernières colonnes représentent l'adresse de l'immeuble (addresse, code postal, ville)

## le fichier parts.csv
```
reference_part,reference_site,part_type_designation
P001,A001,Appartement
```
- La première colonne représente la référence du lot
- La deuxième colonne représente la référence de l'immeuble sur lequel est rattaché le lot
- La troisième colonne représente le type de lot (parking, cave ou immeuble)

# Résultats attendus
- Avoir deux modèles : Site (immeuble), et Part (lot) avec les bonnes relations
- Importer les données des fichiers csv à l'aide d'une rake task
- Pouvoir lister (#index), voir (#show) et éditer (#edit) les immeubles contenus dans le fichier sites.csv
- Lister les lots associés aux immeubles contenus dans le fichier parts.csv
- Pouvoir ajouter des lots à un immeuble : avec un formulaire contenant un champs texte désignant le type de lot,
  et un autre sa référence

## BONUS
- Pouvoir éditer le nom d'un immeuble
- Les références des lots et des immeubles doivent être unique
- afficher la google maps 

Le resultat attendu est composé de deux lien à nous fournir :
- l'url de votre repo en clonant celui-ci
- l'url heroku de votre application pour que nous puissions tester

