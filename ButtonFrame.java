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
        JButton b7 ;
        JButton b8 ;
        JButton b9 ;
        JButton b10 ;
        JButton b11 ;
        JButton b12 ;
        JButton b13 ;
        JButton b14 ;
        JButton b15 ;
        JPanel pMeasure = new JPanel();
        controller_t_elevi t_elevi=new controller_t_elevi();
        controller_t_materii t_materii=new controller_t_materii();
        controller_t_note t_note=new controller_t_note();
        controller_t_profesori t_profesori= new controller_t_profesori();
        controller_t_profesormaterie t_profesormaterie=new controller_t_profesormaterie();

        ButtonFrame(String title)
        {
            super( title );                   // invoke the JFrame constructor
            setLayout( new FlowLayout() );    // set the layout manager
            JLabel l1 = new JLabel("t_elevi");
            JLabel l2 = new JLabel("t_materii");
            JLabel l3 = new JLabel("t_note");
            JLabel l4 = new JLabel("t_profesori");
            JLabel l5 = new JLabel("t_profesormaterie");

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
            
            b7 = new JButton("to xml");
            b7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b7ActionPerformed(evt);
                }
            });
            
            b8 = new JButton("xml to pdf");
            b8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b8ActionPerformed(evt);
                }
            });
            
            b9 = new JButton("interogare SQL");
            b9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b9ActionPerformed(evt);
                }
            });
            
            b10 = new JButton("to xml");
            b10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b10ActionPerformed(evt);
                }
            });
            
            b11 = new JButton("xml to pdf");
            b11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b11ActionPerformed(evt);
                }
            });
            
            b12 = new JButton("interogare SQL");
            b12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b12ActionPerformed(evt);
                }
            });
            
            b13 = new JButton("to xml");
            b13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b13ActionPerformed(evt);
                }
            });
            
            b14 = new JButton("xml to pdf");
            b14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b14ActionPerformed(evt);
                }
            });
            
            b15 = new JButton("interogare SQL");
            b15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                    b15ActionPerformed(evt);
                }
            });
            t_elevi.loaddata();
            t_materii.loaddata();
            t_note.loaddata();
            t_profesori.loaddata();
            t_profesormaterie.loaddata();
            
            pMeasure.setLayout(new BoxLayout(pMeasure, BoxLayout.Y_AXIS));
            add(l1);
            add( b1 );
            add( b2 );
            add( b3 );
            
            add(l2);
            add( b4 );
            add( b5 );
            add( b6 );
            
            add(l3);
            add( b7 );
            add( b8 );
            add( b9 );
            
            add(l4);
            add( b10 );
            add( b11 );
            add( b12 );
            
            add(l5);
            add( b13 );
            add( b14 );
            add( b15 );


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
        
        private void b7ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_note.afisare_xml("t_note.xml");
        }
        
        private void b8ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_note.afisare_pdf("t_note.xml","t_note.pdf");
        }
        
        private void b9ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_note.sql_adaugare("t_note.txt");
            t_note.loaddata();
        }

        private void b10ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_profesori.afisare_xml("t_profesori.xml");
        }
        
        private void b11ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_profesori.afisare_pdf("t_profesori.xml","t_profesori.pdf");
        }
        
        private void b12ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_profesori.sql_adaugare("t_profesori.txt");
            t_profesori.loaddata();
        }
        
        private void b13ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_profesormaterie.afisare_xml("t_profesormaterie.xml");
        }
        
        private void b14ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_profesormaterie.afisare_pdf("t_profesormaterie.xml","t_profesormaterie.pdf");
        }
        
        private void b15ActionPerformed(java.awt.event.ActionEvent evt) {                                         
            t_profesormaterie.sql_adaugare("t_profesormaterie.txt");
            t_profesormaterie.loaddata();
        }
    @Override
    public void actionPerformed(ActionEvent e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
