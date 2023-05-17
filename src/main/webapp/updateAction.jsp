<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="business.BusinessDAO" %>
<%@ page import="business.Business" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
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

  // 로그인이 된 사용자만 접근 가능
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
    if (request.getParameter("company") == null || request.getParameter("name") == null || request.getParameter("phone") == null || request.getParameter("fax") == null || request.getParameter("address") == null || request.getParameter("email") == null ||
            request.getParameter("company").equals("") || request.getParameter("name").equals("") || request.getParameter("phone").equals("") || request.getParameter("fax").equals("") || request.getParameter("address").equals("") || request.getParameter("email").equals("")) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('입력되지 않은 항목이 있습니다.')");
      script.println("history.back()");
      script.println("</script>");
    } else {
      int bcID = Integer.parseInt(request.getParameter("bcID"));
      String company = request.getParameter("company");
      String name = request.getParameter("name");
      String phone = request.getParameter("phone");
      String fax = request.getParameter("fax");
      String address = request.getParameter("address");
      String email = request.getParameter("email");

      BusinessDAO businessDAO = new BusinessDAO();
      int result = businessDAO.update(company, name, phone, fax, address, email, bcID);

      if (result == -1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('글 수정에 실패했습니다.')");
        script.println("history.back()");
        script.println("</script>");
      } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('글 수정이 완료되었습니다.')");
        script.println("location.href = 'main.jsp'");
        script.println("</script>");
      }
    }
  }
%>

</body>
</html>
