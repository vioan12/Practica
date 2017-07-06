/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaapplication_practica;
import java.sql.*;


/**
 *
 * @author Ioan
 */

public class t_elevi {
    
    private int ID;
    private String Nume;
    private String Prenume;
    private String Adresa;
    private String Telefon;

    public void setID(int value){
       this.ID=value;
    }
    public void setNume(String value){
       this.Nume=value;
    }    
    public void setPrenume(String value){
       this.Prenume=value;
    }    
    public void setAdresa(String value){
       this.Adresa=value;
    }
    public void setTelefon(String value){
       this.Telefon=value;
    }
    public int getID(){
       return this.ID;
    }
    public String getNume(){
       return this.Nume;
    }    
    public String getPrenume(){
       return this.Prenume;
    }    
    public String getAdresa(){
       return this.Adresa;
    }
    public String setTelefon(){
       return this.Telefon;
    }

}

public class JavaApplication_Practica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    try
    {
      // create our mysql database connection
      String myDriver = "org.gjt.mm.mysql.Driver";
      String myUrl = "jdbc:mysql://localhost:3306/practica";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      
      // our SQL SELECT query. 
      // if you only need a few columns, specify them by name instead of using "*"
      String query = "SELECT * FROM t_note";

      // create the java statement
      Statement st = conn.createStatement();
      
      // execute the query, and get a java resultset
      ResultSet rs = st.executeQuery(query);
      
      // iterate through the java resultset
      while (rs.next())
      {
        int elev_id = rs.getInt("Elev_ID");
        int materie_id = rs.getInt("Materie_ID");
        int nota = rs.getInt("Nota");        
        // print the results
        System.out.format("%s, %s, %s\n", elev_id, materie_id, nota);
      }
      st.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
        
    }
    
}
