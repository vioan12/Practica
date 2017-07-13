/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication_practica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

/**
 *
 * @author Ioan
 */
public class database_management {
    private String myDriver = "org.gjt.mm.mysql.Driver";
    private String myUrl = "jdbc:mysql://localhost:3306/practica";
    private Statement st;
    static JPanel err = new JPanel();

    
    public database_management(){
        try{
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "");
          // create our mysql database connection
          // create the java statement
          st = conn.createStatement();
        }
        catch (Exception e)
        {
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public ResultSet execute_query(String query)
    {
        try{
        // execute the query, and get a java resultset
            ResultSet rs = st.executeQuery(query);  
            return rs;
        }
        catch (Exception e)
        {
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
          return null;          
        }
    }
    
        public int execute_update(String update)
    {
        try{
        // execute the query, and get a java resultset
            int rs = st.executeUpdate(update);
            return rs;
        }
        catch (Exception e)
        {
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
          return 0;          
        }
    }
}
