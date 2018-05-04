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


	<section class="login-box">
		<!-- Modal -->
		<div id="myModal_two">
			<div class="modal-dialog toggle_area" role="document">
				<div class="modal-header toggle_header">
					<h4 class="inner-title">Response</h4>
				</div>
				<div class="modal-body login_body">
					<div class="submit_area">
						<span>Registration Successful. Activation code is sent on Your Email. Please <a href="#">click here</a>to Activate Your Account.</span>
					</div>
					
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Modules and Popup -->


	<!-- Footer Section Start -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Bottom Footer Start -->
	<div id="bottom_footer">
		<div class="reserve_text">
			<span>Copyright &copy; 2017 Uniland All Right Reserve</span>
		</div>
	</div>
	<!-- Bottom Footer End -->

	<!-- Scroll to top -->
	<div class="scroll-to-top">
		<a href="#" class="scroll-btn" data-target=".pagewrap"><i
			class="fa fa-angle-up" aria-hidden="true"></i></a>
	</div>
	<!-- End Scroll To top -->

	<!-- All Javascript Plugin File here -->
	<jsp:include page="js.jsp"></jsp:include>
</body>
</html>