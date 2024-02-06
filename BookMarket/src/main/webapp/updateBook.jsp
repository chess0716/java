<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>상품 수정</title>
</head>

<body>
    <jsp:include page="bookmenu.jsp"/>
    <div class="jumbotron">
        <div class="container"> 
            <h1 class="display-3">상품 수정</h1>
        </div>
    </div>
   
    <%@include file="dbconn.jsp" %>
    <%
        String bookId = request.getParameter("id");
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            String sql = "select * from book where b_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bookId);
            rs = pstmt.executeQuery();
                    
            if (rs.next()) {
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="/upload/<%= rs.getString("b_fileName") %>" style="width:100%">
            </div>
            <div class="col-md-7">
                <form name="newbook" action="./processUpdateBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label class="col-sm-2">상품 코드</label>
                        <div class="col-sm-3">
                            <input type="text" id="bookId" name="bookId" class="form-control" value="<%= rs.getString("b_id") %>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">상품 명</label>
                        <div class="col-sm-3">
                            <input type="text" id="name" name="name" class="form-control" 
                            value="<%= rs.getString("b_name") %>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">가격</label>
                        <div class="col-sm-3">
                            <input type="text" id="unitPrice" name="unitPrice" class="form-control" 
                            value="<%= rs.getString("b_unitPrice") %>">
                        </div>
                    </div>
                    <div class="form-group row">
    <label class="col-sm-2">상세설명</label>
    <div class="col-sm-5">
        <textarea id="description" name="description" cols="50" rows="2" class="form-control"><%=rs.getString("b_description") %></textarea>
    </div>
</div>

                    <div class="form-group row">
                        <label class="col-sm-2">제조사</label>
                        <div class="col-sm-3">
                            <input type="text" id="publisher" name="publisher" class="form-control" 
                            value="<%= rs.getString("b_publisher") %>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">분류</label>
                        <div class="col-sm-3">
                            <input type="text" id="category" name="category" class="form-control" 
                            value="<%= rs.getString("b_category") %>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">재고 수</label>
                        <div class="col-sm-3">
                            <input type="text" id="unitInStock" name="unitsInStock" class="form-control" 
                            value="<%= rs.getString("b_unitsInStock") %>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">상태</label>
                        <div class="col-sm-5">
                            <input type="radio" name="condition" value="New">
                           신규제품
                           <input type="radio" name="condition" value="Old">
                           중고제품
                           <input type="radio" name="condition" value="Refurbished">
                           재생제품
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2">이미지</label>
                        <div class="col-sm-5">
                            <input type="file"  name="bookImage" class="form-control" 
                            value="<%= rs.getString("b_category") %>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" class="btn btn-primary" value="등록">
                        
                        </div>
                        
                    </div>
                    
                </form>
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
    <hr>
    <jsp:include page="bookfooter.jsp" />
</body>
</html>