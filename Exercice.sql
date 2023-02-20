-- 1. Tous les articles, classés par prix (du plus bas au plus élevé).
SELECT  *  FROM articles ORDER BY dbl_iteprice ;

-- 2. Articles dont le prix est supérieur à 80 (80 inclus), classés par prix (du plus élevé au plus bas).
SELECT  *  FROM items WHERE dbl_iteprice <=  80  ORDER BY dbl_iteprice DESC ;

-- 3. Les 3 premiers clients dans l'ordre alphabétique du prénom (AZ) – exclure la colonne clé primaire des résultats.
SELECT str_cusfirst_name, str_cuslast_name FROM clients ORDER BY str_cusfirst_name LIMIT  3 ;

-- 4. Tous les noms de famille (pas d'autres colonnes !), dans l'ordre alphabétique inverse (ZA)
SELECT str_cuslast_name FROM clients ORDER BY str_cuslast_name DESC ;