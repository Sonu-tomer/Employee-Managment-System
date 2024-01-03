<%@ page import="java.sql.*" %>
<%@ include file="menu.html" %>
<%@ include file="conn.jsp" %>
<html>
<body>
<% 
Statement st=cn.createStatement();
     ResultSet rst =st.executeQuery("select * from employeeinfo");

 %>
 <table class="resta" border="1">
 
 <tr style='background-color:orange;font-size:23px;color:white'>
	<th colspan="8"> Show Data</th>
	</tr>
   <tr>
     <th style='background-color:blue;color:yellow'>Employee Id</th>
      <th style='background-color:blue;color:yellow'>First Name</th>
       <th style='background-color:blue;color:yellow'>Last Name</th>
        <th style='background-color:blue;color:yellow'>Address</th>
        <th style='background-color:blue;color:yellow'>Email Id</th>
          <th style='background-color:blue;color:yellow'>Phone Number</th>
            <th style='background-color:blue;color:yellow'>City</th>
              <th style='background-color:blue;color:yellow'>Age</th>
   </tr>
   <% 
   while(rst.next())
   {
	   %>
	   <tr style='background-color:blue;color:white'>
	   <td style='background-color:blue;color:white'> <%=rst.getString(1)%></td>
	   <td style='background-color:blue;color:white'> <%=rst.getString(2)%></td>
	   <td style='background-color:blue;color:white'> <%=rst.getString(3)%></td>
	   <td style='background-color:blue;color:white'> <%=rst.getString(4)%></td>
	    <td style='background-color:blue;color:white'> <%=rst.getString(5)%></td>
	  <td style='background-color:blue;color:white'> <%=rst.getString(6)%></td>
	   <td style='background-color:blue;color:white'> <%=rst.getString(7)%></td>
	   <td style='background-color:blue;color:white'> <%=rst.getString(8)%></td>
	   </tr>
	   <% 
   }
   %>
 </table>
</body>
</html>