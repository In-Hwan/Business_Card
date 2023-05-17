<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>명함 관리</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="navbar">
        <button type="button" class="navbar-toggler collapse"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expanded="false">
            <span> class="icon-bar"></span>
            <span> class="icon-bar"></span>
            <span> class="icon-bar"></span>
            <span> class="icon-bar"></span>
        </button>
        <div class="navbar-left">
            <p style="font-family: 'Impact'; top: 60px; font-size: 60px;">명함 관리</p>
        </div>
    </div>
</nav>
<!-- 회원가입 폼 -->
<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div class="jumbotron" style="padding-top: 20px;">
            <!-- 회원가입 액션 -->
            <form method="post" action="joinAction.jsp">
                <h3 style="text-align: center;">회원가입</h3>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호 확인" name="userPasswordConfirm" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
                </div>
                <input type="submit" class="bin btn-primary form-control" value="회원가입">
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>
