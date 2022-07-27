<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.Entities.*"%>
<%@page import="com.Connection.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Notes</title>

<%@include file="all_css_js.jsp"%>
<link rel="stylesheet" href="css/style.css" />

</head>
<body>


	<div class="container-fluid">
		<%@include file="navbar.jsp"%>

		<br>
		<h1>All Notes</h1>
		<br>
		<div class="row">

			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();

				for (Note note : list) {
				%>

				<div class="card mt-3">

					<div class="container text-center">
						<img class="card-img-top m-3" style="max-width: 90px;"
							src="img/pencil.png" alt="Card image cap">

					</div>

					<div class="card-body m-4">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<br>
						<div class="container text-right">
							<p class="font-weight-bold text-success font-italic"><%=note.getAddedDate()%></p>

						</div>


						<div class="container text-center mt-3">
							<a href="update.jsp?id=<%=note.getId()%>"
								class="btn btn-primary">Edit</a> <a
								href="DeleteServlet?id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a>
						</div>

					</div>
				</div>


				<%
				}
				%>

			</div>

		</div>


	</div>

</body>
</html>