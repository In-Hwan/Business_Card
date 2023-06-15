<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="business.BusinessDAO" %>
<%@ page import="business.Business" %>
<%@ page import="name.NameDAO" %>
<%@ page import="name.Name" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>명함 관리</title>
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <style>
    .navbar {
      background-color: #f8f9fa;
      padding: 10px 20px;
    }

    .navbar .navbar-brand {
      font-style: italic;
      font-family: Rockwell;
      color: #5e5e5e;
      margin-right: 20px;
    }

    .navbar .navbar-right {
      margin-left: auto;
    }

    .navbar .nav-item {
      margin-left: 10px;
    }

    .container {
      margin-top: 20px;
    }

    .table th, .table td {
      text-align: center;
    }

    .btn-group {
      margin-bottom: 20px;
    }
  </style>
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

  <%
  request.setCharacterEncoding("UTF-8");
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
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="btn-group">
          <% if (pageNumber != 1) { %>
          <a href="main.jsp?pageNumber=<%= pageNumber - 1 %>" class="btn btn-success">이전</a>
          <% }
            BusinessDAO businessDAO = new BusinessDAO();
            if (businessDAO.nextPage(pageNumber + 1)) { %>
          <a href="main.jsp?pageNumber=<%= pageNumber + 1 %>" class="btn btn-success">다음</a>
          <% } %>
        </div>
        <table class="table table-striped">
          <thead>
          <tr>
            <th>번호</th>
            <th>회사명</th>
            <th>이름</th>
            <th>휴대폰</th>
            <th>FAX</th>
            <th>주소</th>
            <th>이메일</th>
          </tr>
          </thead>
          <tbody>
          <!-- 목록 불러오기 -->
          <% ArrayList<Business> list = businessDAO.getList(pageNumber);
            for (int i = 0; i < list.size(); i++) { %>
          <tr>
            <td><%= list.get(i).getBcID() %></td>
            <td><a href="view.jsp?bcID=<%= list.get(i).getBcID() %>"><%= list.get(i).getCompany() %></a></td>
            <td><%= list.get(i).getName() %></td>
            <td><%= list.get(i).getPhone() %></td>
            <td><%= list.get(i).getFax() %></td>
            <td><%= list.get(i).getAddress() %></td>
            <td><%= list.get(i).getEmail() %></td>
          </tr>
          <% } %>
          </tbody>
        </table>
        <a href="write.jsp" class="btn btn-primary">등록</a>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
