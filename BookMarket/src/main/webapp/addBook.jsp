<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="resources/js/validation.js"></script>

<title><fmt:message key="title"/></title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
    <fmt:setBundle basename="message"/>
	<jsp:include page="bookmenu.jsp"/>
    <div class="jumbotron">
        <div class="container"> 
            <h1 class="display-3"><fmt:message key="title"/></h1>
        </div>
    </div>
    <div class="container">
    <div class="text-right">
            <a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
        </div>
    
    	<form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
    	<div class="form-group row">
    		<label class="col-sm-2"> <fmt:message key="bookId" /></label>
    		<div class="col-sm-3">
    			<input type="text" name="bookId" id="bookId"class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="name"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="name" id="name" class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="unitPrice" id="unitPrice" class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="author"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="author" class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="publisher"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="publisher" class="form-control">
    		</div>
    	</div>
    	
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="description"/></label>
    		<div class="col-sm-5">
    			<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
    			</div>
            </div>
         <div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="category"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="category" class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="unitInStock" id="unitInStock" class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="totalPages"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="totalPages" class="form-control">
    		</div>
    	</div>
    	<div class="form-group row">
    		<label class="col-sm-2"><fmt:message key="releaseDate"/></label>
    		<div class="col-sm-3">
    			<input type="text" name="releaseDate" class="form-control">
    		</div>
    	</div>
    	
    	
    	
    	<div class="form-group row">
    		<label class="col-sm-2"></label>
    		<div class="col-sm-5">
                    <input type="radio" name="condition" value="New">
                    <fmt:message key="condition_New" />
                    <input type="radio" name="condition" value="Old">
                    <fmt:message key="condition_Old" />
                    <input type="radio" name="condition" value="Refurbished">
                    <fmt:message key="condition_Refurbished" />
                </div>
    	</div>
    	  <div class="form-group row">
                <label class="col-sm-2" for="image"><fmt:message key="image"/></label>
                <div class="col-sm-5">
                    <input type="file" name="image" id="image" class="form-control">
                </div>
            </div>
    	<div class="form-group row">
    		<div class="col-sm-offset-2 col-sm-10">
    			<input type="button"  class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddBook()">
    		</div>
    	</div>
        </form>
    </div>
  
</body>
</html>