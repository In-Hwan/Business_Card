<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>DREAM</title>
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
        <!-- 로고 이미지 -->
        <div class="text-center">
            <a href="main.jsp"> <img class="img-responsive center-block img-circle" alt="스마트팜 로그인 로고" src="image/smartpage_login_logo.png"></a>
        </div>
    </div>
</nav>
<!-- 로그인 폼 -->
<div class="container">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <div class="jumbotron" style="padding-top: 20px;">
            <!-- 로그인 액션 -->
            <form method="post" action="loginAction.jsp">
                <h3 style="text-align: center;">로그인</h3>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                </div>
                <input type="submit" class="bin btn-primary form-group-sm" value="로그인">
                <input type="submit" formaction="join.jsp" class="bin btn-primary form-group-sm" value="회원가입">
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
