<?php
// Définition de la chaîne
$str = "Certaines choses changent, et d'autres ne changeront jamais.";

// Convertir la chaîne en tableau de caractères
$str_array = str_split($str);

// Nombre de caractères dans la chaîne
$length = count($str_array);

// Algorithme pour décaler chaque caractère
for ($i = 0; $i < $length; $i++) {
    // Remplacer le caractère courant par celui suivant
    // Le dernier caractère est remplacé par le premier
    if ($i == $length - 1) {
        $str_array[$i] = $str_array[0];
    } else {
        $str_array[$i] = $str_array[$i + 1];
    }
}

// Reconvertir le tableau en chaîne
$new_str = implode("", $str_array);

// Affichage du résultat
echo $new_str;
?>





