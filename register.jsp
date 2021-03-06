<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body
	style="background-image: linear-gradient(to right top, #0ddc31, #18db2c, #20da27, #27d821, #2cd71a, #2fd417, #32d214, #35cf11, #37cb12, #38c613, #39c214, #3abe15); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="regiser.jsp">Register</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<div class="row mt-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center c-head text-white">
						<i class="fa fa-address-card-o fa-2x"></i>
						<h5>Registration page</h5>
					</div>

					<%
					session.getAttribute("reg-msg");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><% regMsg %>login successfully<a href="login.jsp">click here</a>
						</div>
					<%
					}
					%>
					<div class="card-body">
						<form action="registerServlet" method="get">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Name" name="uname">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password">
							</div>

							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Register</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>