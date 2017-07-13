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
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author Ioan
 */
public class controller_t_note {
    protected ArrayList<t_note> list_tnote = new ArrayList<t_note>();
    static JPanel err = new JPanel();

    public void loaddata()
    {
        try
        {
           ResultSet rs=javaapplication_practica.JavaApplication_Practica.db.execute_query("SELECT * FROM t_note");
          // iterate through the java resultset
          if(rs!=null){
            while (rs.next())
            {
              t_note x=new t_note();
              x.setAll(rs.getInt("Elev_ID"), rs.getInt("Materie_ID"), rs.getInt("Nota"));
              list_tnote.add(x);
            }
          }
        }
        catch (Exception e)
        {
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
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
            NodeList nList = doc.getElementsByTagName("nota");
            document.add(new Paragraph("----------------------------"));
            document.add(new Paragraph("\n"));
            for (int temp = 0; temp < nList.getLength(); temp++) {
               Node nNode = nList.item(temp);
               document.add(new Paragraph("Current Element :" 
                  + nNode.getNodeName()));
               if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                   Element eElement = (Element) nNode;
                  document.add(new Paragraph("Elev_ID : " 
                     + eElement
                     .getElementsByTagName("Elev_ID")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Materie_ID : " 
                     + eElement
                     .getElementsByTagName("Materie_ID")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("Nota : " 
                  + eElement
                     .getElementsByTagName("Nota")
                     .item(0)
                     .getTextContent()));
                  document.add(new Paragraph("\n"));
            }
         }
            document.close();        
        }
        catch (Exception e)
        {
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
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
            Element rootElement = doc.createElement("t_note");
            doc.appendChild(rootElement);
            for(i=0;i<list_tnote.size();i++){
                //  supercars element
                Element note = doc.createElement("nota");
                rootElement.appendChild(note);

                // Nume element
                Element elevid = doc.createElement("Elev_ID");
                elevid.appendChild(
                doc.createTextNode(Integer.toString(list_tnote.get(i).getElev_ID())));
                note.appendChild(elevid);
                
                // Ore element
                Element materieid = doc.createElement("Materie_ID");
                materieid.appendChild(
                doc.createTextNode(Integer.toString(list_tnote.get(i).getMaterie_ID())));
                note.appendChild(materieid);
                
                // Descriere element
               Element nota = doc.createElement("Nota");
                nota.appendChild(
                doc.createTextNode(Integer.toString(list_tnote.get(i).getNota())));
                note.appendChild(nota);
                
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
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void sql_adaugare(String filename)
    {
        String sql = "INSERT INTO `t_note` (`Elev_ID`, `Materie_ID`, `Nota`) VALUES";
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
          JOptionPane.showMessageDialog(err, e , "Got an exception! ", JOptionPane.ERROR_MESSAGE);
        }
    }
}
