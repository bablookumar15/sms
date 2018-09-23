<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<h3 class="page_title">Change Password</h3>
						<div class="page_location">
							<a href="${pageContext.request.contextPath}">Home</a> <i class="fa fa-angle-right"
								aria-hidden="true"></i> <span>Change Password</span>
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
					<h4 class="inner-title">Change Password</h4>
				</div>
				<div class="modal-body login_body">
					<p>Please Provide Generated Correct PIN and a New Password.</p>
					<div class="login_option">
						<form class="signin" method="post" name="changeForm">
							
								<span id="pinR1" style="display: none; color: red;">Please Enter PIN.</span>
								<div class="form-group">
									<input type="text" class="form-control" name="pin" id="pinR" placeholder="PIN" onclick="hideError(this);" onkeypress="return isNumberKey(event)"></input>
								</div>
								<span id="passwordR1" style="display: none; color: red;">Please Enter Password.</span>
								<div class="form-group">
									<input type="password" class="form-control" name="password" id="passwordR" placeholder="Password" onclick="hideError(this);"></input>
								</div>
								
								<span id="confirm_passwordR1" style="display: none; color: red;">Please Enter Confirm Password.</span>
								<span id="confirm_passwordR2" style="display: none; color: red;">Passwords are not Equal.</span>
								<div class="form-group">
									<input type="password" class="form-control" name="confirm_password" id="confirm_passwordR" placeholder="Confirm Password" onclick="hideError(this);">
								</div>

							<div class="form-group">
								<input type="button" name="signin" class="btn btn-default" onclick="changePwd();" value="Submit">
							</div>
						</form>
					</div>
					<div class="submit_area">
						<span>For Login <a href="${pageContext.request.contextPath}/login">click here</a></span>
					</div>
				</div>
				<div class="modal-footer">
					<span>Click and read our terms and condition<a href="#">Terms
							and Condition</a></span>
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
<script type="text/javascript">
	function changePwd() {
		var flag = true;
		var input = document.getElementsByTagName("input");
		var pwd = document.getElementById("passwordR");
		var cpwd = document.getElementById("confirm_passwordR");
		for (var a = 0; a < input.length; a++) {
			if ((input[a].type == "text" || input[a].type == "password")
					&& input[a].value == "" && input[a].id.slice(-1) == "R") {
				document.getElementById(input[a].id + "1").style.display = "block";
				flag = false;
			}
			
		}
		if (cpwd.value != "" && pwd.value != cpwd.value) {
			document.getElementById(cpwd.id + "2").style.display = "block";
			flag = false;
		}
		if (flag) {
			document.changeForm.action = "${pageContext.request.contextPath}/forgotpwd";
			document.changeForm.submit();
		}
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		<c:if test="${msg != null}">
			$.notify("${msg}");
		</c:if>
	});
</script>
</html>