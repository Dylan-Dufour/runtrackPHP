<?php
// Type boolean
$bool = true;  // Valeur booléenne

// Type entier
$entier = 42;  // Nombre entier

// Type chaîne de caractères
$chaine = "Bonjour, le monde !";  // Chaîne de caractères

// Type nombre à virgule flottante
$float = 3.14;  // Nombre à virgule flottante

// Affichage des valeurs
echo "Boolean : " . var_export($bool, true) . "<br>";
echo "Entier : " . $entier . "<br>";
echo "Chaîne : " . $chaine . "<br>";
echo "Float : " . $float . "<br>";
?>
<?php
// Déclaration des variables
$bool = true;
$entier = 42;
$chaine = "Bonjour, le monde !";
$float = 3.14;

// Création du tableau HTML
echo "<table border='1'>";
echo "<thead>";
echo "<tr><th>Type</th><th>Nom</th><th>Valeur</th></tr>";
echo "</thead>";
echo "<tbody>";

// Ajout d'une ligne pour chaque variable
echo "<tr><td>" . gettype($bool) . "</td><td>\$bool</td><td>" . var_export($bool, true) . "</td></tr>";
echo "<tr><td>" . gettype($entier) . "</td><td>\$entier</td><td>" . $entie
