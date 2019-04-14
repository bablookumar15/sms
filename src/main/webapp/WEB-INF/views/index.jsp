<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		
		<!-- Slider Part Start -->
		<section id="slider-fixed">
			<div class="fix-banner">
				<div class="carousel-caption">
					<div class="container">
						<div class="slider-search-2">
							<h1>Find Your Dream School</h1>
							<div class="property_search_form">
								<form method="post" class="property_filter_input" name="SchoolSearchForm">
									<div class="row">
										<span id="school_search1" style="display: none; color: red;">Please Enter School name or area.</span>
										<div class="col-md-9 col-sm-8">
											<input class="form-control"  type="text" id="school_search" name="school_search" placeholder="Enter School Name or Area." onclick="hideError(this);">
										</div>
										<div class="col-md-3 col-sm-4">
											<input type="button" name="search" value="Search" onclick="searchSchool();" class="btn btn-default">
										</div>									
									</div>
								</form>
							</div>
							<span>We have listed over 100000+ schools in our database</span>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Slider Part End --> 	
		
		<!-- Property Tab -->
		<section id="property-tab">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="title-row">
							<h3 class="section_title_blue">Recent <span>Schools</span></h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="gallery-section">
							<div class="auto-container">
								
								<!-- Tab Content -->
								<div class="row filter-list clearfix">
								
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
												<c:if test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_PARENT'}">
													<li class="flat-icon"><a href="${pageContext.request.contextPath}/apply?id=${s.schoolinfoid}"><img src="${pageContext.request.contextPath}/resources/img/apply.png" alt="Apply"></a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
								
									
								<!-- End tab content -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Property Tab -->		
		
		<!-- Service Section Start -->
		
		<!-- Register Section End -->
			
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
		function searchSchool() {
			var flag = true;
			var str = document.getElementById("school_search");
			if (str.value == "") {
				document.getElementById("school_search1").style.display = "block";
				flag = false;
			}
			if (flag) {
				document.SchoolSearchForm.action = "${pageContext.request.contextPath}/searchSchool";
				document.SchoolSearchForm.submit();
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