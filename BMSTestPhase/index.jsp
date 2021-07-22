<!DOCTYPE html>
<html>
<body>
<a href="index.jsp">Home</a>|<a href="view.jsp">Update </a>|<a href="index.jsp">Cancel</a>
<hr>
<br>
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
</body>
</html>