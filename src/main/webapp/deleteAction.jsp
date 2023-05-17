<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="business.BusinessDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="business" class="business.Business" scope="page" />
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <title>명함 관리</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="navbar">
    <button type="button" class="navbar-toggler collapse"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>
</nav>

<%
  // 로그인이 된 유저는 로그인과 회원가입 페이지 접근 여부 설정
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
  if (userID == null) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('로그인을 해주세요')");
    script.println("location.href = 'login.jsp'");
    script.println("</script>");
  } else {
    BusinessDAO businessDAO = new BusinessDAO();
    int bcID = businessDAO.getBcID();
    int result = businessDAO.delete(bcID);
    if (result == -1) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('글 삭제에 실패했습니다.')");
      script.println("history.back()");
      script.println("</script>");
    } else {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("location.href = 'main.jsp'");
      script.println("</script>");
    }
  }
%>

</body>
</html>
