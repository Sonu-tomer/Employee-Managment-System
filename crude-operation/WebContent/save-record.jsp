<%@ page import="java.sql.*" %>
<%@ include file="menu.html" %>
<%@ include file="conn.jsp" %>

<%
   String sql="insert into employeeinfo values(?,?,?,?,?,?,?,?)";
  PreparedStatement ps=cn.prepareStatement(sql);
  ps.setString(1,request.getParameter("pid"));
  ps.setString(2,request.getParameter("fname"));
  ps.setString(3,request.getParameter("lname"));
  ps.setString(4,request.getParameter("address"));
  ps.setString(5,request.getParameter("email"));
  ps.setString(6,request.getParameter("number"));
  ps.setString(7,request.getParameter("city"));
  ps.setString(8,request.getParameter("age"));
  ps.executeUpdate();
%>
<html>
<body>
<div class="dv">
<h2 style='color:red;font-size:35px'>Employee Record has been Inserted Successfully</h2>
</div>
</body>
</html>