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
		
		<!-- Slider Part Start -->
		<section id="slider-fixed">
			<div class="fix-banner">
				<div class="carousel-caption">
					<div class="container">
						<div class="slider-search-2">
							<h1>Find Your Dream Home</h1>
							<div class="property_search_form">
								<form action="#" method="post" class="property_filter_input">
									<div class="row">
										<div class="col-md-2 col-sm-6">
											<select class="selectpicker form-control">
												<option>For Rent</option>
												<option>For Sale</option>
												<option>For Buy</option>
											</select>
										</div>
										<div class="col-md-2 col-sm-6">
											<select class="selectpicker form-control">
												<option>Any Type</option>
												<option>Villa</option>
												<option>Appartment</option>
												<option>House</option>
												<option>Room</option>
											</select>
										</div>
										<div class="col-md-5 col-sm-8">
											<input class="form-control" type="text" placeholder="Enter address e.g. street, city and state or zip">
										</div>
										<div class="col-md-3 col-sm-4">
											<input type="submit" name="search" value="Search" class="btn btn-default">
										</div>									
									</div>
								</form>
							</div>
							<div class="advance-page">
								<a href="property_search.html" class="btn btn-primary">Advance Search</a>
							</div>
							<span>We have listed over 100000+ property in our database</span>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Slider Part End --> 	
		
		<!-- Offer Part Start -->
		<section id="offer-style-3">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="offer_area wow fadeInLeft" data-wow-delay="200ms" data-wow-duration="1000ms">
							<div class="circle_area"><i class="flaticon-home-1"></i></div>
							<a href="#"><h5 class="offer-title">Property Booking</h5></a>
							<p>Nunc. Lectus eget. Iaculis dui velit velit turpis lacus nostra a aliquet integer</p>
							<a href="#" class="btn-link">Read More</a>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="offer_area wow fadeInLeft" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="circle_area"><i class="flaticon-pencil-and-paper"></i></div>
							<a href="#"><h5 class="offer-title">Payment Guarantee</h5></a>
							<p>Nunc. Lectus eget. Iaculis dui velit velit turpis lacus nostra a aliquet integer</p>
							<a href="#" class="btn-link">Read More</a>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="offer_area wow fadeInRight" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="circle_area"><i class="flaticon-home"></i></div>
							<a href="#"><h5 class="offer-title">House Management</h5></a>
							<p>Nunc. Lectus eget. Iaculis dui velit velit turpis lacus nostra a aliquet integer</p>
							<a href="#" class="btn-link">Read More</a>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="offer_area wow fadeInRight" data-wow-delay="200ms" data-wow-duration="1000ms">
							<div class="circle_area"><i class="flaticon-connections"></i></div>
							<a href="#"><h5 class="offer-title">Property Deal</h5></a>
							<p>Nunc. Lectus eget. Iaculis dui velit velit turpis lacus nostra a aliquet integer</p>
							<a href="#" class="btn-link">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Offer Part End -->
		
		<!-- Property Tab -->
		<section id="property-tab">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="title-row">
							<h3 class="section_title_blue">Recent <span>Properties</span></h3>
							<div class="sub-title">
								<p>Pellentesque porttitor dolor natoque pretium. Scelerisque Quisque, vel curabitur lobortis potenti primis praesent volutpat mi nonummy faucibus tempor consequat vulputate.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="gallery-section">
							<div class="auto-container">
								<!--Filter-->
								<div class="filters">
									<ul class="filter-tabs filter-btns clearfix anim-3-all">
										<li class="active filter" data-role="button" data-filter="all">All</li>
										<li class="filter" data-role="button" data-filter=".house">House</li>
										<li class="filter" data-role="button" data-filter=".office">Office</li>
										<li class="filter" data-role="button" data-filter=".appartment">Appartment</li>
										<li class="filter" data-role="button" data-filter=".realty">Realty</li>
									</ul>
								</div>
								<!--Filter List-->
								
								<!-- Tab Content -->
								<div class="row filter-list clearfix">
									<div class="column mix mix_all house appartment col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Rent</div>
												<div class="featured_btn">Featured</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-1.png" alt=""></a>
												<div class="sale_amount">12 Hours Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">Lovelece Road Greenfield</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i> 528 Poplar Chase Lane Boise</span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
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
									<div class="column mix mix_all house appartment col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Rent</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-2.png" alt=""></a>
												<div class="sale_amount">12 Hours Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text"> 
												<a href="#"><h6 class="property-title">Park Road Appartment Rent</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i> 3225 George Street Brooksville, FL 34610</span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
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
									<div class="column mix mix_all office realty col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Rent</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-3.png" alt=""></a>
												<div class="sale_amount">3 Days Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">Rose Villa Infront Of River</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i> 3175 Isaacs Creek Road New Canton</span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
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
									<div class="column mix mix_all office appartment col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">sale</div>
												<div class="featured_btn">Featured</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-4.png" alt=""></a>
												<div class="sale_amount">14 Days Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">Dulax Condos Include Hall</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i> 1566 Warner Street Doral, FL 33178 </span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
														<li><span>Garage</span>1</li>
													</ul>
												</div>
											</div>
											<div class="bed_area">
												<ul>
													<li>$350,000</li>
													<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
													<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="column mix mix_all house realty col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Rent</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-5.png" alt=""></a>
												<div class="sale_amount">12 Hours Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">Forest House For Holiday Tour</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i>4515 Duncan Avenue New York, NY 116 </span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
														<li><span>Garage</span>1</li>
													</ul>
												</div>
											</div>
											<div class="bed_area">
												<ul>
													<li>$850/mo</li>
													<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
													<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="column mix mix_all office realty col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Sale</div>
												<div class="featured_btn">Featured</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-6.png" alt=""></a>
												<div class="sale_amount">1 Month Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">New Developed Condos</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i>367 Sharon Lane South Bend, IN 4601 </span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
														<li><span>Garage</span>1</li>
													</ul>
												</div>
											</div>
											<div class="bed_area">
												<ul>
													<li>$152,000</li>
													<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
													<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="column mix mix_all office realty col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Sale</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-7.png" alt=""></a>
												<div class="sale_amount">4 Days Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">Single Villa with Ground</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i>367 Sharon Lane South Bend, IN 4601 </span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
														<li><span>Garage</span>1</li>
													</ul>
												</div>
											</div>
											<div class="bed_area">
												<ul>
													<li>$152,000</li>
													<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
													<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="column mix mix_all office realty col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Sale</div>
												<div class="featured_btn">Featured</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-8.png" alt=""></a>
												<div class="sale_amount">12 Hours Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">New Appartment Interior</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i>367 Sharon Lane South Bend, IN 4601 </span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>
														<li><span>Garage</span>1</li>
													</ul>
												</div>
											</div>
											<div class="bed_area">
												<ul>
													<li>$250,000</li>
													<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
													<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="column mix mix_all house appartment col-md-4 col-sm-6 col-xs-12">
										<div class="property_grid">
											<div class="img_area">
												<div class="sale_btn">Rent</div>
												<a href="#"><img src="${pageContext.request.contextPath}/resources/img/property_grid/property_grid-1.png" alt=""></a>
												<div class="sale_amount">12 Hours Ago</div>
												<div class="hover_property">
													<ul>
														<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="property-text">
												<a href="#"><h6 class="property-title">Lovelece Road Greenfield</h6></a>
												<span><i class="fa fa-map-marker" aria-hidden="true"></i> 528 Poplar Chase Lane Boise</span>
												<div class="quantity">
													<ul>
														<li><span>Area</span>1600 Sqft</li>
														<li><span>Rooms</span>9</li>
														<li><span>Beds</span>4</li>
														<li><span>Baths</span>3</li>											
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
								<!-- End tab content -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Property Tab -->		
		
		<!-- Popular Category -->
		<section id="popular-category">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="title-row">
							<h3 class="section_title_blue">Popular <span>Locations</span></h3>
							<div class="sub-title">
								<p>Pellentesque porttitor dolor natoque pretium. Scelerisque Quisque, vel curabitur lobortis potenti primis praesent volutpat mi nonummy faucibus tempor consequat vulputate.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="category-grid wow fadeInLeft" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="location-img ctg-grid loc-1"></div>
							<div class="overlay">
								<div class="category-text">
									<a href="#"><h3 class="overlay-title">Appartment</h3></a>
									<span>34 Properties</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-8 col-sm-6">
						<div class="category-grid wow fadeInRight" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="location-img ctg-grid loc-2"></div>
							<div class="overlay">
								<div class="category-text">
									<a href="#"><h3 class="overlay-title">Condos</h3></a>
									<span>20 Properties</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="category-grid wow fadeInLeft" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="location-img ctg-grid loc-3"></div>
							<div class="overlay">
								<div class="category-text">
									<a href="#"><h3 class="overlay-title">Condos</h3></a>
									<span>20 Properties</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="category-grid wow fadeInRight" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="location-img ctg-grid loc-4"></div>
							<div class="overlay">
								<div class="category-text">
									<a href="#"><h3 class="overlay-title">Villa</h3></a>
									<span>27 Properties</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Popular Category End -->
		
		<!-- Service Section Start -->
		<section id="service_part3">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="title-row">
							<h3 class="section_title_blue">What you are looking for?</h3>
							<div class="sub-title">
								<p>Pellentesque porttitor dolor natoque pretium. Scelerisque Quisque, vel curabitur lobortis potenti primis praesent volutpat mi nonummy faucibus tempor consequat vulputate.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="service_area wow fadeInUp" data-wow-delay="100ms" data-wow-duration="1500ms">
							<div class="service_icon"><i class="glyph-icon flaticon-home"></i></div>
							<a href="property_grid.html"><h4 class="service_title">House</h4></a>
							<p>Nisi. Tellus lobortis dapibus erat eu et. Senectus quam vitae in arcu nisi quam</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="service_area wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
							<div class="service_icon"><i class="glyph-icon flaticon-signs"></i></div>
							<a href="property_grid.html"><h4 class="service_title">Land</h4></a>
							<p>Nisi. Tellus lobortis dapibus erat eu et. Senectus quam vitae in arcu nisi quam</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="service_area wow fadeInUp" data-wow-delay="300ms" data-wow-duration="1500ms">
							<div class="service_icon"><i class="glyph-icon flaticon-office"></i></div>
							<a href="property_grid.html"><h4 class="service_title">Office</h4></a>
							<p>Nisi. Tellus lobortis dapibus erat eu et. Senectus quam vitae in arcu nisi quam</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="service_area wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
							<div class="service_icon"><i class="glyph-icon flaticon-shop"></i></div>
							<a href="property_grid.html"><h4 class="service_title">Business</h4></a>
							<p>Nisi. Tellus lobortis dapibus erat eu et. Senectus quam vitae in arcu nisi quam </p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Service Section End -->
		
		<!-- info Banner -->
		<section id="property-submit">
			<div class="container">
				<div class="row">
					<div class="banner-element">
						<span>Do you want to sell your property ?</span>
						<h2 class="banner-title">We help you to find a best customer for your property</h2>
						<a class="btn btn-default" href="submit_property.html">Submit Property</a>
					</div>
				</div>
			</div>
		</section>
		<!-- info Banner End --> 
		
		<!-- Recent News Section Start -->
		<section id="recent_news">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="title-row">
							<h3 class="section_title_blue">Recent <span>News</span></h3>
							<div class="sub-title">
								<p>Pellentesque porttitor dolor natoque pretium. Scelerisque Quisque, vel curabitur lobortis potenti primis praesent volutpat mi nonummy faucibus tempor consequat vulputate.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="news_area wow fadeInUp" data-wow-delay="100ms" data-wow-duration="1000ms">
							<div class="news_img"> <a href="#"><img src="${pageContext.request.contextPath}/resources/img/news/news-1.png" alt=""></a>
								<div class="news_eye"><i class="fa fa-eye" aria-hidden="true"></i></div>
							</div>
							<div class="news_text"> 
								<a href="#"><h5 class="post-title">Our most popular delux house</h5></a>
								<div class="post-info">Posted By <a href="#">G.Jackson</a> On April 25, 2017</div>
								<div class="blog-content">
									<p>Ac aliquam erat. Rhoncus ad senectus magna metus fermentum nullam facilisi fames malesuada potenti. Magna ac amet placerat vivamus litora.</p>
								</div>
								<a class="btn-read" href="#">Read More</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="news_area wow fadeInUp" data-wow-delay="300ms" data-wow-duration="1000ms">
							<div class="news_img"> <a href="#"><img src="${pageContext.request.contextPath}/resources/img/news/news-2.png" alt=""></a>
								<div class="news_eye"><i class="fa fa-eye" aria-hidden="true"></i></div>
							</div>
							<div class="news_text"> 
								<a href="#"><h5 class="post-title">Recent developed luxury house</h5></a>
								<div class="post-info">Posted By <a href="#">G.Jackson</a> On March 27, 2017</div>
								<div class="blog-content">
									<p>Ac aliquam erat. Rhoncus ad senectus magna metus fermentum nullam facilisi fames malesuada potenti. Magna ac amet placerat vivamus litora.</p>
								</div>
								<a class="btn-read" href="#">Read More</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="news_area wow fadeInUp" data-wow-delay="500ms" data-wow-duration="1000ms">
							<div class="news_img"> <a href="#"><img src="${pageContext.request.contextPath}/resources/img/news/news-3.png" alt=""></a>
								<div class="news_eye"><i class="fa fa-eye" aria-hidden="true"></i></div>
							</div>
							<div class="news_text"> 
								<a href="#"><h5 class="post-title">Best interior oppertunity include</h5></a>
								<div class="post-info">Posted By <a href="#">G.Jackson</a> On March 12, 2017</div>
								<div class="blog-content">
									<p>Ac aliquam erat. Rhoncus ad senectus magna metus fermentum nullam facilisi fames malesuada potenti. Magna ac amet placerat vivamus litora.</p>
								</div>
								<a class="btn-read" href="#">Read More</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Recent News Section End -->
		
		<!-- Register Section Start -->
		<section id="register-banner">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="reg_banner">
							<h4 class="reg_banner_title">Are you looking for a House or Customer for your Property sale?</h4>
							<span>Please click the button for register, we will become your best agent and help you for both.</span>
						</div>
					</div>
					<div class="col-md-3">
						<div class="register_btn">
							<a href="#" class="btn btn-primary">Register Now</a>
						</div>
					</div>
				</div>
			</div>
		</section>
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
</html>