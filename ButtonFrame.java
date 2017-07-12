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
        JButton b3 ;
        JButton b4 ;
        JButton b5 ;
        JButton b6 ;
        controller_t_elevi t_elevi=new controller_t_elevi();
        controller_t_materii t_materii=new controller_t_materii();

        ButtonFrame(String title)
        {
            super( title );                   // invoke the JFrame constructor
            setLayout( new FlowLayout() );    // set the layout manager
            JLabel l1 = new JLabel("t_elevi");
            JLabel l2 = new JLabel("t_materii");
            b1 = new JButton("to xml");
            b1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b1ActionPerformed(evt);
                }
            });
            
            b2 = new JButton("xml to pdf");
            b2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b2ActionPerformed(evt);
                }
            });
            
            b3 = new JButton("interogare SQL");
            b3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b3ActionPerformed(evt);
                }
            });
            
            b4 = new JButton("to xml");
            b4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b4ActionPerformed(evt);
                }
            });
            
            b5 = new JButton("xml to pdf");
            b5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b5ActionPerformed(evt);
                }
            });
            
            b6 = new JButton("interogare SQL");
            b6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b6ActionPerformed(evt);
                }
            });
            
            t_elevi.loaddata();
            t_materii.loaddata();
            add(l1);
            add( b1 );
            add( b2 );
            add( b3 );
            
            add(l2);
            add( b4 );
            add( b5 );
            add( b6 );

            setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
        }
        
        private void b1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_elevi.afisare_xml("t_elevi.xml");
        }
        
        private void b2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_elevi.afisare_pdf("t_elevi.xml","t_elevi.pdf");
        }
        
        private void b3ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_elevi.sql_adaugare("t_elevi.txt");
            t_elevi.loaddata();
        }
        
        private void b4ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_materii.afisare_xml("t_materii.xml");
        }
        
        private void b5ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_materii.afisare_pdf("t_materii.xml","t_materii.pdf");
        }
        
        private void b6ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_materii.sql_adaugare("t_materii.txt");
            t_materii.loaddata();
        }

    @Override
    public void actionPerformed(ActionEvent e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
