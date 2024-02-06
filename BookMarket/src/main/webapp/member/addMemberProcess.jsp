<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="dbconn.jsp" %>

<%
   
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    
    PreparedStatement pstmt = null;

    try {
        String sql = "INSERT INTO member (id, password, name, gender, birth, mail, phone, address, regist_day) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, now())";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, gender);
        pstmt.setString(5, birth);
        pstmt.setString(6, mail);
        pstmt.setString(7, phone);
        pstmt.setString(8, address);

        int result = pstmt.executeUpdate();

        if (result > 0) {
            
            response.sendRedirect("./loginMember.jsp");
        } else {
           
            out.println("회원 추가에 실패했습니다.");
        }
    } catch (SQLException e) {
       
        out.println("SQLException: " + e.getMessage());
        out.println("SQLState: " + e.getSQLState());
        out.println("VendorError: " + e.getErrorCode());
        e.printStackTrace();
    } finally {
        
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>




