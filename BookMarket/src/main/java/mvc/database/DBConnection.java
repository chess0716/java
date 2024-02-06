package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException  {		
		Connection conn = null;		
	
		String url = "jdbc:mysql://localhost:3306/WebMarketDB";
		String user = "webmarketadmin";
		String password = "webmarket";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);	
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			throw new ClassNotFoundException("JDBC 드라이버를 찾을 수 없습니다.");
		} catch (SQLException e) {
			// 데이터베이스 연결 오류 처리
			e.printStackTrace();
			throw new SQLException("데이터베이스 연결 중 오류가 발생했습니다.");
		}		
		
		return conn;
	}	
}