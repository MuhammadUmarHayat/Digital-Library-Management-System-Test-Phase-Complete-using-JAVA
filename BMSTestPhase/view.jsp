<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bmstp";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<html>
<body>
<a href="index.jsp">Home</a>|<a href="view.jsp">Update </a>|<a href="index.jsp">Cancel</a>
<hr>
<br>

<h1>Retrieve data from Book Table</h1>
<table border="1">
<tr>
<td>id</td>
<td>Book name</td>
<td>Generation</td>
<td>price</td>
<td>author</td>
<td> Copy right</td>
<td> publisher</td>
<td>Edition Page </td>
<td>ISBN </td>
<td>Update</td>
<td>Delete</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	//name,generation,price,author,cp,publisher,page,isbn
	//author,copyright,publisher,pages,ISBN
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("generation") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("copyright") %></td>
<td><%=resultSet.getString("publisher") %></td>
<td><%=resultSet.getString("pages") %></td>
<td><%=resultSet.getString("ISBN") %></td>
<td><a href="update.jsp?id=<%=resultSet.getString("id")%>">Update</a></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("id")%>">Delete</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>