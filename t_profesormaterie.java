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
public class t_profesormaterie {
    private int Profesor_ID;
    private int Materie_ID;

    public void setProfesor_ID(int value){
       this.Profesor_ID=value;
    }
    public void setMaterie_ID(int value){
       this.Materie_ID=value;
    }    
    public int getProfesor_ID(){
       return this.Profesor_ID;
    }
    public int getMaterie_ID(){
       return this.Materie_ID;
    }
    public void setAll(int value, int value1){
        this.Profesor_ID=value;
        this.Materie_ID=value1;
    }
}
