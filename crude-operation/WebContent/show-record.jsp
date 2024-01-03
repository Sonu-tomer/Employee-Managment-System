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
	<form action="update-record.jsp">
	<table class="resta" border="1">
	<tr style='background-color:orange;font-size:23px;color:white'>
	<th colspan="2"> Employee Details</th>
	</tr>
   <tr>
     <th align="left" style="color:blue;font-size:20px">Employee Id</th>
      <td><input type="text" value="<%=rst.getString(1) %>" name="pid" readonly="readonly" style="width:100%" ></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit First Name</th>
      <td><input type="text" value="<%=rst.getString(2) %>" name="first_name" style="width:100%"></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit Last Name</th>
      <td><input type="text" value="<%=rst.getString(3) %>" name="last_name" style="width:100%"></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit Address</th>
      <td><input type="text" value="<%=rst.getString(4) %>" name="address" style="width:100%"></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit Email Id</th>
      <td><input type="text" value="<%=rst.getString(5) %>" name="email" style="width:100%"></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit Phone Number</th>
      <td><input type="text" value="<%=rst.getString(6) %>" name="phone" style="width:100%"></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit city</th>
      <td><input type="text" value="<%=rst.getString(7) %>" name="city" style="width:100%"></td>
   </tr>
   <tr>
     <th align="left" style="color:blue">Edit Age</th>
      <td><input type="text" value="<%=rst.getString(8) %>" name="age" style="width:100%"></td>
   </tr>
   <tr>
   <td colspan="2" align="right">
   <button class="bt" style="color:blue;">Update Record</button>
   </td>
   </tr>
   </table>
   </form>
	<% 
}
else{
	%>
	<jsp:include page="edit.jsp"/>
	<div class="dvv">
	  <h2 style='color:red ;font-size:35px'>Employee Record with id <%=pid %>not found</h2>
	</div>
	<%
}
 %>
 
  
</body>
</html>