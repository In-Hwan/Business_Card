<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="business.BusinessDAO" %>
<%@ page import="business.Business" %>
<%@ page import="java.util.ArrayList" %>
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
      int pageNumber = 1;
      if (request.getParameter("pageNumber") != null) {
        pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
      }
  %>

<nav class="navbar navbar-default">
  <div class="navbar">
    <h3 class="navbar-left" style="font-style: italic; font-family: Rockwell; color: #5e5e5e" >명함목록</h3>
    <button type="button" class="navbar-toggler collapse"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>s
      <span class="icon-bar"></span>
    </button>

    <div class="container-fluid navbar-right">
        <ui class="navbar-brand">
          <a href="logoutAction.jsp">로그아웃</a>
        </ui>
    </div>


    <%
      if (userID == null) {

    %>



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
            <th style="background-color: #eeeeee; text-align: center;">번호</th>
            <th style="background-color: #eeeeee; text-align: center;">회사명</th>
            <th style="background-color: #eeeeee; text-align: center;">이름</th>
            <th style="background-color: #eeeeee; text-align: center;">휴대폰</th>
            <th style="background-color: #eeeeee; text-align: center;">FAX</th>
            <th style="background-color: #eeeeee; text-align: center;">주소</th>
            <th style="background-color: #eeeeee; text-align: center;">이메일</th>
          </tr>
        </thead>
        <tbody>
        <!-- 목록 불러오기 -->
            <%
              BusinessDAO businessDAO = new BusinessDAO();
              ArrayList<Business> list = businessDAO.getList(pageNumber);
              for(int i = 0; i < list.size(); i++) {


            %>

          <tr>
            <td><%= list.get(i).getBcID()%></td>
            <td><a href="view.jsp?bcID=<%= list.get(i).getBcID() %>"><%= list.get(i).getCompany()%></a></td>
            <td><%= list.get(i).getName()%></td>
            <td><%= list.get(i).getPhone()%></td>
            <td><%= list.get(i).getFax()%></td>
            <td><%= list.get(i).getAddress()%></td>
            <td><%= list.get(i).getEmail()%></td>

          </tr>
            <%
              }

            %>

        </tbody>
      </table>
      <!-- 페이지 이동 -->
      <%
        if(pageNumber != 1) {
      %>
        <a href="main.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success navbar-left">이전</a>
      <%
        } if(businessDAO.nextPage(pageNumber + 1)) {
      %>
        <a href="main.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success navbar-left">다음</a>
      <%
        }
      %>

      <a href="write.jsp" class="btn btn-primary pull-right">등록</a>
    </div>
  </div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
