<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Xenon Stack Task</title>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Xenon Stack</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="explore.jsp">Explore</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="aboutus.jsp">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("name") %></a></li>
				</ul>
			</div> 
		</div>
	</nav>
	
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			
			<img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
				alt="..." />
			
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To Xenon Stack</h1>
			
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<p class="masthead-subheading font-weight-light mb-0">Welcome to Round 2</p>
		</div>
	</header>
	 
	 
	
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						52A Bandra <br /> Mumbai
					</p>
				</div>
			
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">My LinkedIn</h4>
					  <a class="btn btn-outline-light btn-social mx-1" href="https://www.linkedin.com/in/rupesh-bunge-a4b13b267/"><i
						class="fab fa-fw fa-linkedin-in"></i></a>  
				</div>
		
				 
			</div>
		</div>
	</footer>
	
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2023</small>
		</div>
	</div>
	 
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	 
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
