<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body class="pagewrap full-page-map">
		
		<!-- Page Loader -->
			<jsp:include page="loader.jsp"></jsp:include>
		<!-- End Loader -->
		
		<!-- Slider Part Start -->
		<div id="map-banner">
			<div class="homepage-map">
				<div id="map"></div>
			</div>
		</div>
		<!-- Slider Part End --> 
		
		<header id="header">
			<jsp:include page="header.jsp"></jsp:include>			
		</header>
		
		<!-- Offer Part Start -->
		
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
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyADAvRonq8GcS5dNWMPgDMf17hgiaTHs7E&callback=initMap"></script> 
		<script src="${pageContext.request.contextPath}/resources/js/map/markerwithlabel_packed.js"></script> 
		<script src="${pageContext.request.contextPath}/resources/js/map/infobox.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/map/markerclusterer_packed.js"></script> 
		<script src="${pageContext.request.contextPath}/resources/js/map/custom-map.js"></script> 
		<script>
			_latitude = 21.7679;
			_longitude = 78.8718;
			createHomepageGoogleMap(_latitude,_longitude,${locations});
			$(window).load(function(){
				initializeOwl(false);
			});
		</script>
	</body>
</html>