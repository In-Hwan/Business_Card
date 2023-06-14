<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import = "name.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="name" class="name.User" scope="page" />
<jsp:setProperty name="name" property="userID"/>
<jsp:setProperty name="name" property="userPassword"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>DREAM</title>
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
    if (userID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("location.href = 'main.jsp'");
        script.println("</script>");

    }

    // 회원가입 페이지에서 입력한 정보를 세션에 저장
    UserDAO userDAO = new UserDAO();
    int result = userDAO.login(user.getUserID(),user.getUserPassword());

    if (result == 1) {
        session.setAttribute("userID", user.getUserID()); // 로그인 유저 확인
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("location.href = 'main.jsp'");
        script.println("</script>");
    }
    else if (result == 0) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('비밀번호가 틀립니다.')");
        script.println("history.back()"); // 이전 페이지로 이동
        script.println("</script>");
    }

    else if (result == -1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('존재하지 않는 아이디 입니다.')");
        script.println("history.back()");
        script.println("</script>");
    }

    else if (result == 2) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('데이터베이스 오류가 발생했습니다.')");
        script.println("location.href = login.jsp");
        script.println("</script>");
    }
%>
</body>
</html>
