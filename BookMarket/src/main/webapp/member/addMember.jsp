<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">회원가입</h2>
        <form action="addMemberProcess.jsp" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="id">아이디:</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="name">이름:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="gender">성별:</label>
                <select class="form-control" id="gender" name="gender">
                    <option value="male">남성</option>
                    <option value="female">여성</option>
                </select>
            </div>
            <div class="form-group">
                <label for="birth">생년월일:</label>
                <input type="text" class="form-control" id="birth" name="birth" placeholder="YYYY-MM-DD" required>
            </div>
            <div class="form-group">
                <label for="mail">이메일:</label>
                <input type="email" class="form-control" id="mail" name="mail" required>
            </div>
            <div class="form-group">
                <label for="phone">전화번호:</label>
                <input type="tel" class="form-control" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="address">주소:</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>
            <button type="submit" class="btn btn-primary">가입하기</button>
        </form>
    </div>

</body>
</html>

