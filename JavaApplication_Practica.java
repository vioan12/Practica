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


public class JavaApplication_Practica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        controller control=new controller();
        control.televi();
        control.televi_afisare("t_elevi.txt");
        control.televi_xml("t_elevi.xml");
    }
    
}
