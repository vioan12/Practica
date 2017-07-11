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
public class t_elevi {
    
    private int ID;
    private String Nume;
    private String Prenume;
    private String Adresa;
    private String Telefon;

    public void setID(int value){
       this.ID=value;
    }
    public void setNume(String value){
       this.Nume=value;
    }    
    public void setPrenume(String value){
       this.Prenume=value;
    }    
    public void setAdresa(String value){
       this.Adresa=value;
    }
    public void setTelefon(String value){
       this.Telefon=value;
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
    public String getAdresa(){
       return this.Adresa;
    }
    public String getTelefon(){
       return this.Telefon;
    }
    public void setAll(int value, String value1, String value2, String value3, String value4){
        this.ID=value;
        this.Nume=value1;
        this.Prenume=value2;
        this.Adresa=value3;
        this.Telefon=value4;
    }
}
