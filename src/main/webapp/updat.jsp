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
    script.println("alert('로그인을 하세요.'");
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
    script.println("location.href = 'login.jsp')");
    script.println("</script>");
  }
  Business business = new BusinessDAO().getBusiness(bcID);

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

    <li class="nav navbar-left">
        <ui class="navbar-header bottom-left"><a href="main.jsp">메인</a></ui></br>
        <ui class="navbar-header bottom-left"><a href="logoutAction.jsp">로그아웃</a></ui>
      </li>
    </li>

  </div>
</nav>
<div class="container">
  <div class="row">
    <form method="post" action="updateAction.jsp?bcID=<%= bcID %>">
    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
          <thead>
            <tr>
              <th colspan="2" style="background-color: #eeeeee; text-align: center;">글 수정 양식</th>
            </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="text" class="form-control" maxlength="20" name="company" placeholder="회사명" value="<%= business.getCompany() %>"></td>
              </tr>
              <tr>
                <td><input type="text" class="form-control" maxlength="20" name="name" placeholder="이름" value="<%= business.getName() %>"></td>
              </tr>
              <tr>
                <td><input type="text" class="form-control" maxlength="20" name="phone" placeholder="핸드폰" value="<%= business.getPhone() %>"></td>
              </tr>
              <tr>
                <td><input type="text" class="form-control" maxlength="20" name="fax" placeholder="FAX" value="<%= business.getFax() %>"></td>
              </tr>
              <tr>
                <td><input type="text" class="form-control" maxlength="20" name="address" placeholder="주소" value="<%= business.getAddress() %>"></td>
              </tr>
              <tr>
                <td><input type="text" class="form-control" maxlength="20" name="email" placeholder="이메일" value="<%= business.getEmail() %>"></td>
              </tr>
            </tbody>

      </table>
      <input type="submit" class="btn btn-primary pull-right" value="수정">

    </form>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
