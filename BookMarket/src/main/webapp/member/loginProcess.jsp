<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="dbconn.jsp" %>

<%
    // 사용자가 입력한 아이디와 비밀번호 가져오기
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
      
        String sql = "SELECT * FROM member WHERE id = ? AND password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);

     
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // 로그인 성공 시 세션에 사용자 정보 저장하고 다음 페이지로 이동
            session.setAttribute("sessionId", id);
            
            response.sendRedirect("../books.jsp");
        } else {
          
            response.sendRedirect("./loginMember.jsp");
           
            out.println("<script>");
            out.println("alert('아이디 또는 비밀번호가 올바르지 않습니다.');");
            out.println("</script>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>

