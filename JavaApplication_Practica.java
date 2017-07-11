/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaapplication_practica;

import java.awt.Dimension;
import java.awt.Toolkit;

/**
 *
 * @author Ioan
 */


public class JavaApplication_Practica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ButtonFrame frm = new ButtonFrame("List of Buttons");
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        frm.setSize( 300, 80 );
        frm.setResizable(false);
        frm.setLocation(dim.width/2-frm.getSize().width/2, dim.height/2-frm.getSize().height/2);
        frm.setVisible( true );
    }
    
}
