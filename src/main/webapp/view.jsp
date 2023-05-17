<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="business.Business" %>
<%@ page import="business.BusinessDAO" %>
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

  int bcID = 0;
  if(request.getParameter("bcID") != null) {
    bcID = Integer.parseInt(request.getParameter("bcID"));

  }
  if (bcID == 0) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('유효하지 않은 글 입니다.')");
    script.println("location.href = 'main.jsp'");
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
      <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
          <thead>
            <tr>
              <th colspan="3" style="background-color: #eeeeee; text-align: center;">명함 글 보기</th>
            </tr>
            </thead>
            <tbody>
              <tr>
                <tr>
                  <td style="width: 20%;">회사명</td>
                  <td colspan="2"><%= business.getCompany()%> </td>
              </tr>
                <tr>
                  <td style="width: 20%;">이름</td>
                  <td colspan="2"><%= business.getName()%> </td>
                </tr>
                <tr>
                  <td style="width: 20%;">핸드폰</td>
                  <td colspan="2"><%= business.getPhone()%> </td>
                </tr>
                <tr>
                  <td style="width: 20%;">FAX</td>
                  <td colspan="2"><%= business.getFax()%> </td>
                </tr>
                <tr>
                  <td style="width: 20%;">주소</td>
                  <td colspan="2"><%= business.getAddress()%> </td>
                </tr>
                <tr>
                  <td style="width: 20%;">이메일</td>
                  <td colspan="2"><%= business.getEmail()%> </td>
                </tr>
            </tbody>
      </table>
      <a href="main.jsp" class="btn btn-primary">메인</a>
      <!-- 글 작성자가 본인 이면-->
      <%
        if(userID != null) {
      %>
        <a href="updat.jsp?bcID=<%=bcID %>" class="btn btn-primary">수정</a>
        <a href="deleteAction.jsp?bcID=<%=bcID %>" class="btn btn-primary">삭제</a>
      <%
        }
      %>
      <input type="submit" class="btn btn-primary pull-right" value="등록">
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
