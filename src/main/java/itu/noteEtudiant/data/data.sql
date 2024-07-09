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
('2eme annee'),
('3eme annee');

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



-- Inserting notes for each student
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (1, 1, 1, 85);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (2, 1, 2, 90);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (3, 1, 3, 88);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (4, 1, 4, 92);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (5, 1, 5, 75);

INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (6, 2, 1, 82);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (7, 2, 2, 87);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (8, 2, 3, 79);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (9, 2, 4, 91);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (10, 2, 5, 84);

INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (11, 3, 1, 89);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (12, 3, 2, 85);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (13, 3, 3, 93);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (14, 3, 4, 77);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (15, 3, 5, 88);

INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (16, 1, 1, 90);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (17, 1, 2, 85);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (18, 1, 3, 80);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (19, 1, 4, 70);
INSERT INTO note_etudiant (id_etudiant, id_classe, id_matiere, note) VALUES (20, 1, 5, 95);