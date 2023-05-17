<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <title>명함 관리</title>
</head>
<body>
<%
  // 로그인이 된 사람은 로그인 정보를 담을수 있도록 함
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
%>

<nav class="navbar navbar-default">
  <div class="navbar">
    <button type="button" class="navbar-toggler collapse"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>



    <%
      if (userID == null) {

    %>

    <li class="nav navbar-left">
        <ui class="navbar-header bottom-left"><a href="main.jsp">메인</a></ui></br>
        <ui class="navbar-header bottom-left"><a href="logoutAction.jsp">로그아웃</a></ui>
      </li>
    </li>

    <%
      }
    %>

  </div>
</nav>
<div class="container">
  <div class="row">
    <form method="post" action="writeAction.jsp">
      <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
          <thead>
            <tr>
              <th colspan="2" style="background-color: #eeeeee; text-align: center;">명함 등록 양식</th>
            </tr>
            </thead>
            <tbody>
              <tr>
                <tr>
                  <td><input type="text" class="form-control" maxlength="20" name="company" placeholder="회사명"></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control" maxlength="20" name="name" placeholder="이름"></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control" maxlength="20" name="phone" placeholder="핸드폰"></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control" maxlength="20" name="fax" placeholder="FAX"></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control" maxlength="20" name="address" placeholder="주소"></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control" maxlength="20" name="email" placeholder="이메일"></td>
                </tr>
              </tr>
            </tbody>

      </table>
      <input type="submit" class="btn btn-primary pull-right" value="등록">

    </form>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
