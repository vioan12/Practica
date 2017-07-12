/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication_practica;

import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author Ioan
 */
public class controller_t_profesormaterie {
    protected ArrayList<t_profesormaterie> list_tprofesormaterie = new ArrayList<t_profesormaterie>();
    public void loaddata()
    {
        try
        {
           ResultSet rs=javaapplication_practica.JavaApplication_Practica.db.execute_query("SELECT * FROM t_profesormaterie");
          // iterate through the java resultset
          if(rs!=null){
            while (rs.next())
            {
              t_profesormaterie x=new t_profesormaterie();
              x.setAll(rs.getInt("Profesor_ID"), rs.getInt("Materie_ID"));
              list_tprofesormaterie.add(x);
            }
          }
        }
        catch (Exception e)
        {
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
    }
    
    public void afisare_pdf(String filenamefrom, String filenameto)
    {
        int i;
        try{	
            File inputFile = new File(filenamefrom);
            DocumentBuilderFactory dbFactory 
               = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(inputFile);
            doc.getDocumentElement().normalize();
            com.itextpdf.text.Document document = new com.itextpdf.text.Document();
            PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(filenameto));
            writer.setPdfVersion(PdfWriter.VERSION_1_7);
            document.open();
            document.add(new Paragraph("Root element :" 
               + doc.getDocumentElement().getNodeName()));
            NodeList nList = doc.getElementsByTagName("profesormaterie");
            document.add(new Paragraph("----------------------------"));
            document.add(new Paragraph("\n"));
            for (int temp = 0; temp < nList.getLength(); temp++) {
               Node nNode = nList.item(temp);
               document.add(new Paragraph("Current Element :" 
                  + nNode.getNodeName()));
               if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                   Element eElement = (Element) nNode;
                  document.add(new Paragraph("Profesor_ID : " 
                     + eElement
                     .getElementsByTagName("Profesor_ID")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Materie_ID : " 
                     + eElement
                     .getElementsByTagName("Materie_ID")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("\n"));
            }
         }
            document.close();        
        }
        catch (Exception e)
        {
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
    }
    
    public void afisare_xml(String filename)
    {
        try{
            int i;
            DocumentBuilderFactory dbFactory =
            DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = 
               dbFactory.newDocumentBuilder();
            Document doc = dBuilder.newDocument();
            // root element
            Element rootElement = doc.createElement("t_profesormaterie");
            doc.appendChild(rootElement);
            for(i=0;i<list_tprofesormaterie.size();i++){
                //  supercars element
                Element profesormaterie = doc.createElement("profesormaterie");
                rootElement.appendChild(profesormaterie);

                // Nume element
                Element profesorid = doc.createElement("Profesor_ID");
                profesorid.appendChild(
                doc.createTextNode(Integer.toString(list_tprofesormaterie.get(i).getProfesor_ID())));
                profesormaterie.appendChild(profesorid);
                
                // Ore element
                Element materieid = doc.createElement("Materie_ID");
                materieid.appendChild(
                doc.createTextNode(Integer.toString(list_tprofesormaterie.get(i).getMaterie_ID())));
                profesormaterie.appendChild(materieid);                
            }

            // write the content into xml file
            TransformerFactory transformerFactory =
            TransformerFactory.newInstance();
            Transformer transformer =
            transformerFactory.newTransformer();
            DOMSource source = new DOMSource(doc);
            StreamResult result =
            new StreamResult(new File(filename));
            transformer.transform(source, result);
        }
        catch (Exception e){
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
    }
    
    public void sql_adaugare(String filename)
    {
        String sql = "INSERT INTO `t_profesormaterie` (`Profesor_ID`, `Materie_ID`) VALUES";
        BufferedReader br = null;
        FileReader fr = null;
	try {
                
            fr = new FileReader(filename);
            br = new BufferedReader(fr);
            String sCurrentLine;
            br = new BufferedReader(new FileReader(filename));
            while ((sCurrentLine = br.readLine()) != null) {
                sql = sql.concat(" ");
                sql = sql.concat(sCurrentLine);
            }
            int rs=javaapplication_practica.JavaApplication_Practica.db.execute_update(sql);
            if (br != null)
                br.close();
            if (fr != null)
		fr.close();

        }
        catch (Exception e){
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
    }
}
