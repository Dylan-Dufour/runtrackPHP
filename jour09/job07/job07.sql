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

// Requête SQL pour récupérer la superficie totale des étages
$sql = "SELECT SUM(superficie) AS superficie_totale FROM etages"; 
$result = $conn->query($sql);

// Vérifier si des résultats sont retournés
if ($result->num_rows > 0) {
    // Début du tableau HTML
    echo "<table border='1'>";
    echo "<thead><tr>";
    
    // Affichage du titre de la colonne (nom du champ)
    echo "<th>superficie_totale</th>";
    
    echo "</tr></thead><tbody>";
    
    // Affichage de la superficie totale
    $row = $result->fetch_assoc();
    echo "<tr><td>" . htmlspecialchars($row['superficie_totale']) . "</td></tr>";
    
    echo "</tbody></table>";
} else {
    echo "Aucun résultat trouvé.";
}

// Fermeture de la connexion
$conn->close();
?>
