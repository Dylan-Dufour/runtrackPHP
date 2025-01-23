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

// Requête SQL pour récupérer le nom des salles et le nom de leur étage
$sql = "SELECT salles.nom AS nom_salle, etages.nom AS nom_etage 
        FROM salles 
        JOIN etages ON salles.id_etage = etages.id";
$result = $conn->query($sql);

// Vérifier si des résultats sont retournés
if ($result->num_rows > 0) {
    // Début du tableau HTML
    echo "<table border='1'>";
    echo "<thead><tr>";
    
    // Affichage des titres des colonnes (nom des champs)
    echo "<th>Nom de la salle</th>";
    echo "<th>Nom de l'étage</th>";
    
    echo "</tr></thead><tbody>";
    
    // Affichage des données des salles et étages
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['nom_salle']) . "</td>";
        echo "<td>" . htmlspecialchars($row['nom_etage']) . "</td>";
        echo "</tr>";
    }
    
    echo "</tbody></table>";
} else {
    echo "Aucune donnée trouvée.";
}

// Fermeture de la connexion
$conn->close();
?>
