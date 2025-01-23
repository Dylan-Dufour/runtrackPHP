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

// Requête SQL pour récupérer le nom et la capacité des salles
$sql = "SELECT nom, capacite FROM salles";  // On suppose que la table s'appelle "salles"
$result = $conn->query($sql);

// Vérifier si des résultats sont retournés
if ($result->num_rows > 0) {
    // Début du tableau HTML
    echo "<table border='1'>";
    echo "<thead><tr>";
    
    // Affichage des titres des colonnes (nom des champs)
    echo "<th>Nom de la salle</th>";
    echo "<th>Capacité</th>";
    
    echo "</tr></thead><tbody>";
    
    // Affichage des données des salles
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['nom']) . "</td>";
        echo "<td>" . htmlspecialchars($row['capacite']) . "</td>";
        echo "</tr>";
    }
    
    echo "</tbody></table>";
} else {
    echo "Aucune salle trouvée.";
}

// Fermeture de la connexion
$conn->close();
?>
