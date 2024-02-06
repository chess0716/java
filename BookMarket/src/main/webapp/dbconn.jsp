<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> dbconn </title>
</head>
<body>
	<%
    Connection conn = null;

    try {
        String url = "jdbc:mysql://localhost:3306/BookMarketDB";
        String user = "bookmarketadmin";
        String password = "bookmarket";

        Class.forName("com.mysql.cj.jdbc.Driver");

        conn = DriverManager.getConnection(url, user, password);

      

    } catch (SQLException ex) {
     
    	 out.println("데이터베이스 연결 중 오류가 발생했습니다. <br>" + ex.getMessage());
    } 
    
%>
</body>
</html>