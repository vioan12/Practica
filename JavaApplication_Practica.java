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
        controller_t_elevi control=new controller_t_elevi();
        control.loaddata();
        control.afisare_xml("t_elevi.xml");
        control.afisare_pdf("t_elevi.xml","t_elevi.pdf");
    }
    
}
