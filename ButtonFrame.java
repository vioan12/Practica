/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication_practica;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

/**
 *
 * @author Ioan
 */
public class ButtonFrame extends JFrame implements ActionListener{
        JButton b1 ; // reference to the button object
        JButton b2 ;
        controller_t_elevi control=new controller_t_elevi();

        ButtonFrame(String title)
        {
            super( title );                   // invoke the JFrame constructor
            setLayout( new FlowLayout() );    // set the layout manager
            b1 = new JButton("t_elevi to xml");
            b1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b1ActionPerformed(evt);
                }
            });
            
            b2 = new JButton("t_elevi to pdf");
            b2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b2ActionPerformed(evt);
                }
            });
            control.loaddata();
            add( b1 );
            add( b2 );
            setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
        }
        
        private void b1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            control.afisare_xml("t_elevi.xml");
        }
        
        private void b2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            control.afisare_pdf("t_elevi.xml","t_elevi.pdf");
        }

    @Override
    public void actionPerformed(ActionEvent e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
