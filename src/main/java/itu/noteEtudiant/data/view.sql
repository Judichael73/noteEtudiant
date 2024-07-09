create or replace view v_note_etudiant as
select note_etudiant.*,nom,prenom,nom_classe,nom_matiere from note_etudiant
join etudiant on etudiant.id_etudiant=note_etudiant.id_etudiant
join classe on classe.id_classe=note_etudiant.id_classe
join matiere on matiere.id_matiere = note_etudiant.id_matiere;