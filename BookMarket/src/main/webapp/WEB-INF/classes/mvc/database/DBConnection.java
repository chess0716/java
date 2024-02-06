package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection()throws SQLException, ClassNotFoundException  {		

	
	    Connection conn = null;

	    try {
	        String url = "jdbc:mysql://localhost:3306/WebMarketDB";
	        String user = "webmarketadmin";
	        String password = "webmarket";

	        Class.forName("com.mysql.cj.jdbc.Driver");

	        conn = DriverManager.getConnection(url, user, password);

	      

	    } catch (SQLException ex) {
	     
	    	 out.println("데이터베이스 연결 중 오류가 발생했습니다. <br>" + ex.getMessage());
	    } 
	    
	
}
