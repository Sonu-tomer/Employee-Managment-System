<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
//create connection object
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/servlet10","root","shachi@12345");

%>