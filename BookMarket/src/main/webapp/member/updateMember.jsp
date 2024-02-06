<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="dbconn.jsp" %>

<%
 
    String username = (String) session.getAttribute("sessionId");

    
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String sql = "SELECT * FROM member WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        rs = pstmt.executeQuery();

        if (rs.next()) {
           
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 정보 수정</title>
</head>
<body>
    <h1>사용자 정보 수정</h1>
    <form action="./updateMemberProcess.jsp" method="post">
        <label for="password">새 비밀번호: </label>
        <input type="password" id="password" name="password" required>
        <br>
        <label for="name">이름: </label>
        <input type="text" id="name" name="name" value="<%= rs.getString("name") %>" required>
        <br>
        <label for="gender">성별:</label>
        <select id="gender" name="gender">
            <option value="male" <%= rs.getString("gender").equals("male") ? "selected" : "" %>>남성</option>
            <option value="female" <%= rs.getString("gender").equals("female") ? "selected" : "" %>>여성</option>
        </select>
        <br>
        <label for="birth">생년월일:</label>
        <input type="text" id="birth" name="birth" value="<%= rs.getString("birth") %>" required>
        <br>
        <label for="mail">이메일:</label>
        <input type="email" id="mail" name="mail" value="<%= rs.getString("mail") %>" required>
        <br>
        <label for="phone">전화번호:</label>
        <input type="tel" id="phone" name="phone" value="<%= rs.getString("phone") %>" required>
        <br>
        <label for="address">주소:</label>
        <input type="text" id="address" name="address" value="<%= rs.getString("address") %>" required>
        <br>
        <input type="submit" value="수정">
    </form>
</body>
</html>
<%
        } else {
           
            out.println("사용자 정보를 찾을 수 없습니다.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
       
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>

