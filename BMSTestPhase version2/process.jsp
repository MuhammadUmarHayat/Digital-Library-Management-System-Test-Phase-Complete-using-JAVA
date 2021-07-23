<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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
String name="";
String generation="";
String price="";
String author="";
String cp="";
String publisher="";
int page1=0;
String isbn="";
try
{
	//name,generation,price,author,cp,publisher,page,isbn
 name=request.getParameter("name");
generation=request.getParameter("generation");
price=request.getParameter("price");
 author=request.getParameter("author");
 cp=request.getParameter("cp");
 publisher=request.getParameter("publisher");
//String page1=request.getParameter("page1");
 page1 = Integer.parseInt(request.getParameter("page"));
isbn=request.getParameter("isbn");
//int p =  Integer.valueOf(page1);

//out.println("name: "+name+" generation: "+generation+" price: "+price+" author: "+author+" cp :"+cp+" publisher: "+publisher+" page1: "+page1+" isbn :"+isbn);

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bmstp", "root", "");
Statement st=conn.createStatement();
                                                                                                                        ////name,generation,price,author,cp,publisher,page,isbn
int i=st.executeUpdate("insert into book(name,generation,price,author,copyright,publisher,pages,ISBN) values('"+name+"','"+generation+"','"+price+"','"+author+"','"+cp+"','"+publisher+"',"+page1+",'"+isbn+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
//System.out.print(e);
//e.printStackTrace();
out.println(e);
//out.println("name: "+name+" generation: "+generation+" price: "+price+" author: "+author+" cp :"+cp+" publisher: "+publisher+" page1: "+page1+" isbn :"+isbn);
//out.println("name"+name+"generation"+generation+"price"+price+"author"+author+cp+"cp"+"publisher"+publisher+"page1"+page1+"isbn"+isbn);
}
		

%>

</section>
</div>

</body>
</html>
