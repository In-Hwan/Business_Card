<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="business.Business" %>
<%@ page import="business.BusinessDAO" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
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

  if (userID==null) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('로그인을 하세요.')");
    script.println("location.href = 'login.jsp'");
    script.println("</script>");

  }
  int bcID = 0;
  if (request.getParameter("bcID") != null) {
    bcID = Integer.parseInt(request.getParameter("bcID"));
  }
  if(bcID == 0) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('유효하지 않은 글입니다.')");
    script.println("location.href = 'login.jsp'");
    script.println("</script>");
  }
  Business business = new BusinessDAO().getBusiness(bcID);
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="main.jsp">명함 관리</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="main.jsp">메인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logoutAction.jsp">로그아웃</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <form method="post" action="updateAction.jsp?bcID=<%= bcID %>">
        <div class="card">
          <div class="card-header text-center">
            </div>
          <div class="card-body">
            <div class="mb-3">
              <input type="text" class="form-control" maxlength="20" name="company" placeholder="회사명" value="<%= business.getCompany() %>">
            </div>
            <div class="mb-3">
              <input type="text" class="form-control" maxlength="20" name="name" placeholder="이름" value="<%= business.getName() %>">
            </div>
            <div class="mb-3">
              <input type="text" class="form-control" maxlength="20" name="phone" placeholder="핸드폰" value="<%= business.getPhone() %>">
            </div>
            <div class="mb-3">
              <input type="text" class="form-control" maxlength="20" name="fax" placeholder="FAX" value="<%= business.getFax() %>">
            </div>
            <div class="mb-3">
              <input type="text" class="form-control" maxlength="20" name="address" placeholder="주소" value="<%= business.getAddress() %>">
            </div>
            <div class="mb-3">
              <input type="text" class="form-control" maxlength="20" name="email" placeholder="이메일" value="<%= business.getEmail() %>">
            </div>
          </div>
          <div class="card-footer text-center">
            <input type="submit" class="btn btn-primary" value="수정">
          </div>
        </div>
      </form>
    </div>

  </div>
</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>