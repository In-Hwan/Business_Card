<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="business.Business" %>
<%@ page import="business.BusinessDAO" %>
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
    // 로그인이 된 사람은 로그인 정보를 담을 수 있도록 함
    String userID = null;
    if (session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");
    }
    int bcID = 0;
    if(request.getParameter("bcID") != null) {
      bcID = Integer.parseInt(request.getParameter("bcID"));
    }
    if (bcID == 0) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('유효하지 않은 글입니다.')");
      script.println("location.href = 'main.jsp'");
      script.println("</script>");
    }
    Business business = new BusinessDAO().getBusiness(bcID);
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
    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
      <thead>
      <tr>
        <th colspan="3" style="background-color:#eeeeee; text-align: center;">명함 글 보기</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td style="width: 20%;">회사명</td>
        <td colspan="2"><%= business.getCompany() %></td>
      </tr>
      <tr>
        <td style="width: 20%;">이름</td>
        <td colspan="2"><%= business.getName() %></td>
      </tr>
      <tr>
        <td style="width: 20%;">핸드폰</td>
        <td colspan="2"><%= business.getPhone() %></td>
      </tr>
      <tr>
        <td style="width: 20%;">FAX</td>
        <td colspan="2"><%= business.getFax() %></td>
      </tr>
      <tr>
        <td style="width: 20%;">주소</td>
        <td colspan="2"><%= business.getAddress() %></td>
      </tr>
      <tr>
        <td style="width: 20%;">이메일</td>
        <td colspan="2"><%= business.getEmail() %></td>
      </tr>
      </tbody>
    </table>
    </br></br>
    <a href="main.jsp" class="btn btn-primary">메인</a>
    <br><br>
    <a href="updat.jsp?bcID=<%= bcID %>" class="btn btn-primary">수정</a>
    <br><br>
    <a href="deleteAction.jsp?bcID=<%= bcID %>" class="btn btn-primary">삭제</a>
    <br><br>
    <input type="submit" class="btn btn-primary pull-right" value="등록">

  </div>
</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
