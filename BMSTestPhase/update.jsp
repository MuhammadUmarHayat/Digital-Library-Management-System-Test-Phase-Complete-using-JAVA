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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
	//name,generation,price,author,copyright,publisher,pages,ISBN
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
generation:<br>
<input type="text" name="generation" value="<%=resultSet.getString("generation") %>">
<br>
Price:<br>
<input type="text" name="price" value="<%=resultSet.getString("price") %>">
<br>
Author:<br>
<input type="text" name="author" value="<%=resultSet.getString("author") %>">
<br>
Copy Right:<br>
<input type="text" name="copyright" value="<%=resultSet.getString("copyright") %>">
<br>
publisher:<br>
<input type="text" name="publisher" value="<%=resultSet.getString("publisher") %>">
<br>
Pages:<br>
<input type="text" name="pages" value="<%=resultSet.getString("pages") %>">
<br>
ISBN:<br>
<input type="text" name="ISBN" value="<%=resultSet.getString("ISBN") %>">



<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>