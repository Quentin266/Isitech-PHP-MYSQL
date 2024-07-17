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
    $pass = getenv('PASSWORD') ? getenv('PASSWORD') : "Azerty123";
    $charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
    $sql = ("SELECT id, nom, description FROM utilisateurs WHERE id = :id");
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $medicaments = $stmt->fetchAll();

    //vérifie si la table contient un élément et afficher les champs de la table
    if (count($medicaments) > 0) {
        echo "<table>";
        echo "<thead>";
        echo "<tr>";
        echo "<th>Nom</th>";
        echo "<th>Quantité</th>";
        echo "<th>Description</th>";
        echo "<th>Voir tout</th>";
        echo "</tr>";
        echo "</thead>";
        echo "<tbody>";

        foreach ($medicaments as $medicament) {
            echo "<tr>";
            echo "<td>" . ($medicament['nom']) . "</td>";
            echo "<td>" . ($medicament['quantité']) . "</td>";
            echo "<td>" . ($medicament['description']) . "</td>";
            // Lien pour voir et modifier les détails du médicament
            echo "<td><a href='details.php?id=" . $medicament['id'] . "'>Détails</a></td>";
            echo "</tr>";
        }

        echo "</tbody>";
        echo "</table>";
    } else {
        echo "Aucun médicament trouvé.";
    }

} catch (\PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}
?>
</body>
</html>
