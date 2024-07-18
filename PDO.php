<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des médicaments</title>
    <link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
<h1>Liste des médicaments</h1>
<?php
// Connexion à la base de données
$host = 'localhost';
$db   = 'chartrmedic';
$user = getenv('USER') ? getenv('USER') : "root";
$pass = getenv('PASSWORD') ? getenv('PASSWORD') : "Azerty123"
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);

    // Définir la valeur de l'ID que vous souhaitez sélectionner
    $id = 1; // Exemple d'ID

    $sql = "SELECT id, nom, quantite, description FROM medicament WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':id', $id, PDO::PARAM_INT);

    // Exécuter la requête
    $stmt->execute();

    // Récupérer les résultats
    $medicaments = $stmt->fetchAll();

    // Afficher les résultats
    foreach ($medicaments as $medicament) {
        echo "ID: " . $medicament['id'] . "<br>";
        echo "Nom: " . $medicament['nom'] . "<br>";
        echo "Quantité: " . $medicament['quantite'] . "<br>";
        echo "Description: " . $medicament['description'] . "<br>";
        echo "<hr>";
    }

} catch (PDOException $e) {
    echo "Erreur de connexion : " . $e->getMessage();
}
?>
</body>
</html>
