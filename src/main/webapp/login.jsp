<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>명함 관리</title>
    <style>
        body {
            background: #222D32;
            font-family: 'Roboto', sans-serif;
        }

        .login-box {
            position: absolute;
            padding: 20px;
            width: 300px;
            height: auto;
            margin-top: 75px;
            top:35%;
            left: 50%;
            background: #1A2226;
            text-align: center;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
            transform: translate(-50%, -50%);
        }

        .form-group {
            margin-bottom: 40px;
            outline: 0px;
        }

        .btn-outline-primary:hover {
            background-color: #0DB8DE;
            right: 0px;
        }
    </style>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<!-- 로그인 폼 -->
<div class="container">
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-6 login-box" style="padding-top: 20px;">
            <div class="form-group">
                <!-- 로그인 액션 -->
                <form method="post" action="loginAction.jsp">
                    <h3 style="text-align: center; color: #dde0e3">로그인</h3>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                    </div>
                    <input type="submit" class="btn btn-outline-primary form-group-sm" value="로그인">
                    <input type="submit" formaction="join.jsp" class="btn btn-outline-primary form-group-sm" value="회원가입">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I
