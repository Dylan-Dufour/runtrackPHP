SELECT etage.nom AS etage_nom, salles.nom AS "Biggest Room", salles.capacite
FROM salles
JOIN etage ON salles.id_etage = etage.id
ORDER BY salles.capacite DESC
LIMIT 1;
