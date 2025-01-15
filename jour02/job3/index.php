<?php
for ($i = 1; $i <= 100; $i++) {
    // Si le nombre est un multiple de 3 et de 5, afficher "FizzBuzz"
    if ($i % 3 == 0 && $i % 5 == 0) {
        echo "FizzBuzz<br>";
    }
    // Si le nombre est un multiple de 3, afficher "Fizz"
    elseif ($i % 3 == 0) {
        echo "Fizz<br>";
    }
    // Si le nombre est un multiple de 5, afficher "Buzz"
    elseif ($i % 5 == 0) {
        echo "Buzz<br>";
    }
    // Si le nombre n'est pas un multiple de 3 ou 5, afficher le nombre lui-même
    else {
        echo $i . "<br>";
    }
}
?>




