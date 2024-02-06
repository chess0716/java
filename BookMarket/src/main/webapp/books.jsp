<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>도서 목록</title>
</head>

<body>
    <jsp:include page="bookmenu.jsp"/>
    <div class="jumbotron">
        <div class="container"> 
            <h1 class="display-3">도서 목록</h1>
        </div>
    </div>
   
    <div class="container">
        <div class="row">
            <%@include file="dbconn.jsp" %>
            <%
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                try {
                    String sql = "select * from book";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    
                    while (rs.next()) {
            %>
            <div class="col-md-12 mb-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <img src="/upload/<%=rs.getString("b_fileName")%>" style="width:100%;">
                            </div>
                            <div class="col-md-9">
                                <h5 class="card-title"><%= "[" + rs.getString("b_category") + "] " + rs.getString("b_name") %></h5>
                                <p class="card-text"><%=rs.getString("b_description") %></p>
                                <p class="card-text"><%=rs.getString("b_author") +"  |   "+rs.getString("b_releaseDate")+"   |  " +rs.getString("b_unitPrice")%>원</p>
                                <a href="./book.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-secondary" role="button">상세정보 &raquo;</a>
                                 <a href="./updateBook.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-secondary" role="button">수정 &raquo;</a>
                                <a href="./deleteBook?bookId=<%=rs.getString("b_id")%>" class="btn btn-danger" role="button" onclick="return confirm('정말 삭제 하겠습니까?')">삭제</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                    }
                } catch (SQLException ex) {
                    out.println("SQLException: " + ex.getMessage());
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        out.println("PreparedStatement, ResultSet, Connection을 닫을 때 오류 발생 - " + e.getMessage());
                    }
                }
            %>
        </div>
        <hr>
    </div>
    <jsp:include page="bookfooter.jsp" />
</body>
</html>


