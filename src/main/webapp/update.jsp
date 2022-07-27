<%@page import="com.Entities.Note"%>
<%@page import="com.Connection.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_css_js.jsp" %>
 	<link rel = "stylesheet" href = "css/style.css" />
 	
</head>
<body>
<div class = "container-fluid">
	<%@include file="navbar.jsp" %>

<br>
<h1>Edit your Notes</h1>
<br>

<%

	int id = Integer.parseInt(request.getParameter("id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note n = (Note)s.get(Note.class, id);
	
	

%>
<form action = "UpdateServlet" method = "post">

  <div class="form-group">
    <label for="title" class = "font-weight-bold">Title</label>
    
    <input value = "<%=n.getId() %>" 
    name = "id"
    type = "hidden"/>
    
    
    <input type="text"
    name = "title" 
    value = "<%=n.getTitle()%>"
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
   required><%=n.getContent() %></textarea>
   
  </div>
  
  <div class = "container text-center" >
  	  <button 
  	  type="submit" 
  	  class="btn btn-primary">Update
  	  </button>  	
  </div>
  
</form>



</div>

</body>
</html>