# CHARTRMEDIC 

CHARTRMEDIC est un site web qui répertorie un stock de médicaments avec les quantités disponible

### Technologies utilisées

Apache 

MySQL (MariaDB)

PHPstorm pour utiliser le PHP

HTML / CSS 

### Accès à MySQL et Apache (local)

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
## Technologies utilisées pour déployer le site

création d'un compte Oracle 

OCI (Oracle Cloud Infrastructure) : permet de déployer et gérer des applications dans le cloud.

Au sein d'Oracle, création d'une instance avec une image ubuntu 2.04 et télécharger les deux clefs (privé et public)

connexion à l'instance en SSH : ouverture de Powershell 

commande tapée : ssh -i C:\Users\33615\Downloads\ssh-key-2024-07-16.key ubuntu@144.24.206.44 

Apache : sudo apt install apache2

git : sudo apt install git

php : sudo apt install php

SQL : sudo apt install mysql

#### Procédure pour créer la clef SSH avec GIT :

![image](https://github.com/user-attachments/assets/e8795978-518e-4c72-b4d1-5eaf71e673b5)

![image](https://github.com/user-attachments/assets/cdafbf56-216c-4d95-8561-b947baa005f8)

status : pour savoir où j'en suis 
![image](https://github.com/user-attachments/assets/93648341-b64e-4d66-a9f6-e155030e9bef)

identification de la machine 
![image](https://github.com/user-attachments/assets/d1b6fb2e-e65e-4c52-95aa-0cd441c3dd80)

commit des fichiers 
![image](https://github.com/user-attachments/assets/dd11c429-3b05-4fd7-a550-0fad63424aca)

![image](https://github.com/user-attachments/assets/37b0a95e-a05b-4efc-a95d-38eb3a8e4c77)

![image](https://github.com/user-attachments/assets/86cba6dd-7bd4-4faa-a5e2-29e0580ac3f3)

![image](https://github.com/user-attachments/assets/73b1fa96-1e6b-4655-bba0-09c50b00a874)

