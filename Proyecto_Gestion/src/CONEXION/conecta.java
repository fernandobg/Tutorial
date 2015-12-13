package CONEXION;
import java.io.*;
import java.sql.*;
public class conecta {
    public Connection xcon() {
        Connection cn = null;

      try {    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
              cn=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=BdGestion;user=fer;password=123;");
        if(cn!=null)      {
        javax.swing.JOptionPane.showMessageDialog(null, "ok");
        }
        
       
      } catch (Exception e) {
              cn=null;
               javax.swing.JOptionPane.showMessageDialog(null, e.toString());
      }
 return cn;
     }
}
