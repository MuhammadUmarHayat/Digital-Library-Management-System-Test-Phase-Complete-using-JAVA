<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/bmstp";%>
<%!String user = "root";%>
<%!String psw = "";%>
<a href="index.jsp">Home</a>|<a href="view.jsp">Update </a>|<a href="index.jsp">Cancel</a>
<hr>
<br>
<%
//name,generation,price,author,copyright,publisher,pages,ISBN
String id = request.getParameter("id");
String name=request.getParameter("name");
String generation=request.getParameter("generation");
String price=request.getParameter("price");
String author=request.getParameter("author");
String copyright=request.getParameter("copyright");
String publisher=request.getParameter("publisher");
String pages=request.getParameter("pages");
String ISBN=request.getParameter("ISBN");




if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
////name,generation,price,author,copyright,publisher,pages,ISBN
String sql="Update book set id=?,name=?,generation=?,price=?,author=?,copyright=?,publisher=?,pages=?,ISBN=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, generation);
ps.setString(4, price);
ps.setString(5, author);
ps.setString(6, copyright);
ps.setString(7, publisher);
ps.setString(8, pages);
ps.setString(9, ISBN);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
