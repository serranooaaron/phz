package clases;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Bdconexion {
	
    
    public String driver = "com.mysql.jdbc.Driver";	// Librería de MySQL
    public String username = "root";	// Nombre de usuario
    public String password = "root";	// Clave de usuario
    
    public String database = "GestBd";	// Nombre de la base de datos
    public String hostname = "localhost";// Host
    public String port = "3306";	// Puerto
    public String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database + "?useSSL=false";	// Ruta de la base de datos (desactivamos el uso de SSL con "?useSSL=false")

    public Connection conectarMySQL() {
        Connection conn = null;
        
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
            if(conn!=null) {
            	
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null,"Error" + e.toString());
        }
        return conn;
    }
}

