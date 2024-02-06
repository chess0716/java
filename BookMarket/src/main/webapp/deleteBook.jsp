<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp"%>
<%
    String bookId = request.getParameter("id");

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Check if the book with the specified ID exists
        String checkSql = "select * from book where b_id = ?";
        pstmt = conn.prepareStatement(checkSql);
        pstmt.setString(1, bookId);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // book exists, proceed with deletion
            String deleteSql = "delete from book where b_id = ?";
            pstmt = conn.prepareStatement(deleteSql);
            pstmt.setString(1, bookId);
            pstmt.executeUpdate();

            response.sendRedirect("editBook.jsp?edit=delete");
        } else {
            // book doesn't exist
            out.println("일치하는 상품이 없습니다");
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Handle the exception appropriately
    } finally {
        // Close resources in a finally block
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace(); 
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace(); 
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
