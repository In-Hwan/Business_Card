<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
  request.setCharacterEncoding("UTF-8");
  String id = request.getParameter("var");
  Connection conn = null;
  String sql="SELECT * FROM name WHERE id=?"; //쿼리문

  try{
    Context init = new InitialContext();
    DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    conn = ds.getConnection();

    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);

    ResultSet rs = pstmt.executeQuery();
    out.println("<h3>회원 상세 정보</h3>");
    while(rs.next()){
      out.println("Num : "+rs.getString(1)+"<br>");
      out.println("Company : "+rs.getString(2)+"<br>");
      out.println("Name : "+rs.getString(3)+"<br>");
      out.println("Phone : "+rs.getString(4)+"<br>");
      out.println("Fax : "+rs.getString(5)+"<br>");
      out.println("Address : "+rs.getString(6)+"<br>");
      out.println("Email : "+rs.getString(7)+"<br>");
      out.println("bcAvailable : "+rs.getString(8)+"<br>");
    }

  } catch(Exception e){
    e.printStackTrace();
  }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>


</body>
</html>
