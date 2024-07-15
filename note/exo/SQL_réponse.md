````SQL
1. SELECT nom FROM `villes` WHERE nom_reel LIKE 'p%';
2. SELECT nom FROM `villes` WHERE departement IN (75,77,78,91,92,93,94,95);
3. SELECT DISTINCT nom_reel FROM `villes` WHERE population_2010 >20000;
4. SELECT nom FROM `villes` WHERE code_postal BETWEEN 75000 AND 75020;
5. SELECT nom FROM `villes` WHERE departement NOT IN (13,33,69);
6. SELECT nom FROM `villes` WHERE departement IN (75) BETWEEN 10000 AND 50000;
7. SELECT nom FROM `villes` WHERE nom_reel LIKE 'A%' OR nom_reel LIKE'B%';
8. SELECT nom FROM `villes` WHERE densite_2010 >1000;
9. SELECT nom FROM `villes` WHERE nom_reel != nom_simple;

EXERCICE 1

CREATE DATABASE formation;

CREATE TABLE stagiaire
(
id INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(255),
prenom VARCHAR(255),
date_naissance DATE,
email VARCHAR(255)
);

INSERT INTO stagiaire (id, nom, prenom, date_naissance, email)
VALUES
(1, 'Dupont', 'Jean', '1990-01-01', 'jean.dupont@example.com'),
(2, 'Martin', 'Pierre', '1992-02-02', 'pierre.martin@example.com'),
(3, 'Durand', 'Marie', '1994-03-03', 'marie.durand@example.com'),
(4, 'Lefebvre', 'Paul', '1996-04-04', 'paul.lefebvre@example.com'),
(5, 'Bertrand', 'Anne', '1998-05-05', 'anne.bertrand@example.com'),
(6, 'Robert', 'François', '2000-06-06', 'francois.robert@example.com'),
(7, 'Lemaire', 'Laura', '2002-07-07', 'laura.lemaire@example.com'),
(8, 'Girard', 'John', '2004-08-08', 'john.girard@example.com'),
(9, 'Petit', 'Sophie', '2006-09-09', 'sophie.petit@example.com'),
(10, 'Moreau', 'Luc', '2008-10-10', 'luc.moreau@example.com');

EXERCICE 2

1. UPDATE stagiaire SET prenom = 'johnny' WHERE id = 8;
2. DELETE FROM stagiaire WHERE id = 2;
3. DELETE FROM stagiaire;
4. DROP TABLE stagiaire;
5. DROP DATABASE formation;

EXERCICE 3 

1. ALTER TABLE stagiaire ADD telephone VARCHAR(255);
2. ALTER TABLE stagiaire MODIFY email VARCHAR(255) UNIQUE;
vérifier avec ce test : INSERT INTO stagiaire (id, nom, prenom, date_naissance, email)
VALUES
(1, 'tttt', 'tttt', '2222-10-10', 'jean.dupont@example.com');
3. ALTER TABLE stagiaire ADD adresse VARCHAR(255) AFTER prenom;
4. ALTER TABLE stagiaire DROP COLUMN adresse;
5. ALTER TABLE stagiaire CHANGE telephone tel VARCHAR(255);
6. ALTER TABLE stagiaire MODIFY COLUMN tel VARCHAR(255) NOT NULL;
7. ALTER TABLE stagiaire ADD sexe VARCHAR(255) AFTER date_naissance;
8. ALTER TABLE stagiaire MODIFY COLUMN sexe VARCHAR(255) NOT NULL;
9. ALTER TABLE stagiaire MODIFY COLUMN sexe VARCHAR(1) NOT NULL;
10. 

````