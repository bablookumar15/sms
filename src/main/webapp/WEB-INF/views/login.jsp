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
							<h3 class="page_title">Sign In</h3>
							<div class="page_location">
								<a href="index_1.html">Home</a> 
								<i class="fa fa-angle-right" aria-hidden="true"></i>
								<span>Sign In</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->
		
		
		<section class="login-box">
			<!-- Modal -->
			<div id="myModal_two">
				<div class="modal-dialog toggle_area" role="document">
					<div class="modal-header toggle_header">
						<h4 class="inner-title">Sign In Account</h4>
					</div>
					<div class="modal-body login_body">
						<p>Welcome to School Management System.</p>
						<div class="login_option">
							<form:form class="signin" action="${pageContext.request.contextPath}/login" method="post" commandName="loginBean">
								<div class="form-group">
									<form:input type="email" class="form-control" placeholder="Email Address" path="username"></form:input>
								</div>
								<div class="form-group">
									<form:input type="password" class="form-control" placeholder="Password" path="password"></form:input>
								</div>
								<div class="form-group">
									<button type="submit" name="signin" class="btn btn-default">Sign In</button>
								</div>
							</form:form>
						</div>
					<div class="submit_area"><span>Lost your password? <a href="#">click here</a></span></div>
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
		<!-- Bottom Footer End -->
		
		<!-- Scroll to top -->
		<div class="scroll-to-top">
			<a href="#" class="scroll-btn" data-target=".pagewrap"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
		</div>
		<!-- End Scroll To top -->
				
		<!-- All Javascript Plugin File here -->
		<jsp:include page="js.jsp"></jsp:include>
	</body>
</html>