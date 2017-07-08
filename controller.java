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
public class controller {
    
    protected ArrayList<t_elevi> list_televi = new ArrayList<t_elevi>();
    public void televi()
    {
        try
        {
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
            list_televi.add(x);
          }
          st.close();
        }
        catch (Exception e)
        {
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
    }
    
    public void televi_afisare(String filename)
    {
        int i;
        try{
            PrintWriter writer = new PrintWriter(filename, "UTF-8");      
          // print the results
          for(i=0;i<list_televi.size();i++)
            writer.printf("%s, %s, %s, %s, %s\n", list_televi.get(i).getID(), list_televi.get(i).getNume(),list_televi.get(i).getPrenume(),list_televi.get(i).getAdresa(),list_televi.get(i).getTelefon());
          writer.close();
        }
        catch (Exception e)
        {
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
    }
}

