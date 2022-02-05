package classes;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConectaBD {
	public String usuario="root";
	public String senha="";
	
	public Connection Conectar() throws Exception 
	{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/empregos";
	        java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
	        return conn;
	}
}
