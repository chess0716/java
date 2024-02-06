<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="dbconn.jsp" %>

<%
    // 세션에서 사용자 아이디 가져오기
    String username = (String) session.getAttribute("sessionId");

    // 회원 삭제 SQL 실행
    PreparedStatement pstmt = null;

    try {
        String sql = "DELETE FROM member WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);

        int result = pstmt.executeUpdate();

        if (result > 0) {
            // 회원 삭제 성공 시 세션 초기화 및 메시지 출력
            session.invalidate(); // 세션 초기화
            out.println("<script>");
            out.println("alert('회원 탈퇴가 완료되었습니다.');");
            out.println("window.location.href='../books.jsp';");
            out.println("</script>");
        } else {
            // 회원 삭제 실패 시 에러 메시지 출력 또는 다른 처리
            out.println("<script>");
            out.println("alert('회원 탈퇴에 실패했습니다.');");
            out.println("window.location.href='./updateMember.jsp';");
            out.println("</script>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>