package bank.doa;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionClass {
	 public Connection connectionMeathod()  {
	        Connection con=null;
	        try{
	            Class.forName("oracle.jdbc.OracleDriver");
	             con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "123456789");
	            return con;
	        }
	        catch (Exception e){
	            System.out.println(e);
	            return null;
	        }
	    }
}
