<%@ page import="java.sql.*" %>

<%@ include file="conn.jsp" %>
<html>
<body>
<% 
String pid=request.getParameter("pid");
PreparedStatement ps=cn.prepareStatement("select * from employeeinfo where pid=?");
     ps.setString(1,pid);
     ResultSet rst=ps.executeQuery();
if(rst.next())
{
	%>
	<%@ include file="menu.html" %>
	<table class="resta" border="1">
	<tr style='background-color:orange;font-size:23px;color:white'>
	<th colspan="2" style="font-size:40px"> Employee Details</th>
	</tr>
   <tr>
     <th align="left" style="font-size:40px; color:orange">Employee Id</th>
      <td style="font-size:40px"><%=rst.getString(1) %></td>
   </tr>
   <tr>
     <th align="left"style="font-size:40px;color:orange">First Name</th>
      <td style="font-size:40px"><%=rst.getString(2) %></td>
   </tr>
   <tr>
     <th align="left" style="font-size:40px;color:orange">Last Name</th>
      <td style="font-size:40px"><%=rst.getString(3) %></td>
   </tr>
   <tr>
     <th align="left" style="font-size:40px;color:orange">Address</th>
      <td style="font-size:40px"><%=rst.getString(4) %></td>
   </tr>
   <tr>
     <th align="left" style="font-size:40px;color:orange">Email Id</th>
      <td style="font-size:40px"><%=rst.getString(5) %></td>
   </tr>
   <tr>
     <th align="left" style="font-size:40px;color:orange">Phone Number</th>
      <td style="font-size:40px"><%=rst.getString(6) %></td>
   </tr>
   <tr>
   <th align="left" style="font-size:40px;color:orange">City</th>
    <td style="font-size:40px"><%=rst.getString(7) %></td>
 </tr>
 <tr>
     <th align="left" style="font-size:40px;color:orange">Age</th>
      <td style="font-size:40px"><%=rst.getString(8) %></td>
   </tr>
   </table>
	<% 
}
else{
	%>
	<jsp:include page="search.jsp"/>
	<div class="dvv">
	  <h2 style='color:orange;margin:center;font-size:40px'>Employee Record with id <%=pid %>not found</h2>
	</div>
	<%
}
 %>
 
  
</body>
</html>