<%@ page import="java.sql.*" %>
<%@ include file="menu.html" %>
<%@ include file="conn.jsp" %>

<%
   String sql="update employeeinfo set first_name=?,last_name=?,address=?,email=?,phone=?,city=?,age=? where pid=?";
  PreparedStatement ps=cn.prepareStatement(sql);
  ps.setString(1,request.getParameter("first_name"));
  ps.setString(2,request.getParameter("last_name"));
  ps.setString(3,request.getParameter("address"));
  ps.setString(4,request.getParameter("email"));
  ps.setString(5,request.getParameter("phone"));
  ps.setString(6,request.getParameter("city"));
  ps.setString(7,request.getParameter("age"));
  ps.setString(8,request.getParameter("pid"));
  ps.executeUpdate();
%>
<html>
<body>
<div class="dv">
<h2 style='color:red;font-size:35px'> Employee  Record has been Updated Successfully</h2>
</div>
</body>
</html>