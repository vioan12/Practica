/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication_practica;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.sql.*;
import java.util.*;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Attr;
import java.io.File;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.*;

/**
 *
 * @author Ioan
 */
public class controller_t_materii {
    
    protected ArrayList<t_materii> list_materii = new ArrayList<t_materii>();
    public void loaddata()
    {
        try
        {
           ResultSet rs=javaapplication_practica.JavaApplication_Practica.db.execute_query("SELECT * FROM t_materii");
          // iterate through the java resultset
          if(rs!=null){
            while (rs.next())
            {
              t_materii x=new t_materii();
              x.setAll(rs.getInt("ID"), rs.getString("Nume"), rs.getInt("Ore"), rs.getString("Descriere"));
              list_materii.add(x);
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
            NodeList nList = doc.getElementsByTagName("materie");
            document.add(new Paragraph("----------------------------"));
            document.add(new Paragraph("\n"));
            for (int temp = 0; temp < nList.getLength(); temp++) {
               Node nNode = nList.item(temp);
               document.add(new Paragraph("Current Element :" 
                  + nNode.getNodeName()));
               if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                  Element eElement = (Element) nNode;
                  document.add(new Paragraph("ID : " 
                     + eElement.getAttribute("ID")));
                  document.add(new Paragraph("Nume : " 
                     + eElement
                     .getElementsByTagName("Nume")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Ore : " 
                  + eElement
                     .getElementsByTagName("Ore")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Descriere : " 
                  + eElement
                     .getElementsByTagName("Descriere")
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
            Element rootElement = doc.createElement("t_materii");
            doc.appendChild(rootElement);
            for(i=0;i<list_materii.size();i++){
                //  supercars element
                Element materie = doc.createElement("materie");
                rootElement.appendChild(materie);

                // setting attribute to element
                Attr attr = doc.createAttribute("ID");
                attr.setValue(Integer.toString(list_materii.get(i).getID()));
                materie.setAttributeNode(attr);

                // Nume element
                Element nume = doc.createElement("Nume");
                nume.appendChild(
                doc.createTextNode(list_materii.get(i).getNume()));
                materie.appendChild(nume);
                
                // Ore element
                Element ore = doc.createElement("Ore");
                ore.appendChild(
                doc.createTextNode(Integer.toString(list_materii.get(i).getOre())));
                materie.appendChild(ore);
                
                // Descriere element
                Element descriere = doc.createElement("Descriere");
                descriere.appendChild(
                doc.createTextNode(list_materii.get(i).getDescriere()));
                materie.appendChild(descriere);
                
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
        String sql = "INSERT INTO `t_materii` (`ID`, `Nume`, `Ore`, `Descriere`) VALUES";
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
