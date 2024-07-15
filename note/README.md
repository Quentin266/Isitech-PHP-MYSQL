# CHARTRMEDIC 

CHARTRMEDIC est un site web qui répertorie un stock de médicaments avec les quantités disponible

### Technologies utilisées

Apache 

MySQL (MariaDB)

PHPstorm pour utiliser le PHP

HTML / CSS 

### Accès à MySQL et Apache

installation de XAMPP directement dans la racine du C

#### Apache :

pour se rendre sur le dashbord de XAMPP mettre "localhost" dans l'URL

#### MySQL : 

phpMyAdmin pour la gestion de la base de donnée

la base de donnée comporte deux tables dont une qui n'est pas encore alimentée 

Les bases :

utilisateurs : (pas encore active)

medicament : comporte les champs id, nom quantité et description

### Connection à la base de donnée : 

Variable host : l'adresse IP locale

Variable db : nom de la base de donnée

Variable user : nom de l'utilisateur

Variable pass : mot de passe de l'utilisateur 

Variable charset : charset pour les potentiels caractères spéciaux

`````PHP
$host = '127.0.0.1';
$db   = 'chartrmedic';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';
``````

##### En cours

problème pour récupérer les données depuis la BDD dans détails.php
donc il y a juste le formulaire 