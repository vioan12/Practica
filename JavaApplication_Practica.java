/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaapplication_practica;
import java.sql.*;
import java.util.*;
import java.io.*;

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
    }
    
}
