<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="name.NameDAO" %>
<%@ page import="name.Name" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
  <title>명함 관리</title>
</head>
<body>

<%
  // 로그인이 된 사람은 로그인 정보를 담을 수 있도록 함
  String userID = (String) session.getAttribute("userID");
  int pageNumber = 1;
  if (request.getParameter("pageNumber") != null) {
    pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
  }
%>

<% request.setCharacterEncoding("UTF-8");
  String id = request.getParameter("id");
  String name = request.getParameter("name");

  // 로그인 프로세스
  if (id != null && name != null) {
    // 로그인 정보 유효성 검사
    if (id.equals("admin") && name.equals("admin")) {
      // 로그인 성공
      session.setAttribute("userID", id);
      userID = id;
    } else {
      // 로그인 실패
      response.sendRedirect("login.jsp");
    }
  }

  // 로그인 여부 확인
  if (userID == null) {
    response.sendRedirect("login.jsp");
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

<div class="container mt-4">
  <div class="row">
    <table class="table table-striped">
      <thead>
      <tr>
        <th>번호</th>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>이메일</th>
      </tr>
      </thead>
      <tbody>
      <!-- 목록 불러오기 -->
      <%
        NameDAO nameDAO = new NameDAO();
        ArrayList<Name> list = nameDAO.getList();
        for(int i = 0; i < list.size(); i++) {
      %>
      <tr>
        <td><%= i+1 %></td>
        <td><%= list.get(i).getUserID()%></td>
        <td><%= list.get(i).getUserPassword()%></td>
        <td><%= list.get(i).getUserName()%></td>
        <td><%= list.get(i).getUserEmail()%></td>
      </tr>
      <%
        }

      %>

      </tbody>
    </table>
  </div>
</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
