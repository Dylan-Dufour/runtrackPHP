<?php
// Connexion à la base de données
$host = "localhost";  // Serveur de la base de données
$username = "root";   // Nom d'utilisateur
$password = "";       // Mot de passe
$database = "jour08"; // Nom de la base de données

// Création de la connexion
$conn = new mysqli($host, $username, $password, $database);

// Vérification de la connexion
if ($conn->connect_error) {
    die("La connexion a échoué: " . $conn->connect_error);
}

// Requête SQL pour récupérer le prénom, le nom et la date de naissance des étudiants nés entre 1998 et 2018
$sql = "SELECT prenom, nom, date_naissance FROM etudiants WHERE date_naissance BETWEEN '1998-01-01' AND '2018-12-31'";
$result = $conn->query($sql);

// Vérifier si des résultats sont retournés
if ($result->num_rows > 0) {
    // Début du tableau HTML
    echo "<table border='1'>";
    echo "<thead><tr>";
    
    // Affichage des titres des colonnes (nom des champs)
    echo "<th>Prénom</th>";
    echo "<th>Nom</th>";
    echo "<th>Date de naissance</th>";
    
    echo "</tr></thead><tbody>";
    
    // Affichage des données des étudiants
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['prenom']) . "</td>";
        echo "<td>" . htmlspecialchars($row['nom']) . "</td>";
        echo "<td>" . htmlspecialchars($row['date_naissance']) . "</td>";
        echo "</tr>";
    }
    
    echo "</tbody></table>";
} else {
    echo "Aucun étudiant trouvé.";
}

// Fermeture de la connexion
$conn->close();
?>
