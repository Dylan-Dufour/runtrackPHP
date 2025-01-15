<?php
// Définition de la chaîne
$str = "On n est pas le meilleur quand on le croit mais quand on le sait";

// Dictionnaire pour stocker les voyelles et consonnes
$dic = [
    'voyelles' => 0,
    'consonnes' => 0
];

// Liste des voyelles
$voyelles = ['a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y'];

// Parcours de la chaîne pour compter les voyelles et consonnes
for ($i = 0; $i < strlen($str); $i++) {
    $char = $str[$i];

    // Vérifier si le caractère est une lettre
    if (ctype_alpha($char)) {
        // Si c'est une voyelle
        if (in_array($char, $voyelles)) {
            $dic['voyelles']++;
        } else {
            // Sinon, c'est une consonne
            $dic['consonnes']++;
        }
    }
}

// Affichage des résultats dans un tableau HTML
echo "<table border='1'>
        <thead>
            <tr>
                <th>Voyelles</th>
                <th>Consonnes</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{$dic['voyelles']}</td>
                <td>{$dic['consonnes']}</td>
            </tr>
        </tbody>
      </table>";
?>




