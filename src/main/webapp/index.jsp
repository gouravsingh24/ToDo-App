<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<%@include file="all_css_js.jsp"%>
<link rel="stylesheet" href="css/style.css" />
<style>

span{
	color : green;

}
h1{
	background-color : yellow;
}

</style>
</head>
<body>


<div class = "loader">

</div>


	<div class="container-fluid">
		<%@include file="navbar.jsp"%>

		<div class="row">

			<div class="col-12">

				<div class="card mt-3">

	<h1 class = "mt-4" style = "text-align : center; color : black"><marquee>Welcome to <span style = "font-style : italic;">ToDo App</span> a platform to make Notes.</marquee></h1>
					<div class="container text-center mt-4">
						<img class="card-img-top m-3" style="max-width: 300px;"
							src="img/pencil.png" alt="Card image cap"> <br>
						<h3 class = "mt-4">
							<a href="addNotes.jsp">Click to Add your notes</a>
						</h3>

					</div>


				</div>
			</div>


		</div>
	</div>


</body>
</html>