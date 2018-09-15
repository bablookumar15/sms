<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
	</head>
	<body class="pagewrap property-submit-page">
		
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
							<h3 class="page_title">Admission Form</h3>
							<div class="page_location">
								<a href="${pageContext.request.contextPath}">Home</a> 
								<i class="fa fa-angle-right" aria-hidden="true"></i>
								<span>Submit School</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->
		
		<!-- Submit Property Start -->
		<section id="submit_property">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-sm-12">
						<form:form class="submit_form" method="post" enctype="multipart/form-data" commandName="studentRegBean" name="studentEditForm">
							<div class="basic_information">
								<h4 class="inner-title">Basic Information</h4>
								<div class="row">
									
									<div class="col-md-12 col-sm-12">
										<input type="text" placeholder="School Name" class="property_submit" id="schoolnameR" disabled="disabled" value="${schoolInfoBean.schoolname}" />
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="nameR1" style="display: none; color: red;">Please Enter Student Name.</span>
										<form:input type="text" placeholder="Student Name" class="property_submit" id="nameR" path="name" onclick="hideError(this);"></form:input>
									</div>
									
									
									<div class="col-md-6 col-sm-6">
									<span id="dobR1" style="display: none; color: red;">Please Enter Date of Birth.</span>
										<form:input type="text" placeholder="Date of Birth" class="property_submit" id="dobR" path="dob" data-provide="datepicker-inline" onclick="hideError(this);"></form:input>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="genderR1" style="display: none; color: red;">Please Select Gender.</span>
										<form:select class="selectpicker form-control" path="gender" id="genderR" onchange="hideError(this);">
											<option value="-1">Gender</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
										</form:select>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="categoryR1" style="display: none; color: red;">Please Select Category.</span>
										<form:select class="selectpicker form-control" path="category" id="categoryR" onchange="hideError(this);">
											<option value="-1">Category</option>
											<option value="General">General</option>
											<option value="SC/ST">SC/ST</option>
											<option value="OBC">OBC</option>
										</form:select>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="bloodgrpR1" style="display: none; color: red;">Please Select Blood Group.</span>
										<form:select class="selectpicker form-control" path="bloodgrp" id="bloodgrpR" onchange="hideError(this);">
											<option value="-1">Blood Group</option>
											<option value="A+">A+</option>
											<option value="A-">A-</option>
											<option value="B+">B+</option>
											<option value="B-">B-</option>
											<option value="AB+">AB+</option>
											<option value="AB-">AB-</option>
											<option value="O+">O+</option>
											<option value="O-">O-</option>
										</form:select>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="edugradeR1" style="display: none; color: red;">Please Select Class.</span>
										<form:select class="selectpicker form-control" path="edugrade" id="edugradeR" onchange="hideError(this);">
											<option value="-1">Class</option>
											<c:forEach items="${schoolInfoBean.edugradeVal}" var="e">
												<option value="${e}">${e}</option>	
											</c:forEach>
										</form:select>
									</div>
									
								</div>
								<div class="alert alert-warning">Please input the correct information of Student.</div>
							</div>
							
							<div class="upload_media">
								<h4 class="inner-title">Student Photo</h4>
								<div class="row">
									<div class="col-md-12">
									<span id="fileupload-example-11" style="display: none; color: red;">Please Upload Photo.</span>
										<form:input type="file" id="fileupload-example-1" path="studimg" onclick="hideError(this);"></form:input>
										<label class="fileupload-example-label" for="fileupload-example-1">Drop your photos here or Click</label>
									</div>
								</div>
								<div class="alert alert-warning">Please upload the photo of the Student, please keep the photo size 760X410 ratio.</div>
							</div>
							
							<div class="basic_information">
								<h4 class="inner-title">Parent Information</h4>
								<div class="row">
									
									<div class="col-md-12 col-sm-12">
									<span id="mothernameR1" style="display: none; color: red;">Please Enter Mother Name.</span>
										<form:input type="text" placeholder="Mother Name" class="property_submit" id="mothernameR" path="mothername" onclick="hideError(this);"></form:input>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="mqualificationR1" style="display: none; color: red;">Please Select Qualification.</span>
										<form:select class="selectpicker form-control" path="mqualification" id="mqualificationR" onchange="hideError(this);">
											<option value="-1">Mother Qualification</option>
											<option value="Graduate">Graduate</option>
											<option value="Above Graduate">Above Graduate</option>
											<option value="Under Graduate">Under Graduate</option>
											<option value="Other">Other</option>
										</form:select>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="mqoccupationR1" style="display: none; color: red;">Please Select Occupation.</span>
										<form:select class="selectpicker form-control" path="mqoccupation" id="mqoccupationR" onchange="hideError(this);">
											<option value="-1">Mother Occupation</option>
											<option value="Employed">Employed</option>
											<option value="Self Employed">Self Employed</option>
											<option value="Unemployed">Unemployed</option>
											<option value="House Wife">House Wife</option>
											<option value="Other">Other</option>
										</form:select>
									</div>
									
									
									<div class="col-md-6 col-sm-6">
									<span id="memailR1" style="display: none; color: red;">Please Enter Email Address.</span>
									<span id="memailR2" style="display: none; color: red;">Please Enter Valid Email Address.</span>
										<form:input type="email" placeholder="Email Address" id="memailR" class="property_submit" path="memail" onclick="hideError(this);"></form:input>
									</div>
									
									
									<div class="col-md-6 col-sm-6">
									<span id="mmobileR1" style="display: none; color: red;">Please Enter Mobile Number.</span>
									<span id="mmobileR2" style="display: none; color: red;">Please Enter Valid Mobile Number.</span>
										<form:input type="text" placeholder="Phone Number" id="mmobileR" class="property_submit" path="mmobile" onclick="hideError(this);"></form:input>
									</div>
									
									<div class="col-md-12 col-sm-12">
									<span id="fathernameR1" style="display: none; color: red;">Please Enter Father Name.</span>
										<form:input type="text" placeholder="Father Name" class="property_submit" id="fathernameR" path="fathername" onclick="hideError(this);"></form:input>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="fqualificationR1" style="display: none; color: red;">Please Select Qualification.</span>
										<form:select class="selectpicker form-control" path="fqualification" id="fqualificationR" onchange="hideError(this);">
											<option value="-1">Father Qualification</option>
											<option value="Graduate">Graduate</option>
											<option value="Above Graduate">Above Graduate</option>
											<option value="Under Graduate">Under Graduate</option>
											<option value="Other">Other</option>
										</form:select>
									</div>
									
									<div class="col-md-6 col-sm-6">
									<span id="fqoccupationR1" style="display: none; color: red;">Please Select Occupation.</span>
										<form:select class="selectpicker form-control" path="fqoccupation" id="fqoccupationR" onchange="hideError(this);">
											<option value="-1">Father Occupation</option>
											<option value="Employed">Employed</option>
											<option value="Self Employed">Self Employed</option>
											<option value="Unemployed">Unemployed</option>
											<option value="Other">Other</option>
										</form:select>
									</div>
									
									
									<div class="col-md-6 col-sm-6">
									<span id="femailR1" style="display: none; color: red;">Please Enter Email Address.</span>
									<span id="femailR2" style="display: none; color: red;">Please Enter Valid Email Address.</span>
										<form:input type="email" placeholder="Email Address" id="femailR" class="property_submit" path="femail" onclick="hideError(this);"></form:input>
									</div>
									
									
									<div class="col-md-6 col-sm-6">
									<span id="fmobileR1" style="display: none; color: red;">Please Enter Mobile Number.</span>
									<span id="fmobileR2" style="display: none; color: red;">Please Enter Valid Mobile Number.</span>
										<form:input type="text" placeholder="Phone Number" id="fmobileR" class="property_submit" path="fmobile" onclick="hideError(this);"></form:input>
									</div>
								</div>
								<div class="alert alert-warning">Please input the correct information of Parent.</div>
							</div>
							
							<div class="property_location">
								<h4 class="inner-title">Address Information</h4>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div class="row">
											
											
											<div class="col-md-12 col-sm-12">
											<span id="addressR1" style="display: none; color: red;">Please Enter Address.</span>
												<form:textarea type="text" placeholder="Adddress..." class="property_submit" id="addressR" path="address" onclick="hideError(this);"></form:textarea>
											</div>
											
											<div class="col-md-4 col-sm-4">
											<span id="cityR1" style="display: none; color: red;">Please Enter City.</span>
												<form:input type="text" placeholder="City" class="property_submit" id="cityR" path="city" onclick="hideError(this);"></form:input>
											</div>
											
											<div class="col-md-4 col-sm-4">
											<span id="stateR1" style="display: none; color: red;">Please Enter State.</span>
												<form:input type="text" placeholder="State" class="property_submit" id="stateR" path="state" onclick="hideError(this);"></form:input>
											</div>
											
											<div class="col-md-4 col-sm-4">
											<span id="zipcodeR1" style="display: none; color: red;">Please Enter Zip Code.</span>
											<span id="zipcodeR2" style="display: none; color: red;">Please Enter Valid Zip Code.</span>
												<form:input type="text" placeholder="Zip Code" class="property_submit" id="zipcodeR" path="zipcode" onclick="hideError(this);"></form:input>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="property_owner">
								<div class="browse_submit">
									<input type="button" value="submit" class="btn btn-default" onclick="submitStudent();">
									<input type="button" value="Cancel" class="btn btn-default" onclick="cancelSubmitStudent();">
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</section>
		<!-- Submit Property End -->
		
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
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript">
	function submitStudent() {
		var flag = true;
		var input = document.getElementsByTagName("input");
		var select = document.getElementsByTagName("select");
		var img = document.getElementById("fileupload-example-1");
		var address = document.getElementById("addressR");
		
		for (var a = 0; a < select.length; a++) {
			if (select[a].value=="-1") {
				document.getElementById(select[a].id + "1").style.display = "block";
				flag = false;
			}
		} 
		
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
			if((input[a].id == "fmobileR" || input[a].id == "mmobileR") && input[a].value != "" && !validatePhone(input[a])){
				document.getElementById(input[a].id + "2").style.display = "block";
				flag = false;
			}
			if(input[a].id == "zipcodeR" && input[a].value != "" && !validateZipcode(input[a])){
				document.getElementById(input[a].id + "2").style.display = "block";
				flag = false;
			}
		}
		
		if (address.value=="") {
			document.getElementById(address.id + "1").style.display = "block";
			flag = false;
		}
		
		if (img.value != "" && img.files[0].size > 1024000) {
			document.getElementById(img.id + "1").style.display = "block";
			flag = false;
		}
		
		if (flag) {
			document.studentEditForm.action = "${pageContext.request.contextPath}/editStudent.do?id=${studentRegBean.studentid}";
			document.studentEditForm.submit();
		}
	}
	
	function cancelSubmitStudent() {
		document.studentEditForm.action = "${pageContext.request.contextPath}/cancelEditStudent";
		document.studentEditForm.submit();
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#genderR option[value='${studentRegBean.gender}']").attr("selected", true);
		$("#categoryR option[value='${studentRegBean.category}']").attr("selected", true);
		$("#bloodgrpR option[value='${studentRegBean.bloodgrp}']").attr("selected", true);
		$("#edugradeR option[value='${studentRegBean.edugrade}']").attr("selected", true);
		$("#mqualificationR option[value='${studentRegBean.mqualification}']").attr("selected", true);
		$("#mqoccupationR option[value='${studentRegBean.mqoccupation}']").attr("selected", true);
		$("#fqualificationR option[value='${studentRegBean.fqualification}']").attr("selected", true);
		$("#fqoccupationR option[value='${studentRegBean.fqoccupation}']").attr("selected", true);
	});
</script>
</html>	