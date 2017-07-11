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
public class controller_t_elevi {
    
    protected ArrayList<t_elevi> list_televi = new ArrayList<t_elevi>();
    public void loaddata()
    {
        try
        {
           ResultSet rs=javaapplication_practica.JavaApplication_Practica.db.execute_query("SELECT * FROM t_elevi");
          // iterate through the java resultset
          if(rs!=null){
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
            NodeList nList = doc.getElementsByTagName("elev");
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
                  document.add(new Paragraph("Prenume : " 
                  + eElement
                     .getElementsByTagName("Prenume")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Adresa : " 
                  + eElement
                     .getElementsByTagName("Adresa")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Telefon : " 
                  + eElement
                     .getElementsByTagName("Telefon")
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
            Element rootElement = doc.createElement("t_elevi");
            doc.appendChild(rootElement);
            for(i=0;i<list_televi.size();i++){
                //  supercars element
                Element elev = doc.createElement("elev");
                rootElement.appendChild(elev);

                // setting attribute to element
                Attr attr = doc.createAttribute("ID");
                attr.setValue(Integer.toString(list_televi.get(i).getID()));
                elev.setAttributeNode(attr);

                // Nume element
                Element nume = doc.createElement("Nume");
                nume.appendChild(
                doc.createTextNode(list_televi.get(i).getNume()));
                elev.appendChild(nume);
                
                // Prenume element
                Element prenume = doc.createElement("Prenume");
                prenume.appendChild(
                doc.createTextNode(list_televi.get(i).getPrenume()));
                elev.appendChild(prenume);
                
                // Adresa element
                Element adresa = doc.createElement("Adresa");
                adresa.appendChild(
                doc.createTextNode(list_televi.get(i).getAdresa()));
                elev.appendChild(adresa);
                
                // Telefon element
                Element telefon = doc.createElement("Telefon");
                telefon.appendChild(
                doc.createTextNode(list_televi.get(i).getTelefon()));
                elev.appendChild(telefon);
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
}
