package itu.noteEtudiant.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NoteEtudiantModel {
    
    int id_etudiant;
    int id_classe;
    double moyenne;
    int rank;
    String nom;
    String prenom;
    String nom_classe;

    
    public int getId_etudiant() {
        return id_etudiant;
    }
    public void setId_etudiant(int id_etudiant) {
        this.id_etudiant = id_etudiant;
    }
    public int getId_classe() {
        return id_classe;
    }
    public void setId_classe(int id_classe) {
        this.id_classe = id_classe;
    }
    public double getMoyenne() {
        return moyenne;
    }
    public void setMoyenne(double moyenne) {
        this.moyenne = moyenne;
    }
    public int getRank() {
        return rank;
    }
    public void setRank(int rank) {
        this.rank = rank;
    }
    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    public String getNom_classe() {
        return nom_classe;
    }
    public void setNom_classe(String nom_classe) {
        this.nom_classe = nom_classe;
    }

    
    public NoteEtudiantModel(int id_etudiant, int id_classe, double moyenne, int rank, String nom, String prenom,
            String nom_classe) {
        this.id_etudiant = id_etudiant;
        this.id_classe = id_classe;
        this.moyenne = moyenne;
        this.rank = rank;
        this.nom = nom;
        this.prenom = prenom;
        this.nom_classe = nom_classe;
    }

    public NoteEtudiantModel() {
    }


    public NoteEtudiantModel[] getViewV_V_RangEtudiantWhere(int id_classe) throws CustomException
    {
        List<NoteEtudiantModel> list_rang_etudiant = new ArrayList<>();
        Conn c = new Conn();
        Connection conn = c.getConnex();
        try 
        {
            String sql = "SELECT * FROM v_v_rang_etudiant WHERE id_classe ="+id_classe+"";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet result = pstmt.executeQuery();    

            while (result.next()) {
                NoteEtudiantModel note = new NoteEtudiantModel();
                note.setId_etudiant(result.getInt(1));
                note.setId_classe(result.getInt(2));
                note.setMoyenne(result.getDouble(3));
                note.setRank(result.getInt(4));
                note.setNom(result.getString(5));
                note.setPrenom(result.getString(6));
                note.setNom_classe(result.getString(7));
                list_rang_etudiant.add(note);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            throw new CustomException("Erreur dans getViewV_V_RangEtudiantWhere");
        }
        finally{
            try {
                conn.close();
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }

        return list_rang_etudiant.toArray(new NoteEtudiantModel[list_rang_etudiant.size()]);    
    }
    

}
