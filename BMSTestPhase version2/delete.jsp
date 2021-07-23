<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
 <title>Digital Library Management System</title>
    <link rel="stylesheet" href="css/style.css" />
<body>

<header id="main-header">
      <div class="container">
        <h1>Digital Library Management System Test Phase 
		</h1>
      </div>
    </header>
    <nav id="navbar">
      <div class="container">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="view.jsp">View</a></li>
          <li><a href="view.jsp">Update</a></li>
          <li><a href="index.jsp">Cancel</a></li>
        </ul>
		
		
		
      </div>
    </nav>
<br>
<div class="container">
      <section id="main">
	  <section id="showcase">
        <h1>
         BY Hafiz Muhammad Umar Hayat
        </h1>
		</section>

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

</section>
</div>

</body>
</html>