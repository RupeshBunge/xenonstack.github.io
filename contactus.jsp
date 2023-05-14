<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Contact Us</title>


<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">


<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="hidden" id="Status" value="<%=request.getAttribute("Status")%>">
	<div class="main">


		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Contact Us</h2>
					
						<form method="post" action="contact" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							 
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							 
							 <div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="messege" id="contact"
									placeholder="Messege" />
							</div>
							 
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Send" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">

	var Status = document.getElementById("Status").value;
	if(Status == "Success"){
		swal("Thank You","For Contacting Us ","success")
		}
	
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>