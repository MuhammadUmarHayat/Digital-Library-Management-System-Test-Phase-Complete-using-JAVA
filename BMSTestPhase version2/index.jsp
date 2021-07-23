<!DOCTYPE html>
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
<form name="myForm" method="post" action="process.jsp">
Name of Book:<br>
<input type="text" name="name">
<br>
Generation:<br>
<input type="text" name="generation">
<br>
Price:<br>
<input type="text" name="price">
<br>
Author:<br>
<input type="text" name="author">
<br>
Copy right:<br>
<input type="text" name="cp">
<br>
publisher:<br>
<input type="text" name="publisher">
<br>
Edition Page:<br>
<input type="text" name="page">
<br>
ISBN:<br>
<input type="text" name="isbn">
<br><br>
<input type="submit" value="save">
<input type="submit" value="update">
<input type="submit" value="cancel">
</form>

</section>
</div>

</body>
</html>