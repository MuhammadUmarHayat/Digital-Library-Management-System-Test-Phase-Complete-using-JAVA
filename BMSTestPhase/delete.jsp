<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<a href="index.jsp">Home</a>|<a href="view.jsp">Update </a>|<a href="index.jsp">Cancel</a>
<hr>
<br>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bmstp", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM book WHERE id="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>