<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
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
							<h3 class="page_title">Submit School</h3>
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
						<form:form class="submit_form" method="post" enctype="multipart/form-data" commandName="schoolInfoBean" name="submitSchoolForm">
							<input type="hidden" id="lat" value="">
							<input type="hidden" id="log" value="">
							
							<div class="basic_information">
								<h4 class="inner-title">Basic Information</h4>
								<div class="row">
									
									<div class="col-md-12 col-sm-12">
									<span id="schoolnameR1" style="display: none; color: red;">Please Enter School Name.</span>
										<form:input type="text" placeholder="School Name" class="property_submit" id="schoolnameR" path="schoolname" onclick="hideError(this);"></form:input>
									</div>
									
									
									<div class="col-md-12 col-sm-12">
									<span id="eduboardR1" style="display: none; color: red;">Please Enter Education Board.</span>
										<form:input type="text" placeholder="Education Board" class="property_submit" id="eduboardR" path="eduboard" onclick="hideError(this);"></form:input>
									</div>
									
									
									<div class="col-md-4 col-sm-4">
									<span id="schoolidR1" style="display: none; color: red;">Please Enter School ID.</span>
										<form:input type="text" placeholder="School ID" class="property_submit" id="schoolidR" path="schoolid" onclick="hideError(this);"></form:input>
									</div>
									
									<div class="col-md-4 col-sm-4">
									<span id="schoolareaR1" style="display: none; color: red;">Please Enter School Areas.</span>
										<form:input type="text" placeholder="School Areas (Sqft)" class="property_submit" id="schoolareaR" path="schoolarea" onclick="hideError(this);" onkeypress="return isNumberKey(event)"></form:input>
									</div>
							
									<div class="col-md-4 col-sm-4">
									<span id="numberofroomsR1" style="display: none; color: red;">Please Enter No. Of Rooms.</span>
										<form:input type="text"  placeholder="No. Of Rooms" class="property_submit" id="numberofroomsR" path="numberofrooms" onclick="hideError(this);" onkeypress="return isNumberKey(event)"></form:input>
									</div>
									
									<div class="col-md-12 col-sm-12">
									<span id="schoolwebsiteR1" style="display: none; color: red;">Please Enter School Website.</span>
										<form:input type="text" placeholder="School Website" class="property_submit" id="schoolwebsiteR" path="schoolwebsite" onclick="hideError(this);"></form:input>
									</div>
								</div>
								<div class="alert alert-warning">Please input the correct information of School. Because it will effect on property search.</div>
							</div>
							
							
							<div class="check_feature">
								<h4 class="inner-title">Grade of Education</h4><span id="edugradeR1" style="display: none; color: red;">Please Check At Least One.</span>
								<div class="row">
									<div class="check_submit">
									<ul>
											<li>
												<input id="feature_16" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 1@feature_16" onclick="hideCheckError(this)">
												<label for="feature_16"></label>
												<span>Standard 1</span>
											</li>
											<li>
												<input id="feature_17" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 2@feature_17" onclick="hideCheckError(this)">
												<label for="feature_17"></label>
												<span>Standard 2</span>
											</li>
											<li>
												<input id="feature_18" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 3@feature_18" onclick="hideCheckError(this)">
												<label for="feature_18"></label>
												<span>Standard 3</span>
											</li>
											<li>
												<input id="feature_19" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 4@feature_19" onclick="hideCheckError(this)">
												<label for="feature_19"></label>
												<span>Standard 4</span>
											</li>
											<li>
												<input id="feature_20" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 5@feature_20" onclick="hideCheckError(this)">
												<label for="feature_20"></label>
												<span>Standard 5</span>
											</li>
											<li>
												<input id="feature_21" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 6@feature_21" onclick="hideCheckError(this)">
												<label for="feature_21"></label>
												<span>Standard 6</span>
											</li>
											<li>
												<input id="feature_22" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 7@feature_22" onclick="hideCheckError(this)">
												<label for="feature_22"></label>
												<span>Standard 7</span>
											</li>
											<li>
												<input id="feature_23" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 8@feature_23" onclick="hideCheckError(this)">
												<label for="feature_23"></label>
												<span>Standard 8</span>
											</li>
											<li>
												<input id="feature_24" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 9@feature_24" onclick="hideCheckError(this)">
												<label for="feature_24"></label>
												<span>Standard 9</span>
											</li>
											<li>
												<input id="feature_25" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 10@feature_25" onclick="hideCheckError(this)">
												<label for="feature_25"></label>
												<span>Standard 10</span>
											</li>
											<li>
												<input id="feature_26" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 11@feature_26" onclick="hideCheckError(this)">
												<label for="feature_26"></label>
												<span>Standard 11</span>
											</li>
											<li>
												<input id="feature_27" type="checkbox" name="edugrade" class="submit_checkbox" value="Standard 12@feature_27" onclick="hideCheckError(this)">
												<label for="feature_27"></label>
												<span>Standard 12</span>
											</li>
										</ul>
									</div>
								</div>
								<div class="alert alert-warning">Check the Standards available in this school.</div>
							</div>
							
							<div class="property_location">
								<h4 class="inner-title">School location</h4>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div class="row">
											
											
											<div class="col-md-6 col-sm-6">
											<span id="schooladdressR1" style="display: none; color: red;">Please Enter School Address.</span>
												<form:input type="text" placeholder="School Adddress" class="property_submit" id="schooladdressR" path="schooladdress" onclick="hideError(this);"></form:input>
											</div>
											
											
											<div class="col-md-6 col-sm-6">
											<span id="zoneR1" style="display: none; color: red;">Please Enter School Zone.</span>
												<form:input type="text" placeholder="Zone" class="property_submit" id="zoneR" path="zone" onclick="hideError(this);"></form:input>
											</div>
											
											
											<div class="col-md-4 col-sm-4">
											<span id="stateR1" style="display: none; color: red;">Please Enter State of School.</span>
												<form:input type="text" placeholder="State" class="property_submit" id="stateR" path="state" onclick="hideError(this);"></form:input>
											</div>
											
											
											<div class="col-md-4 col-sm-4">
											<span id="cityR1" style="display: none; color: red;">Please Enter City of School.</span>
												<form:input type="text" placeholder="City" class="property_submit" id="cityR" path="city" onclick="hideError(this);"></form:input>
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
							
							<div class="check_feature">
								<h4 class="inner-title">Check Facilities</h4><span id="facilityR1" style="display: none; color: red;">Please Check At Least One.</span>
								<div class="row">
									<div class="check_submit">
									<ul>
											<li>
												<input id="feature_1" type="checkbox" name="facility" class="submit_checkbox" value="Principal Office@feature_1" onclick="hideCheckError(this)">
												<label for="feature_1"></label>
												<span>Principal Office</span>
											</li>
											<li>
												<input id="feature_2" type="checkbox" name="facility" class="submit_checkbox" value="Library@feature_2" onclick="hideCheckError(this)">
												<label for="feature_2"></label>
												<span>Library</span>
											</li>
											<li>
												<input id="feature_3" type="checkbox" name="facility" class="submit_checkbox" value="Counseling Room@feature_3" onclick="hideCheckError(this)">
												<label for="feature_3"></label>
												<span>Counseling Room</span>
											</li>
											<li>
												<input id="feature_4" type="checkbox" name="facility" class="submit_checkbox" value="Canteen/Cafeteria@feature_4" onclick="hideCheckError(this)">
												<label for="feature_4"></label>
												<span>Canteen/Cafeteria</span>
											</li>
											<li>
												<input id="feature_5" type="checkbox" name="facility" class="submit_checkbox" value="Medical Clinic@feature_5" onclick="hideCheckError(this)">
												<label for="feature_5"></label>
												<span>Medical Clinic</span>
											</li>
											<li>
												<input id="feature_6" type="checkbox" name="facility" class="submit_checkbox" value="Audio-Visual Center@feature_6" onclick="hideCheckError(this)">
												<label for="feature_6"></label>
												<span>Audio-Visual Center</span>
											</li>
											<li>
												<input id="feature_7" type="checkbox" name="facility" class="submit_checkbox" value="Reading Center@feature_7" onclick="hideCheckError(this)">
												<label for="feature_7"></label>
												<span>Reading Center</span>
											</li>
											<li>
												<input id="feature_8" type="checkbox" name="facility" class="submit_checkbox" value="Speech Laboratory@feature_8" onclick="hideCheckError(this)">
												<label for="feature_8"></label>
												<span>Speech Laboratory</span>
											</li>
											<li>
												<input id="feature_9" type="checkbox" name="facility" class="submit_checkbox" value="Science Laboratory@feature_9" onclick="hideCheckError(this)">
												<label for="feature_9"></label>
												<span>Science Laboratory</span>
											</li>
											<li>
												<input id="feature_10" type="checkbox" name="facility" class="submit_checkbox" value="Computer Laboratory@feature_10" onclick="hideCheckError(this)">
												<label for="feature_10"></label>
												<span>Computer Laboratory</span>
											</li>
											<li>
												<input id="feature_11" type="checkbox" name="facility" class="submit_checkbox" value="Faculty Room@feature_11" onclick="hideCheckError(this)">
												<label for="feature_11"></label>
												<span>Faculty Room</span>
											</li>
											<li>
												<input id="feature_12" type="checkbox" name="facility" class="submit_checkbox" value="Industrial Workshop@feature_12" onclick="hideCheckError(this)">
												<label for="feature_12"></label>
												<span>Industrial Workshop</span>
											</li>
											<li>
												<input id="feature_13" type="checkbox" name="facility" class="submit_checkbox" value="Fire Security@feature_13" onclick="hideCheckError(this)">
												<label for="feature_13"></label>
												<span>Fire Security</span>
											</li>
											<li>
												<input id="feature_14" type="checkbox" name="facility" class="submit_checkbox" value="Fitness Room@feature_14" onclick="hideCheckError(this)">
												<label for="feature_14"></label>
												<span>Fitness Room</span>
											</li>
											<li>
												<input id="feature_15" type="checkbox" name="facility" class="submit_checkbox" value="Bathtub and Shower@feature_15" onclick="hideCheckError(this)">
												<label for="feature_15"></label>
												<span>Bathtub and Shower</span>
											</li>
										</ul>
									</div>
								</div>
								<div class="alert alert-warning">Check the extra features and facility of the school.</div>
							</div>
							
							<div class="description">
								<h4 class="inner-title">Description</h4>
								<span id="descriptionR1" style="display: none; color: red;">Please Enter Description.</span>
								<form:textarea name="description" id="descriptionR" placeholder="Type Description..." class="form_description" path="description" onclick="hideError(this);"></form:textarea>
								<div class="alert alert-warning">Need a proper description about the School. So that viewer can easily understand about the School.</div>
							</div>
							
							
							<div class="upload_media">
								<h4 class="inner-title">Add Photo</h4>
								<div class="row">
									<div class="col-md-12">
									<span id="fileupload-example-11" style="display: none; color: red;">Please Upload Photo.</span>
									<span id="fileupload-example-12" style="display: none; color: red;">Please Upload Photo With Size Less Than 1Mb.</span>
										<form:input type="file" id="fileupload-example-1" path="schoolimg" onclick="hideError(this);"></form:input>
										<label class="fileupload-example-label" for="fileupload-example-1">Drop your photos here or Click</label>
									</div>
								</div>
								<div class="alert alert-warning">Please upload the photo of the property, please keep the photo size 760X410 ratio.</div>
							</div>
							<c:choose>
								<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_SYSTEM_ADMIN'}">
									<div class="property_owner">
										<h4 class="inner-title">School Admin</h4>
										<div class="row">
											<div class="col-md-6">
											<span id="createdbyR1" style="display: none; color: red;">Please Select School Admin.</span>
												<form:select class="selectpicker form-control" path="createdby" id="createdbyR" onchange="hideError(this);">
													<option value="-1">--Select School Admin--</option>
													<c:forEach items="${users}" var="u">
														<option value="${u.userid}">${u.firstname}</option>	
													</c:forEach>
												</form:select>
											</div>
										</div>
										<div class="browse_submit">
											<input type="button" value="submit" class="btn btn-default" onclick="submitSchool();">
											<input type="button" value="Cancel" class="btn btn-default" onclick="cancelSubmitSchool();">
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="property_owner">
										<h4 class="inner-title">Contact Details</h4>
										<div class="row">
		
											<div class="col-md-6">
											<span id="emailR1" style="display: none; color: red;">Please Enter Email Address.</span>
											<span id="emailR2" style="display: none; color: red;">Please Enter Valid Email Address.</span>
												<form:input type="email" placeholder="Email Address" id="emailR" class="property_submit" path="email" onclick="hideError(this);"></form:input>
											</div>
											
											<div class="col-md-6">
											<span id="mobileR1" style="display: none; color: red;">Please Enter Mobile Number.</span>
											<span id="mobileR2" style="display: none; color: red;">Please Enter Valid Mobile Number.</span>
												<form:input type="text" placeholder="Phone Number" id="mobileR" class="property_submit" path="mobile" onclick="hideError(this);"></form:input>
											</div>
										</div>
										<div class="browse_submit">
											<input type="button" value="submit" class="btn btn-default" onclick="submitSchool();">
											<input type="button" value="Cancel" class="btn btn-default" onclick="cancelSubmitSchool();">
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							
							
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
	<script type="text/javascript">
	function submitSchool() {
		var flag = true;
		var input = document.getElementsByTagName("input");
		var select = document.getElementsByTagName("select");
		var desc = document.getElementById("descriptionR");
		var img = document.getElementById("fileupload-example-1");
		var edugrade = document.getElementsByName("edugrade");
		var facility = document.getElementsByName("facility");
		var edugradeChecked = false;
		var facilityChecked = false;
		
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
			if(input[a].id == "mobileR" && input[a].value != "" && !validatePhone(input[a])){
				document.getElementById(input[a].id + "2").style.display = "block";
				flag = false;
			}
			if(input[a].id == "zipcodeR" && input[a].value != "" && !validateZipcode(input[a])){
				document.getElementById(input[a].id + "2").style.display = "block";
				flag = false;
			}
		}
		for (var a = 0; a < select.length; a++) {
			if (select[a].value=="-1") {
				document.getElementById(select[a].id + "1").style.display = "block";
				flag = false;
			}
		} 
		if (desc.value=="") {
			document.getElementById(desc.id + "1").style.display = "block";
			flag = false;
		}
		
		if (img.value=="") {
			document.getElementById(img.id + "1").style.display = "block";
			flag = false;
		}else if (img.files[0].size > 1024000) {
			document.getElementById(img.id + "2").style.display = "block";
			flag = false;
		}
		
		for (var i = 0; i < edugrade.length; i++) {
	        if ( edugrade[i].checked ) {
	        	edugradeChecked = true;
	        }
	    }
		
		if (!edugradeChecked) {
			document.getElementById("edugradeR1").style.display = "block";
			flag = false;
		}
		
		for (var i = 0; i < facility.length; i++) {
	        if ( facility[i].checked ) {
	        	facilityChecked = true;
	        }
	    }
		
		if (!facilityChecked) {
			document.getElementById("facilityR1").style.display = "block";
			flag = false;
		}
		var lat = document.getElementById("lat").value;
		var log = document.getElementById("log").value;
		if (flag) {
			document.submitSchoolForm.action = "${pageContext.request.contextPath}/submitSchool.do/"+lat+"/"+log;
			document.submitSchoolForm.submit();
		}
	}
	
	function cancelSubmitSchool() {
		document.submitSchoolForm.action = "${pageContext.request.contextPath}/cancel";
		document.submitSchoolForm.submit();
	}
</script>
<script type="text/javascript">
function initAutocomplete() {
    autocomplete = new google.maps.places.Autocomplete((document.getElementById('schooladdressR')));
    autocomplete.addListener('place_changed', fillInAddress);
  }

function fillInAddress() {
    var place = autocomplete.getPlace();
    document.getElementById("lat").value = place.geometry.location.lat();
    document.getElementById("log").value = place.geometry.location.lng();
    for (var i = 0; i < place.address_components.length; i++) {
      var addressType = place.address_components[i].types[0];
      if(addressType=="administrative_area_level_2"){
    	  document.getElementById("cityR").value = place.address_components[i]['long_name'];
      }
      if(addressType=="administrative_area_level_1"){
    	  document.getElementById("stateR").value = place.address_components[i]['long_name'];
      }
    }
  }

</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyADAvRonq8GcS5dNWMPgDMf17hgiaTHs7E&libraries=places&callback=initAutocomplete" async defer></script>
</html>	