<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>도서 상세 정보</title>
    <script type="text/javascript">
        function addToCart() {
            if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
                document.addForm.submit();
            } else {
                document.addForm.reset();
            }
        }
    </script>
    <%@ include file="dbconn.jsp" %>
    <%
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            String bookId = request.getParameter("id");
            String sql = "SELECT * FROM book WHERE b_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bookId);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
    %>
</head>

<body>
    <jsp:include page="bookmenu.jsp"/>
    <div class="jumbotron">
        <div class="container"> 
            <h1 class="display-3">도서 정보</h1>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="/upload/<%=rs.getString("b_fileName")%>" style="width:100%">
            </div>
            <div class="col-md-4">
                <h3><%=rs.getString("b_name") %></h3>
                <p><%=rs.getString("b_description") %></p>
                <p><b>도서 코드 :</b><span class="badge badge-danger"><%=rs.getString("b_id") %></span></p>
                <p><b>출판사</b> : <%=rs.getString("b_publisher") %></p>
                <p><b>저자</b> : <%=rs.getString("b_author") %></p>
                <p><b>분류</b> : <%=rs.getString("b_category") %></p>
                <p><b>재고 수</b> : <%=rs.getString("b_unitsInStock") %></p>
                <h4><%=rs.getString("b_unitPrice") %>원</h4>
            </div>
        </div>
        <hr>
        <form name="addForm" action="./addCart.jsp?id=<%=rs.getString("b_id")%>" method="post">
            <p><a href="#" class="btn btn-info" onclick="addToCart()">도서 주문 &raquo;</a></p>
            <p><a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a></p>
            <p><a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a></p>
        </form>
    </div>

    <jsp:include page="bookfooter.jsp" />
</body>
</html>
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

