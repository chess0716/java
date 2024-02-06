<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="dto.Book" %>
<%
    String id = request.getParameter("id");

    if (id == null || id.trim().equals("")) {
        response.sendRedirect("Books.jsp");
        return;
    }

    PreparedStatement pstmt = null;
    ResultSet rs = null;
    ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");

    boolean hasException = false;

    try {
        // 상품 조회
        String sql = "SELECT * FROM book WHERE b_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        rs = pstmt.executeQuery();

        // 장바구니에 이미 상품이 있는 경우 바로 리다이렉션을 하고 함수를 종료하도록 수정
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                Book goodsQnt = list.get(i);
                if (goodsQnt.getBookId().equals(id)) {
                    int orderQuantity = goodsQnt.getQuantity() + 1;
                    goodsQnt.setQuantity(orderQuantity);
                    response.sendRedirect("book.jsp?id=" + id);
                    return;
                }
            }
        }

        // 상품이 존재하지 않는 경우 예외 처리를 위해 hasException을 사용하여 리다이렉션하도록 수정
        if (rs.next()) {
            Book goods = new Book();
            goods.setBookId(rs.getString("b_id"));
            goods.setName(rs.getString("b_name"));
            goods.setUnitPrice(rs.getInt("b_unitPrice"));
            goods.setDescription(rs.getString("b_description"));
            goods.setCategory(rs.getString("b_category"));
            goods.setPublisher(rs.getString("b_publisher"));
            goods.setUnitsInStock(rs.getLong("b_unitsInStock"));
            goods.setCondition(rs.getString("b_condition"));
            goods.setFileName(rs.getString("b_fileName"));

            if (list == null) {
                list = new ArrayList<Book>();
                session.setAttribute("cartlist", list);
            }
            goods.setQuantity(1);
            list.add(goods);
            response.sendRedirect("book.jsp?id=" + id);
        } else {
            hasException = true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
        hasException = true;
    } finally {
        // 리소스 해제
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
        if (hasException) {
            response.sendRedirect("exceptionNoBookId.jsp");
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
