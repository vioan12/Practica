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
public class t_note {
    private int Elev_ID;
    private int Materie_ID;
    private int Nota;

    public void setElev_ID(int value){
       this.Elev_ID=value;
    }
    public void setMaterie_ID(int value){
       this.Materie_ID=value;
    }    
    public void setNota(int value){
       this.Nota=value;
    }
    public int getElev_ID(){
       return this.Elev_ID;
    }
    public int getMaterie_ID(){
       return this.Materie_ID;
    } 
    public int getNota(){
       return this.Nota;
    }
    public void setAll(int value, int value1, int value2){
        this.Elev_ID=value;
        this.Materie_ID=value1;
        this.Nota=value2;
    }
}
