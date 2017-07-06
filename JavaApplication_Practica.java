/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaapplication_practica;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Ioan
 */


public class JavaApplication_Practica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    try
    {
      ArrayList<t_elevi> list = new ArrayList<t_elevi>();
      int i;
      // create our mysql database connection
      String myDriver = "org.gjt.mm.mysql.Driver";
      String myUrl = "jdbc:mysql://localhost:3306/practica";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      // our SQL SELECT query. 
      // if you only need a few columns, specify them by name instead of using "*"
      String query = "SELECT * FROM t_elevi";

      // create the java statement
      Statement st = conn.createStatement();
      
      // execute the query, and get a java resultset
      ResultSet rs = st.executeQuery(query);
      
      // iterate through the java resultset
      while (rs.next())
      {
        t_elevi x=new t_elevi();
        x.setID(rs.getInt("ID"));
        x.setNume(rs.getString("Nume"));
        x.setPrenume(rs.getString("Prenume"));
        x.setAdresa(rs.getString("Adresa"));
        x.setTelefon(rs.getString("Telefon"));
        list.add(x);
      }
      st.close();
      // print the results
      for(i=0;i<list.size();i++)
        System.out.format("%s, %s, %s, %s, %s\n", list.get(i).getID(), list.get(i).getNume(),list.get(i).getPrenume(),list.get(i).getAdresa(),list.get(i).getTelefon());
      
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
        
    }
    
}
