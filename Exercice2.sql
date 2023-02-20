-- 1. Dans la base de données dvdrental, écrivez une requête pour sélectionner toutes les colonnes de la table « client ».
SELECT  *  FROM customer ;

-- 2. Écrivez une requête pour afficher les noms (prénom, nom) en utilisant un alias nommé "nom_complet".
SELECT first_name ||  '  '  || last_name AS full_name of customer ;

-- 3. Permet d'obtenir toutes les dates auxquelles les comptes ont été créés. Écrivez une requête pour sélectionner tous les create_date de la table « client » (il ne doit pas y avoir de doublons).
SELECT DISTINCT create_date FROM customer ;

-- 4. Écrivez une requête pour obtenir tous les détails du client à partir de la table des clients, elle doit être affichée dans l'ordre décroissant de leur prénom.
SELECT  *  FROM customer ORDER BY first_name DESC ;

-- 5. Rédigez une requête pour obtenir l'ID du film, le titre, la description, l'année de sortie et le tarif de location par ordre croissant en fonction de leur tarif de location.
SELECT film_id, title, description, release_year, rental_rate FROM film ORDER BY rental_rate ;

-- 6. Écrivez une requête pour obtenir l'adresse et le numéro de téléphone de tous les clients vivant dans le district du Texas, ces détails peuvent être trouvés dans le tableau "adresse".
SELECT  a.address , a.address2 a LEFT JOIN ville c ON  a . city_id  =  c . city_id  OÙ  c . ville  =  ' Texas ' ;

-- 7. Écrivez une requête pour récupérer tous les détails du film où l'identifiant du film est 15 ou 150.
SELECT  *  FROM film WHERE film_id =  15  OR film_id =  150 ;

-- 8. Écrivez une requête qui devrait vérifier si votre film préféré existe dans la base de données. Demandez à votre requête d'obtenir l'ID du film, le titre, la description, la durée et le tarif de location, ces détails peuvent être trouvés dans le tableau "film".
SELECT film_id, title, description, length, Rental_rate FROM film WHERE title =  ' Iron man 3 ' ;

-- 9. Pas de chance pour trouver votre film ? Peut-être avez-vous fait une erreur dans l'orthographe du nom. Écrivez une requête pour obtenir l'ID du film, le titre, la description, la durée et le tarif de location de tous les films commençant par les deux premières lettres de votre film préféré.
SELECT id_film, titre, description, durée, tarif_location FROM film WHERE titre LIKE  ' Ir% ' ;

-- 10. Écrivez une requête qui trouvera les 10 films les moins chers.
SELECT  *  FROM film ORDER BY replacement_cost LIMIT  10 ;