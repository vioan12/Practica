/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication_practica;

/**
 *
 * @author Ioan
 */
public class t_profesori {
    private int ID;
    private String Nume;
    private String Prenume;
    private String Telefon;
    private String Studii;

    public void setID(int value){
       this.ID=value;
    }
    public void setNume(String value){
       this.Nume=value;
    }    
    public void setPrenume(String value){
       this.Prenume=value;
    }    
    public void setTelefon(String value){
       this.Telefon=value;
    }
    public void setStudii(String value){
       this.Studii=value;
    }
    public int getID(){
       return this.ID;
    }
    public String getNume(){
       return this.Nume;
    }    
    public String getPrenume(){
       return this.Prenume;
    }    
    public String getTelefon(){
       return this.Telefon;
    }
    public String getStudii(){
       return this.Studii;
    }
    public void setAll(int value, String value1, String value2, String value3, String value4){
        this.ID=value;
        this.Nume=value1;
        this.Prenume=value2;
        this.Telefon=value3;
        this.Studii=value4;
    }
}
