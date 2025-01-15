<?php
for ($i = 0; $i <= 1337; $i++) {
    // Vérification si le nombre est l'un des exclu
    if ($i == 26 || $i == 37 || $i == 88 || $i == 1111) {
        continue; // On saute ce nombre
    }
    // Affichage des autres nombres
    echo $i . "<br>";
}
?>


