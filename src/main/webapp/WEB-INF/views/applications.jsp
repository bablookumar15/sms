<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body class="pagewrap property-list-page">
		
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
							<h3 class="page_title">Properties</h3>
							<div class="page_location">
								<a href="${pageContext.request.contextPath}/home">Home</a>
								<i class="fa fa-angle-right" aria-hidden="true"></i> 
								<span>Applications</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->
		
		<!-- Property List Start -->
		<section id="property_area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- Property List Start -->
						<div class="row">
						<c:if test="${studentRegBeans != null}">

							<c:forEach items="${studentRegBeans}" var="s">
							<div class="col-md-12">
								<div class="property_list">
									<div class="img_area list_img">
										<!-- <div class="sale_btn">Rent</div> -->
										<a href="#"><img src="data:image/jpg;base64,${s.imgdata}" alt="" style="height: 250px; width: 250px;"></a>
										<!-- <div class="sale_amount">2 Hours Ago</div> -->
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="list_type">
										<div class="property-text">
											<a href="#"><h5 class="property-title">Lovelece Road Greenfield</h5></a>
											<span><i class="fa fa-map-marker" aria-hidden="true"></i> 528 Poplar Chase Lane Boise</span>
											<p>Molestie pretium hendrerit, pretium. Turpis condimentum nam cubilia orci. Facilisi cubilia est magna hymenaeos proin luctus nunc. Porta nonummy phasellus.</p>
											<div class="quantity">
												<ul>
													<li><span>Area</span>1200 Sqft</li>
													<li><span>Rooms</span>5</li>
													<li><span>Beds</span>2</li>
													<li><span>Baths</span>2</li>
													<li><span>Garage</span>1</li>
												</ul>
											</div>
										</div>
										<div class="bed_area">
											<ul>
												<li>$1250/mo</li>
												<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
												<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
							</c:if>
						</div>
						<!-- End Property list -->
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
		<!-- Property List End -->
		
		
		
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
	$(document).ready(function() {
		<c:if test="${msg != null}">
			$.notify("${msg}");
		</c:if>
	});
</script>
</html>	