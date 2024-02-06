<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="dbconn.jsp" %>

<%
  
    String username = (String) session.getAttribute("sessionId");

   
    String newPassword = request.getParameter("password");
    String newName = request.getParameter("name");
    String newGender = request.getParameter("gender");
    String newBirth = request.getParameter("birth");
    String newMail = request.getParameter("mail");
    String newPhone = request.getParameter("phone");
    String newAddress = request.getParameter("address");

    PreparedStatement pstmt = null;

    try {
        String sql = "UPDATE member SET password = ?, name = ?, gender = ?, birth = ?, mail = ?, phone = ?, address = ? WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, newPassword);
        pstmt.setString(2, newName);
        pstmt.setString(3, newGender);
        pstmt.setString(4, newBirth);
        pstmt.setString(5, newMail);
        pstmt.setString(6, newPhone);
        pstmt.setString(7, newAddress);
        pstmt.setString(8, username);

        int result = pstmt.executeUpdate();

        if (result > 0) {
         
            response.sendRedirect("../books.jsp");
        } else {
          
        	out.println("회원 정보 수정에 실패했습니다.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
      
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>


