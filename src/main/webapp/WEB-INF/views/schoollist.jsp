<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body class="pagewrap page-style-4">
		
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
							<h3 class="page_title">Schools</h3>
							<div class="page_location">
								<a href="${pageContext.request.contextPath}/home">Home</a> 
								<i class="fa fa-angle-right" aria-hidden="true"></i> 
								<span>Schools</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->
		
		<!-- Find Part Satrt -->
		<div id="find_area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="property_search_form"> 
							<form method="post" class="property_filter_input" name="SchoolSearchFormCriteria">
							<input type="hidden" id="lat" value="">
							<input type="hidden" id="log" value="">
								<div class="row">
									
									<div class="col-md-3 col-sm-6">
										<input type="search" placeholder="School Name or Area" name="school_search" id="school_search" class="form-control search_property">
									</div>
									<div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control" name="standard">
											<option value="-1">Class</option>
											<option value="Standard 1">Standard 1</option>
											<option value="Standard 2">Standard 2</option>
											<option value="Standard 3">Standard 3</option>
											<option value="Standard 4">Standard 4</option>
											<option value="Standard 5">Standard 5</option>
											<option value="Standard 6">Standard 6</option>
											<option value="Standard 7">Standard 7</option>
											<option value="Standard 8">Standard 8</option>
											<option value="Standard 9">Standard 9</option>
											<option value="Standard 10">Standard 10</option>
											<option value="Standard 11">Standard 11</option>
											<option value="Standard 12">Standard 12</option>
										</select>
									</div>
									<div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control" name="facility">
											<option value="-1">Facility</option>
											<option value="Principal Office">Principal Office</option>
											<option value="Library">Library</option>
											<option value="Counseling Room">Counseling Room</option>
											<option value="Canteen /Cafeteria">Canteen /Cafeteria</option>
											<option value="Medical Clinic">Medical Clinic</option>
											<option value="Audio-Visual Center">Audio-Visual Center</option>
											<option value="Reading Center">Reading Center</option>
											<option value="Speech Laboratory">Speech Laboratory</option>
											<option value="Science Laboratory">Science Laboratory</option>
											<option value="Computer Laboratory">Computer Laboratory</option>
											<option value="Faculty Room">Faculty Room</option>
											<option value="Industrial Workshop">Industrial Workshop</option>
											<option value="Fire Security">Fire Security</option>
											<option value="Fitness Room">Fitness Room</option>
											<option value="Bathtub and Shower">Bathtub and Shower</option>
										</select>
									</div>
									<div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control" name="sortby">
											<option value="-1">SortBy</option>
											<option value="1">Default</option>
											<option value="2">Near by Me</option>
										</select>
									</div>
									<div class="col-md-2 col-sm-6">
										<input type="button" value="Search" class="btn btn-default" onclick="searchSchoolCriteria();">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Find Part End -->
		
		<!-- Property Grid Start -->
		<section id="property_area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- Property Grids -->
						<div class="row">
						<c:if test="${requestScope.schools != null}">

							<c:forEach items="${requestScope.schools}" var="s">
								<div class="col-md-4 col-sm-6">
									<div class="property_grid">
										<div class="img_area">
											<c:choose>
												<c:when test="${s.active}">
													<div class="sale_btn">Active</div>
												</c:when>
												<c:otherwise>
													<div class="sale_btn">InActive</div>
												</c:otherwise>
											</c:choose>
											
											<a href="#"><img src="data:image/jpg;base64,${s.imgdata}"alt="" style="height: 300px; width: 300px;"></a>
											<div class="sale_amount">Reg.Dt&nbsp;:&nbsp;${s.createddate}
											</div>
											<div class="hover_property">
												<ul>
													<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
												</ul>
											</div>
										</div>
										<div class="property-text">
											<a href="${pageContext.request.contextPath}/loadSchool?id=${s.schoolinfoid}"><h5 class="property-title">${s.schoolname}</h5></a> 
											<span><i class="fa fa-map-marker" aria-hidden="true"></i>${s.schooladdress}</span>
											<div class="quantity">
												<ul>
													<li><span>Area</span>${s.schoolarea} Sqft</li>
													<li><span>Rooms</span>${s.numberofrooms}</li>
													<li><span>Education Board</span>${s.eduboard}</li>
												</ul>
											</div>
										</div>
										<div class="bed_area">
											<ul>
												<li>${s.schoolwebsite}</li>
												<li class="flat-icon"><a href="${pageContext.request.contextPath}/apply?id=${s.schoolinfoid}"><img src="${pageContext.request.contextPath}/resources/img/apply.png" alt="Apply"></a></li>
											</ul>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
					</div>
						<!-- End property Grids -->
						<div class="row">
							<div class="col-md-12">
								<div class="pagination_area">
									<nav aria-label="Page navigation">
										<ul class="pagination pagination_edit">
											<li>
												<a href="#" aria-label="Previous">
													<span aria-hidden="true">prev</span>
												</a>
											</li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li>
												<a href="#" aria-label="Next">
													<span aria-hidden="true">next</span>
												</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Property Grid End -->
			
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
<script type="text/javascript">
function geolocate() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
    	  document.getElementById("lat").value = position.coords.latitude;
    	  document.getElementById("log").value = position.coords.longitude;
      });
    }
  }
</script>
<script type="text/javascript">
function searchSchoolCriteria() {
	var lat = document.getElementById("lat").value;
	var log = document.getElementById("log").value;
	document.SchoolSearchFormCriteria.action = "${pageContext.request.contextPath}/searchSchool?lat="+lat+"&log="+log;
	document.SchoolSearchFormCriteria.submit();
}
	
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyADAvRonq8GcS5dNWMPgDMf17hgiaTHs7E&callback=geolocate"></script>
<script type="text/javascript">
	$(document).ready(function() {
		<c:if test="${msg != null}">
			$.notify("${msg}");
		</c:if>
	});
</script>
</html>