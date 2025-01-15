<?php
// Définition de la chaîne
$str = "I'm sorry Dave I'm afraid I can't do that";

// Liste des voyelles
$voyelles = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

// Parcours de la chaîne et affichage des voyelles
for ($i = 0; $i < strlen($str); $i++) {
    if (in_array($str[$i], $voyelles)) {
        echo $str[$i];
    }
}
?>



