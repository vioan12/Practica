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
public class t_materii {
    private int ID;
    private String Nume;
    private int Ore;
    private String Descriere;

    public void setID(int value){
       this.ID=value;
    }
    public void setNume(String value){
       this.Nume=value;
    }    
    public void setOre(int value){
       this.Ore=value;
    }    
    public void setDescriere(String value){
       this.Descriere=value;
    }
    public int getID(){
       return this.ID;
    }
    public String getNume(){
       return this.Nume;
    }    
    public int getOre(){
       return this.Ore;
    }    
    public String getDescriere(){
       return this.Descriere;
    }
}
