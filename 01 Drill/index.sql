--Dans phpMyAdmin (ou autre outil) mais via l’onglet SQL, on va apprendre à afficher, ajouter, modifier et supprimer des données en SQL.

--Crée une base de données becode.
--Importe le fichier students.sql qui se trouve dans ce dossier.
--Dans un second fichier .sql, tu stockeras les requêtes qui te permettront de réaliser ces actions :

--Affiche toutes les données.  
SELECT * FROM students,school;

--Affiche uniquement les prénoms.  
SELECT prenom FROM students;

--Affiche les prénoms, les dates de naissance et l’école de chacun.
SELECT students.prenom, students.datenaissance, school.school FROM students, school;

--Affiche uniquement les élèves qui sont de sexe féminin.
SELECT * FROM students WHERE genre = "F";

--Affiche uniquement les élèves qui font partie de l’école Andy. 
--(charleroi donc, j'imagie que tu voulai dire eddy)
SELECT * FROM students,school WHERE school.school = "charleroi";

--Affiche uniquement les prénoms des étudiants, par ordre inverse à l’alphabet (DESC). Ensuite, la même chose mais en limitant les résultats à 2.
SELECT prenom FROM students ORDER BY prenom DESC;

SELECT prenom FROM students ORDER BY prenom DESC LIMIT 2;

--Ajoute Ginette Dalor, née le 01/01/1930 et affecte-la à Central, toujours en SQL.
INSERT INTO `students`(`idStudent`, `nom`, `prenom`, `datenaissance`, `genre`, `school`) VALUES (idStudent,'Dalor','Ginette','1930-01-01','F',1);

--Modifie Ginette (toujours en SQL) et change son sexe et son prénom en “Omer”.
UPDATE students SET prenom = "Omer", genre = "M" WHERE prenom = "Ginette" AND genre = "F";

--Supprimer la personne dont l’ID est 3.
DELETE FROM students WHERE idStudent = 3;

--Modifier le contenu de la colonne School de sorte que "1" soit remplacé par "Central" et "2" soit remplacé par "Anderlecht". (attention au type de la colonne !)


--Faire d’autres manipulations pour voir si t’es bien compris.


