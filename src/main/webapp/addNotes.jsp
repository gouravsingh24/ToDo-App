<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>

<%@include file="all_css_js.jsp" %>
 	<link rel = "stylesheet" href = "css/style.css" />
 	
</head>
<body>

<div class = "container-fluid">
	<%@include file="navbar.jsp" %>

<br>
<h1>Please fill your Notes details</h1>
<br>

<form action = "AddNotesServlet" method = "post">

  <div class="form-group">
    <label for="title" class = "font-weight-bold">Title</label>
    
    <input type="text"
    name = "title" 
    class="form-control" 
    id="title"  
    placeholder="Enter Titile here" 
    required />
    
    </div>
    
  <div class="form-group">
    <label for="content" class = "font-weight-bold">Content</label>
    
   <textarea 
   name = "content"
   class="form-control" 
   placeholder = "Enter your Content here" 
   id = "content" 
   style = height:300px; 
   required></textarea>
   
  </div>
  
  <div class = "container text-center" >
  	  <button 
  	  type="submit" 
  	  class="btn btn-primary">Add
  	  </button>  	
  </div>
  
</form>

</div>


</body>
</html>