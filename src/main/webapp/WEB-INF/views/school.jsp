<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body class="pagewrap single-property-page">
		
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
							<h3 class="page_title">School Detail</h3>
							<div class="page_location">
								<a href="${pageContext.request.contextPath}/home">Home</a>
								<i class="fa fa-angle-right" aria-hidden="true"></i> 
								<span>School Detail</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Banner Section End -->
		
		<c:choose>
		<c:when test="${schoolInfoBean != null}">
		<!-- Single Property Start -->
		<section id="single_property">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<div class="property_slider">
									<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">										
										<!-- Wrapper for slides -->
										<div class="carousel-inner" role="listbox">
											<div class="item active">
												<img src="data:image/jpg;base64,${schoolInfoBean.imgdata}" alt="" style="height: 400px;">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>						
						<div class="row">
							<div class="col-md-12">
								<div class="detail_text">
									<div class="property-text">
										<h4 class="property-title">${schoolInfoBean.schoolname}</h4>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i>${schoolInfoBean.schooladdress},&nbsp;${schoolInfoBean.zipcode}</span>
											<blockquote>${schoolInfoBean.description}</blockquote>
										</div>
								</div>
								
								<div class="single_feature">
									<h4 class="inner-title">Grade of Education</h4>
									<div class="info-list">
										<ul>
											<c:forEach items="${schoolInfoBean.edugradeVal}" var="g">
												<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>${g}</li>
											</c:forEach>
										</ul>
									</div>
								</div>
								
								<div class="single_feature">
									<h4 class="inner-title">Facilities</h4>
									<div class="info-list">
										<ul>
											<c:forEach items="${schoolInfoBean.facilitiesVal}" var="f">
												<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>${f}</li>
											</c:forEach>
										</ul>
									</div>
								</div>
								<div class="single_map">
									<h4 class="inner-title">Location</h4>
									<div id="map" class="map-canvas"> </div>
								</div>
								<div class="rating-box">
									<div class="row">
										<div class="form-group col-md-12 col-sm-12">
											<c:choose>
												<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_SYSTEM_ADMIN'}">
													<c:choose>
														<c:when test="${schoolInfoBean.active}">
															<a href="${pageContext.request.contextPath}/schoolStatus?id=${schoolInfoBean.schoolinfoid}&status=false" onclick="return confirm('Are you sure to DeActive?')" class="btn btn-default">DeActive</a>
														</c:when>
														<c:otherwise>
															<a href="${pageContext.request.contextPath}/schoolStatus?id=${schoolInfoBean.schoolinfoid}&status=true" onclick="return confirm('Are you sure to Active?')" class="btn btn-default">Active</a>
														</c:otherwise>
													</c:choose>
													<a href="${pageContext.request.contextPath}/editSchool?id=${schoolInfoBean.schoolinfoid}" class="btn btn-default">Edit</a>
													<a href="${pageContext.request.contextPath}/cancel" class="btn btn-default">Back</a>
												</c:when>
												<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_PARENT'}">
													<a href="${pageContext.request.contextPath}/apply?id=${schoolInfoBean.schoolinfoid}" class="btn btn-default">Apply</a>
													<a href="${pageContext.request.contextPath}/cancel" class="btn btn-default">Back</a>
												</c:when>
												<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_SYSTEM_ADMIN' or sessionScope.user.role == 'ROLE_SCHOOL_ADMIN'}">
													<a href="${pageContext.request.contextPath}/editSchool?id=${schoolInfoBean.schoolinfoid}" class="btn btn-default">Edit</a>
												</c:when>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="property_sidebar">
							<div class="property_listing sidebar-widget">
								<h4 class="inner-title">School Summary</h4>
								<div class="profile_data">
									<ul>
										<li><span>School ID :</span> ${schoolInfoBean.schoolid}</li>
										<li><span>Register Date :</span>${schoolInfoBean.createddate}</li>
										<li><span>Status :</span> 
											<c:choose>
												<c:when test="${schoolInfoBean.active}">Active</c:when>
												<c:otherwise>InActive</c:otherwise>
											</c:choose>
										</li>
										<li><span>Education Board :</span> ${schoolInfoBean.eduboard}</li>
										<li><span>Website :</span> ${schoolInfoBean.schoolwebsite}</li>
										<li><span>Email :</span> ${schoolInfoBean.email}</li>
										<li><span>Contact No :</span> ${schoolInfoBean.mobile}</li>
										<li><span>Number of Rooms :</span> ${schoolInfoBean.numberofrooms}</li>
										<li><span>Area :</span> ${schoolInfoBean.schoolarea} sqft</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Single Property End --> 
		</c:when>
		<c:otherwise>
			<c:if test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_SCHOOL_ADMIN'}">
				<section id="single_property">
					<div class="container">
						<div class="row">
							<div class="rating-box">
								<div class="row">
									<div class="form-group col-md-12 col-sm-12">
										No School to Display. Please&nbsp;<a href="${pageContext.request.contextPath}/submitSchool" class="btn btn-default">Submit School</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</c:if>
		</c:otherwise>
		</c:choose>
		
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
		
		<!-- use for map style --> 
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2UbzLKPEgx1eedBN-noGUtZDwFUm9P3A&callback=initMap"></script>
		<script>
				google.maps.event.addDomListener(window, 'load', init);

				function init() {
					var mapOptions = {
						zoom: 9,
						center: new google.maps.LatLng(${schoolInfoBean.lat}, ${schoolInfoBean.log}),
						styles: [{"featureType":"water","elementType":"all","stylers":[{"hue":"#76aee3"},{"saturation":38},{"lightness":-11},{"visibility":"on"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"hue":"#8dc749"},{"saturation":-47},{"lightness":-17},{"visibility":"on"}]},{"featureType":"poi.park","elementType":"all","stylers":[{"hue":"#c6e3a4"},{"saturation":17},{"lightness":-2},{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"hue":"#cccccc"},{"saturation":-100},{"lightness":13},{"visibility":"on"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"hue":"#5f5855"},{"saturation":6},{"lightness":-31},{"visibility":"on"}]},{"featureType":"road.local","elementType":"all","stylers":[{"hue":"#ffffff"},{"saturation":-100},{"lightness":100},{"visibility":"simplified"}]},{"featureType":"water","elementType":"all","stylers":[]}]
					};

					var mapElement = document.getElementById('map');

					var map = new google.maps.Map(mapElement, mapOptions);

					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(${schoolInfoBean.lat}, ${schoolInfoBean.log}),
						map: map,
						icon: 'resources/img/marker_blue.png',
						title: 'Snazzy!'
					});
				}

		</script>
		
		<!-- <script>
				google.maps.event.addDomListener(window, 'load', init);
				
				var address='${schoolInfoBean.schoolname},${schoolInfoBean.schooladdress}';
				
				function init() {
					var mapOptions = {
						zoom: 9,
						center: new google.maps.LatLng(28.538335232, -81.3792364545), // New York
						styles: [{"featureType":"water","elementType":"all","stylers":[{"hue":"#76aee3"},{"saturation":38},{"lightness":-11},{"visibility":"on"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"hue":"#8dc749"},{"saturation":-47},{"lightness":-17},{"visibility":"on"}]},{"featureType":"poi.park","elementType":"all","stylers":[{"hue":"#c6e3a4"},{"saturation":17},{"lightness":-2},{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"hue":"#cccccc"},{"saturation":-100},{"lightness":13},{"visibility":"on"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"hue":"#5f5855"},{"saturation":6},{"lightness":-31},{"visibility":"on"}]},{"featureType":"road.local","elementType":"all","stylers":[{"hue":"#ffffff"},{"saturation":-100},{"lightness":100},{"visibility":"simplified"}]},{"featureType":"water","elementType":"all","stylers":[]}]
					};

					var mapElement = document.getElementById('map');

					var map = new google.maps.Map(mapElement, mapOptions);
					
					var geocoder = new google.maps.Geocoder();
					geocoder.geocode({ 'address': address }, function (results, status) {
			            if (status == google.maps.GeocoderStatus.OK) {
			                map.setCenter(results[0].geometry.location);
			                var marker = new google.maps.Marker({
			                    map: map,
			                    position: results[0].geometry.location,
			                    icon: 'resources/img/marker_blue.png',
								title: 'Snazzy!'
			                });

			            }
			            else {
			                alert("Geocode was not successful for the following reason: " + status);
			            }
			        });
				}

		</script> -->
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-106986305-1', 'auto');
		  ga('send', 'pageview');
		</script>
	</body>
	<script type="text/javascript">
	$(document).ready(function() {
		<c:if test="${msg != null}">
			$.notify("${msg}");
		</c:if>
	});
</script>
</html>	