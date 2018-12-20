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
								<div class="row">
									
									<div class="col-md-5 col-sm-6">
										<input type="search" placeholder="School Name or Area" name="school_search" id="school_search" class="form-control search_property">
									</div>
									<div class="col-md-1 col-sm-6">
										<div align="center">OR</div>
									</div>
									
									<div class="col-md-3 col-sm-6">
									<span id="near_location1" style="display: none; color: red;">Please Enter near by location.</span>
										<input type="search" placeholder="Near by Location" name="near_location" id="near_location" onclick="hideError(this);" class="form-control search_property">
									</div>
									
									<div class="col-md-3 col-sm-6">
									<span id="dist_near_location1" style="display: none; color: red;">Please Enter distance.</span>
										<input type="search" placeholder="Distance from Near by Location" name="dist_near_location" id="dist_near_location" class="form-control search_property" onclick="hideError(this);" onkeypress="return isNumberKey(event)">
									</div>
									<div class="col-md-5 col-sm-6">
										<select class="selectpicker form-control" name="standard">
											<option value="-1">Class</option>
											<option>Standard 1</option>
											<option>Standard 2</option>
											<option>Standard 3</option>
											<option>Standard 4</option>
											<option>Standard 5</option>
											<option>Standard 6</option>
											<option>Standard 7</option>
											<option>Standard 8</option>
											<option>Standard 9</option>
											<option>Standard 10</option>
											<option>Standard 11</option>
											<option>Standard 12</option>
										</select>
									</div>
									<div class="col-md-5 col-sm-6">
										<select class="selectpicker form-control" name="facility">
											<option value="-1">Facility</option>
											<option>Principal Office</option>
											<option>Library</option>
											<option>Counseling Room</option>
											<option>Canteen /Cafeteria</option>
											<option>Medical Clinic</option>
											<option>Audio-Visual Center</option>
											<option>Reading Center</option>
											<option>Speech Laboratory</option>
											<option>Science Laboratory</option>
											<option>Computer Laboratory</option>
											<option>Faculty Room</option>
											<option>Industrial Workshop</option>
											<option>Fire Security</option>
											<option>Fitness Room</option>
											<option>Bathtub and Shower</option>
										</select>
									</div>
									
									<!-- <div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control">
											<option>Bathrooms</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control">
											<option>Any Type</option>
											<option>House</option>
											<option>Office</option>
											<option>Appartment</option>
											<option>Condos</option>
											<option>Villa</option>
											<option>Small Family</option>
											<option>Single Room</option>
										</select>
									</div> -->
									<!-- <div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="minprice" placeholder="Min Price (USD)" >
									</div> -->
									<!-- <div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="maxprice" placeholder="Max Price (USD)" >
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="minarea" placeholder="Min Area (sqft)" >
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="maxarea" placeholder="Max Area (sqft)" >
									</div> -->
									<div class="col-md-2 col-sm-6">
										<input type="button" name="search" class="btn btn-default" value="Search" onclick="searchSchoolCriteria();">
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
function searchSchoolCriteria() {
	var flag = true;
	var name_area = document.getElementById("school_search");
	var near_location = document.getElementById("near_location");
	var dist_near_location = document.getElementById("dist_near_location");
	if(name_area.value==""){
		if(near_location.value==""){
			document.getElementById(near_location.id + "1").style.display = "block";
			flag = false;
		}
		if(dist_near_location.value==""){
			document.getElementById(dist_near_location.id + "1").style.display = "block";
			flag = false;
		}
	}
	if (flag) {
		document.SchoolSearchFormCriteria.action = "${pageContext.request.contextPath}/searchSchool";
		document.SchoolSearchFormCriteria.submit();
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