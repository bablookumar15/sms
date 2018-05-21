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
						<form:form method="post" class="submit_form" commandName="schoolInfoBean">
							<div class="basic_information">
								<h4 class="inner-title">Basic Information</h4>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<form:input type="text" placeholder="School Name" class="property_submit" path="schoolname"></form:input>
									</div>
									<div class="col-md-12 col-sm-12">
										<form:input type="text" placeholder="Education Board" class="property_submit" path="eduboard"></form:input>
									</div>
									<div class="col-md-6 col-sm-6">
										<form:input type="text" placeholder="School ID" class="property_submit" path="schoolid"></form:input>
									</div>
									<div class="col-md-6 col-sm-6">
										<form:input type="text" placeholder="Grade of Education" class="property_submit" path="edugrade"></form:input>
									</div>
									<div class="col-md-6 col-sm-6">
										<form:input type="text" placeholder="Ares (Sqft)" class="property_submit" path="schoolarea"></form:input>
									</div>
									<div class="col-md-6 col-sm-6">
										<form:input type="text"  placeholder="No. Of Rooms" class="property_submit" path="numberofrooms"></form:input>
									</div>
									<div class="col-md-12 col-sm-12">
										<form:input type="text" placeholder="School Website" class="property_submit" path="schoolwebsite"></form:input>
									</div>
								</div>
								<div class="alert alert-warning">Please input the correct information of School. Because it will effect on property search.</div>
							</div>
							
							<div class="property_location">
								<h4 class="inner-title">School location</h4>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div class="row">
											<div class="col-md-6 col-sm-6">
												<form:input type="text" placeholder="School Adddress" class="property_submit" path="schooladdress"></form:input>
											</div>
											<div class="col-md-6 col-sm-6">
												<form:input type="text" placeholder="Zone" class="property_submit" path="zone"></form:input>
											</div>
											<div class="col-md-4 col-sm-4">
												<form:input type="text" placeholder="State" class="property_submit" path="state"></form:input>
											</div>
											<div class="col-md-4 col-sm-4">
												<form:input type="text" placeholder="City" class="property_submit" path="city"></form:input>
											</div>
											<div class="col-md-4 col-sm-4">
												<form:input type="text" placeholder="Zip Code" class="property_submit" path="zipcode"></form:input>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="check_feature">
								<h4 class="inner-title">Check Facilities</h4>
								<div class="row">
									<div class="check_submit">
									
									<ul>
										<li><form:checkboxes id="feature_1" cssClass="submit_checkbox" path="facilities" items="${facilities}"/></li>
									</ul>
									</div>
								</div>
								<div class="alert alert-warning">Check the extra features and facility of the school.</div>
							</div>
							
							<div class="description">
								<h4 class="inner-title">Description</h4>
								<form:textarea name="description" placeholder="Type Description..." class="form_description" path="description"></form:textarea>
								<div class="alert alert-warning">Need a proper description about the School. So that viewer can easily understand about the School.</div>
							</div>
							
							
							<div class="upload_media">
								<h4 class="inner-title">Add Photo</h4>
								<div class="row">
									<div class="col-md-12">
										<div class="browse_submit">
											<form:input type="file" id="fileupload-example-1" path="img"></form:input>
											<label class="fileupload-example-label" for="fileupload-example-1">Drop your photos here or Click</label>
										</div>
									</div>
								</div>
								<div class="alert alert-warning">Please upload the photo of the property, please keep the photo size 760X410 ratio.</div>
							</div>
							<div class="property_owner">
								<h4 class="inner-title">Contact Details</h4>
								<div class="row">
									<div class="col-md-4">
										<input type="email" placeholder="Email Address" class="property_submit">
									</div>
									<div class="col-md-4">
										<input type="text" placeholder="Phone Number" class="property_submit">
									</div>
								</div>
								<div class="browse_submit">
									<input type="button" value="submit" class="btn btn-default">
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
</html>	