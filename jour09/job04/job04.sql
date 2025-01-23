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

// Requête SQL pour récupérer toutes les informations des étudiants dont le prénom commence par "T"
$sql = "SELECT * FROM etudiants WHERE prenom LIKE 'T%'"; 
$result = $conn->query($sql);

// Vérifier si des résultats sont retournés
if ($result->num_rows > 0) {
    // Début du tableau HTML
    echo "<table border='1'>";
    echo "<thead><tr>";
    
    // Affichage des titres des colonnes (nom des champs)
    $fields = $result->fetch_fields(); // Récupère les noms des champs
    foreach ($fields as $field) {
        echo "<th>" . htmlspecialchars($field->name) . "</th>";
    }
    echo "</tr></thead><tbody>";
    
    // Affichage des données des étudiants dont le prénom commence par "T"
    while ($row = $result->fetch_assoc()) {
        echo "<t
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

// Requête SQL pour récupérer toutes les informations des étudiants dont le prénom commence par "T"
$sql = "SELECT * FROM etudiants WHERE prenom LIKE 'T%'"; 
$result = $conn->query($sql);

// Vérifier si des résultats sont retournés
if ($result->num_rows > 0) {
    // Début du tableau HTML
    echo "<table border='1'>";
    echo "<thead><tr>";
    
    // Affichage des titres des colonnes (nom des champs)
    $fields = $result->fetch_fields(); // Récupère les noms des champs
    foreach ($fields as $field) {
        echo "<th>" . htmlspecialchars($field->name) . "</th>";
    }
    echo "</tr></thead><tbody>";
    
    // Affichage des données des étudiants dont le prénom commence par "T"
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $data) {
            echo "<td>" . htmlspecialchars($data) . "</td>";
        }
        echo "</tr>";
    }
    
    echo "</tbody></table>";
} else {
    echo "Aucun étudiant trouvé.";
}

// Fermeture de la connexion
$conn->close();
?>
