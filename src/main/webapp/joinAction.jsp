<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import = "name.NameDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="name" class="name.Name" scope="page" />
<jsp:setProperty name="name" property="userID"/>
<jsp:setProperty name="name" property="userPassword"/>
<jsp:setProperty name="name" property="userName"/>
<jsp:setProperty name="name" property="userEmail"/>


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
    </button>
  </div>
</nav>

<%

  // 로그인이 된유저는 로그인과 회원가입 페이지 접근 여부 설정
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
  if (userID != null) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("location.href = 'main.jsp'");
    script.println("</script>");

  }

  if (name.getUserID() == null || name.getUserPassword() == null || name.getUserName() == null || name.getUserEmail() == null) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('입력되지 않은 항목이 있습니다.')");
    script.println("history.back()");
    script.println("</script>");

  } else {
    NameDAO userDAO = new NameDAO();
    int result = userDAO.join(name);
    if (result == -1) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('이미 존재하는 아이디입니다. 다른 아이디를 사용해주세요.')");
      script.println("history.back()");
      script.println("</script>");
    }

    else{
      session.setAttribute("userID", name.getUserID());
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("location.href = 'login.jsp'");
      script.println("</script>");

    }

  }
%>

</body>
</html>
