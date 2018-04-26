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
								<a href="${pageContext.request.contextPath}">Home</a> 
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
						<form:form class="registation" method="post" commandName="signupBean" name="signupForm">
							<div class="radio_option">
								<input type="radio" name="role" value="1" checked>
								<label>School Admin</label>
								<input type="radio" name="role" value="2">
								<label>Parent</label>
							</div>
							<div class="signup_option">
							
								<span id="first_nameR1" style="display: none; color: red;">Please Enter First Name.</span>
								<div class="form-group">
									<input type="text" class="form-control" name="first_name" id="first_nameR" placeholder="First Name" onclick="hideError(this);">
								</div>
								
								<span id="last_nameR1" style="display: none; color: red;">Please Enter Last Name.</span>
								<div class="form-group">
									<input type="text" class="form-control" name="last_name" id="last_nameR" placeholder="Last Name" onclick="hideError(this);">
								</div>
								
								<span id="emailR1" style="display: none; color: red;">Please Enter Email Address.</span>
								<span id="emailR2" style="display: none; color: red;">Please Enter Valid Email Address.</span>
								<div class="form-group">
									<input type="email" class="form-control" name="email" id="emailR" placeholder="Email Address" onclick="hideError(this);">
								</div>
								
								<span id="passwordR1" style="display: none; color: red;">Please Enter Password.</span>
								<div class="form-group">
									<input type="password" class="form-control" name="password" id="passwordR" placeholder="Password" onclick="hideError(this);">
								</div>
								
								<span id="confirm_passwordR1" style="display: none; color: red;">Please Enter Confirm Password.</span>
								<div class="form-group">
									<input type="password" class="form-control" name="confirm_password" id="confirm_passwordR" placeholder="Confirm Password" onclick="hideError(this);">
								</div>
								
								<span id="mobileR1" style="display: none; color: red;">Please Enter Mobile Number.</span>
								<span id="mobileR2" style="display: none; color: red;">Please Enter Valid Mobile Number.</span>
								<div class="form-group">
									<input type="number" class="form-control" name="mobile" id="mobileR" placeholder="Mobile Number" onclick="hideError(this);">
								</div>
								
								<span id="addressR1" style="display: none; color: red;">Please Enter Address.</span>
								<div class="form-group">
									<textarea class="form-control" name="address" id="addressR" placeholder="Address" onclick="hideError(this);"></textarea>
								</div>
							</div>
						</form:form>
						<div class="submit_area">
							<input type="button" name="registration" class="btn btn-default" value="Sign Up" onclick="doSignup();">
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
<script type="text/javascript">
	function doSignup() {
		var flag = true;
		var input = document.getElementsByTagName("input");
		var address = document.getElementById("addressR");
		for (var a = 0; a < input.length; a++) {
			if ((input[a].type == "email" || input[a].type == "text" || input[a].type == "number" || input[a].type == "password")
					&& input[a].value == "" && input[a].id.slice(-1) == "R") {
				document.getElementById(input[a].id + "1").style.display = "block";
				flag = false;
			}
			if(input[a].type == "email" && input[a].value != "" && !validateEmail(input[a])){
				document.getElementById(input[a].id + "2").style.display = "block";
				flag = false;
			}
			if(input[a].type == "number" && input[a].value != "" && !validatePhone(input[a])){
				document.getElementById(input[a].id + "2").style.display = "block";
				flag = false;
			}
		}
		if (address.value=="") {
			document.getElementById(address.id + "1").style.display = "block";
			flag = false;
		}
		if (flag) {
			document.signupForm.action = "${pageContext.request.contextPath}/signup.do";
			document.signupForm.submit();
		}
	}
</script>
</html>