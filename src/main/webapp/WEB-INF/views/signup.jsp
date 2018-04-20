<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body class="pagewrap login_and_Signup">
		
		<!-- Page Loader -->
			<jsp:include page="loader.jsp"></jsp:include>
		<!-- End Loader -->
		
		<header id="header">
			<jsp:include page="header.jsp"></jsp:include>			
		</header>
		
		<!-- Banner Section Start -->
		<section id="banner">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="banner_area">
							<h3 class="page_title">Registration</h3>
							<div class="page_location">
								<a href="index_1.html">Home</a> 
								<i class="fa fa-angle-right" aria-hidden="true"></i>
								<span>Registration</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->
		
		
		<section class="reg_popup">
			<!-- Modal -->
			<div id="myModal">
				<div class="modal-dialog toggle_area" role="document">
					<div class="modal-header toggle_header">
						<h4 class="inner-title">Create An Account</h4>
					</div>
					<div class="modal-body">
						<form:form class="registation" action="${pageContext.request.contextPath}/signup" method="post" commandName="signupBean">
							<div class="radio_option">
								<input type="radio" name="gender" value="male" checked>
								<label>General User</label>
								<input type="radio" name="gender" value="female">
								<label>Agent</label>
							</div>
							<div class="signup_option">
								<div class="form-group">
									<input type="text" class="form-control" name="first_name" placeholder="First Name">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="last_name" placeholder="Last Name">
								</div>
								<div class="form-group">
									<input type="email" class="form-control" name="email" placeholder="Email Address">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="password" placeholder="Password">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password">
								</div>
							</div>
						</form:form>
						<div class="submit_area">
							<button type="submit" name="registration" class="btn btn-default">Sign Up</button>
						</div>
					</div>
					<div class="modal-footer"> <span>Click and read our terms and condition<a href="#">Terms and Condition</a></span> </div>
				</div>
			</div>	
		</section>
		<!-- End Modules and Popup -->		
		
		
		<!-- Footer Section Start -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- Footer Section End --> 
		
		<!-- Bottom Footer Start -->
		<div id="bottom_footer">
			<div class="reserve_text"> <span>Copyright &copy; 2017 Uniland All Right Reserve</span> </div>
		</div>
		
		<!-- Scroll to top -->
		<div class="scroll-to-top">
			<a href="#" class="scroll-btn" data-target=".pagewrap"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
		</div>
		
				
		<!-- All Javascript Plugin File here -->
		<jsp:include page="js.jsp"></jsp:include>
	</body>
</html>