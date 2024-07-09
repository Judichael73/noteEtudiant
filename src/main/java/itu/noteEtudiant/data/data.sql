create table etudiant
(
    id_etudiant serial primary key,
    nom varchar(50),
    prenom varchar(60)
);

INSERT INTO etudiant(nom, prenom) VALUES ('Alice', 'Ann');
INSERT INTO etudiant(nom, prenom) VALUES ('Bob', 'Ben');
INSERT INTO etudiant(nom, prenom) VALUES ('Charlie', 'Chris');
INSERT INTO etudiant(nom, prenom) VALUES ('David', 'Dana');
INSERT INTO etudiant(nom, prenom) VALUES ('Emily', 'Eric');
INSERT INTO etudiant(nom, prenom) VALUES ('Frank', 'Fiona');
INSERT INTO etudiant(nom, prenom) VALUES ('Grace', 'George');
INSERT INTO etudiant(nom, prenom) VALUES ('Harry', 'Helen');
INSERT INTO etudiant(nom, prenom) VALUES ('Isabella', 'Ian');
INSERT INTO etudiant(nom, prenom) VALUES ('John', 'Jack');
INSERT INTO etudiant(nom, prenom) VALUES ('Julia', 'Kate');
INSERT INTO etudiant(nom, prenom) VALUES ('Kevin', 'Luke');
INSERT INTO etudiant(nom, prenom) VALUES ('Lily', 'Mary');
INSERT INTO etudiant(nom, prenom) VALUES ('Michael', 'Nick');
INSERT INTO etudiant(nom, prenom) VALUES ('Natalie', 'Olivia');
INSERT INTO etudiant(nom, prenom) VALUES ('Oliver', 'Peter');
INSERT INTO etudiant(nom, prenom) VALUES ('Patricia', 'Quinn');
INSERT INTO etudiant(nom, prenom) VALUES ('Quentin', 'Rachel');
INSERT INTO etudiant(nom, prenom) VALUES ('Rose', 'Stephen');
INSERT INTO etudiant(nom, prenom) VALUES ('Samuel', 'Tina');



create table classe
(
    id_classe serial primary key,
    nom_classe varchar(50)
);

insert into classe(nom_classe)
VALUES
('1ere annee'),
('2eme annee');

create table matiere
(
    id_matiere serial primary key,
    nom_matiere varchar(50)
);

INSERT INTO matiere (nom_matiere) VALUES ('Mathematics');
INSERT INTO matiere (nom_matiere) VALUES ('Physics');
INSERT INTO matiere (nom_matiere) VALUES ('Chemistry');
INSERT INTO matiere (nom_matiere) VALUES ('Biology');
INSERT INTO matiere (nom_matiere) VALUES ('Computer Science');

create table note_etudiant
(
    id_note_etudiant serial primary key,
    id_etudiant integer references etudiant(id_etudiant),
    id_classe integer references classe(id_classe),
    id_matiere integer references matiere(id_matiere),
    note numeric
);


insert into note_etudiant(id_etudiant,id_classe,id_matiere,note)
VALUES
(1,1,1,90),
(1,1,2,45),
(1,1,3,10.5),
(1,1,4,60),
(1,1,5,100),

(2,1,1,90),
(2,1,2,90),
(2,1,3,100),
(2,1,4,12),
(2,1,5,12),


(3,1,1,12),
(3,1,2,6),
(3,1,3,4),
(3,1,4,0),
(3,1,5,12),


(4,1,1,90),
(4,1,2,90),
(4,1,3,100),
(4,1,4,100),
(4,1,5,75),


(5,1,1,12),
(5,1,2,0),
(5,1,3,0),
(5,1,4,12),
(5,1,5,12),


(6,1,1,90),
(6,1,2,90),
(6,1,3,100),
(6,1,4,12),
(6,1,5,13),


(7,1,1,90),
(7,1,2,90),
(7,1,3,90),
(7,1,4,0),
(7,1,5,0),


(8,1,1,0),
(8,1,2,0),
(8,1,3,0),
(8,1,4,0),
(8,1,5,0),



(9,1,1,90),
(9,1,2,90),
(9,1,3,90),
(9,1,4,90),
(9,1,5,90),

(10,1,1,90),
(10,1,2,90),
(10,1,3,90),
(10,1,4,100),
(10,1,5,99);
----------------------------------------------------------
INSERT INTO note_etudiant(id_etudiant, id_classe, id_matiere, note)
VALUES
(11, 2, 1, 67),
(11, 2, 2, 89),
(11, 2, 3, 53),
(11, 2, 4, 34),
(11, 2, 5, 71),

(12, 2, 1, 21),
(12, 2, 2, 98),
(12, 2, 3, 49),
(12, 2, 4, 45),
(12, 2, 5, 61),

(13, 2, 1, 37),
(13, 2, 2, 83),
(13, 2, 3, 56),
(13, 2, 4, 92),
(13, 2, 5, 11),

(14, 2, 1, 75),
(14, 2, 2, 18),
(14, 2, 3, 90),
(14, 2, 4, 64),
(14, 2, 5, 22),

(15, 2, 1, 29),
(15, 2, 2, 85),
(15, 2, 3, 47),
(15, 2, 4, 39),
(15, 2, 5, 14),

(16, 2, 1, 95),
(16, 2, 2, 76),
(16, 2, 3, 83),
(16, 2, 4, 59),
(16, 2, 5, 41),

(17, 2, 1, 65),
(17, 2, 2, 33),
(17, 2, 3, 99),
(17, 2, 4, 54),
(17, 2, 5, 26),

(18, 2, 1, 88),
(18, 2, 2, 77),
(18, 2, 3, 12),
(18, 2, 4, 67),
(18, 2, 5, 44),

(19, 2, 1, 82),
(19, 2, 2, 15),
(19, 2, 3, 63),
(19, 2, 4, 70),
(19, 2, 5, 52),

(20,2, 1, 93),
(20,2, 2, 27),
(20,2, 3, 85),
(20,2, 4, 10),
(20,2, 5, 99);