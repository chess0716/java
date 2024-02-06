<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<%
   
    session.removeAttribute("sessionId");

   
    response.sendRedirect("../books.jsp");
%>
