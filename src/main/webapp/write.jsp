<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="name.NameDAO" %>
<%@ page import="name.Name" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <title>명함 관리</title>
</head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body>
  <%
  // 로그인이 된 사람은 로그인 정보를 담을수 있도록 함
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
  %>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="main.jsp">메인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logoutAction.jsp">로그아웃</a>
          </li>
          <%-- 회원목록 버튼 --%>
          <% if (userID != null && userID.equals("admin")) { %>
          <li class="nav-item">
            <a class="nav-link" href="memberlist.jsp">회원목록</a>
          </li>
          <% } %>
        </ul>
      </div>
      <h2 class="text-light"><%= userID %>님 환영합니다.</h2>
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
          <td>
            <input type="text" class="form-control" maxlength="20" name="company" placeholder="회사명">
          </td>
        </tr>
        <tr>
          <td>
            <input type="text" class="form-control" maxlength="20" name="name" placeholder="이름">
          </td>
        </tr>
        <tr>
          <td>
            <input type="text" class="form-control" maxlength="20" name="phone" placeholder="핸드폰">
          </td>
        </tr>
        <tr>
          <td>
            <input type="text" class="form-control" maxlength="20" name="fax" placeholder="FAX">
          </td>
        </tr>
        <tr>
          <td>
            <input type="text" class="form-control" maxlength="20" name="address" placeholder="주소">
          </td>
        </tr>
        <tr>
          <td>
            <input type="text" class="form-control" maxlength="20" name="email" placeholder="이메일">
          </td>
        </tr>
        </tbody>
      </table>
      <input type="submit" class="btn btn-primary pull-right" value="등록">
    </form>
  </div>
</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>

