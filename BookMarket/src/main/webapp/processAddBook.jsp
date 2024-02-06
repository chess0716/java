<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

  
    String realFolder = "C:\\Users\\it\\Desktop\\upload";
    int maxSize = 5 * 1024 * 1024;
    String encType = "utf-8";

 
    MultipartRequest multi = new MultipartRequest(request, realFolder,
            maxSize, encType, new DefaultFileRenamePolicy());

    String bookId = multi.getParameter("bookId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String author = multi.getParameter("author");
    String publisher = multi.getParameter("publisher");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");
    String unitsInStock = multi.getParameter("unitsInStock");
    String totalPages = multi.getParameter("totalPages");
    String releaseDate = multi.getParameter("releaseDate");
    String condition = multi.getParameter("condition");

    Integer price;

    if (unitPrice == null || unitPrice.isEmpty()) {
        price = 0;
    } else {
        price = Integer.valueOf(unitPrice);
    }

    long stock;

    if (unitsInStock == null || unitsInStock.isEmpty()) {
        stock = 0;
    } else {
        stock = Long.valueOf(unitsInStock);
    }

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    PreparedStatement pstmt = null;

    try {
       
    	String sql = "INSERT INTO book VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, bookId);
    	pstmt.setString(2, name);
    	pstmt.setInt(3, price);
    	pstmt.setString(4, author);
    	pstmt.setString(5, publisher);
    	pstmt.setString(6, description); 
    	pstmt.setString(7, category);
    	pstmt.setLong(8, stock);
    	pstmt.setInt(9, Integer.parseInt(totalPages));  
    	pstmt.setInt(10, Integer.parseInt(releaseDate)); 
    	pstmt.setString(11, condition);
    	pstmt.setString(12, fileName);


        // 파일 업로드가 성공한 경우에만 DB에 등록
        if (fileName != null) {
            pstmt.executeUpdate();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // DB 연결 리소스 해제
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

    // Post/Redirect/Get 패턴을 사용하여 중복된 데이터 전송 방지
    response.sendRedirect("books.jsp");
%>


