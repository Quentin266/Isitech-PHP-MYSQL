Lundi

<?php fjfff ?> = tag PHP
// commentaire 
/**
* commentaire multiligne
* f
* /

déclarer une variable avec $
$texte = 'Hello World';
$nombre = 42;

PHP supporte : strings, integers, float
booleans, arrays objects, null

structures de controle : 
````php
if ($nombre >42)
{
    echo 'le nombre est supérieur à 42';
} elseif ($nombre==42)

````
boucles :
```php 
for ($i=0; $i < 10; $i++) 
}
    echo $i . ' ';
{
````
fonctions : 

````Php
function addition ($a, $b)
{
return $a + $b;
}
````
afficher le résultat
````
echo addition(75, 85);
````
include + nom fichier pour appeler une fonction provenant d'un autre fichier

formulaire : 
`````html
<form action ='fichier.php' method="GET">
    nom : <input type="text" name="nom"/>
    <input type="submit" value="Envoyer">
</form>
``````
pour des opérations qui ne modifient pas l'état du serveur
(requête de recherche), privilegiez les requests GET,
pour les actions qui modifient l'état du serveur
(mise à jour de données en base) utilisez POST

hmtlspecialchars sécurise base de données

````php
if (isset($_POST['nom'])) {
    echo 'Bonjour, ' . htmlspecialchars($_POST['nom']);
}
else {
    echo 'Bonjour l \'inconnu';
}
````
Mardi

Héritage : permet à une classe (enfant) d'hériter des propriétés
et méthodes d'une autre classe (parent) 
qui permet la réutilisation du code 

donnée : INSERT INTO medicament (id, nom, quantité) VALUES (1, 'Doliprane', 50), (2, 'Efferalgan', 100), (3, 'Aspirine', 200), (4, 'Ibuprofene', 150), (5, 'Paracetamol', 250), (6, 'Amoxicilline', 50), (7, 'Ciprofloxacine', 100), (8, 'Azithromycine', 200), (9, 'Clarithromycine', 150), (10, 'Doxycycline', 250), (11, 'Erythromycine', 50), (12, 'Levofloxacine', 100), (13, 'Metronidazole', 200), (14, 'Spiramycine', 150), (15, 'Trimethoprime', 250);

différence entre REQUIRE et INCLUDE

INCLUDE : Inclut le fichier spécifié et génère un avertissement si le fichier est introuvable, mais continue l'exécution du script.
REQUIRE : Inclut le fichier spécifié et génère une erreur fatale si le fichier est introuvable, arrêtant l'exécution du script.