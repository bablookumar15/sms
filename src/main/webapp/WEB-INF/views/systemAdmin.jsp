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
							<form action="#" method="post" class="property_filter_input">
								<div class="row">
									<div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control">
											<option>Any Status</option>
											<option>For Rent</option>
											<option>For Sale</option>
										</select>
									</div>
									<div class="col-md-9 col-sm-6">
										<input type="search" placeholder="Search by city, state or address" class="form-control search_property">
									</div>
									<div class="col-md-3 col-sm-6">
										<select class="selectpicker form-control">
											<option>Bedrooms</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>6</option>
										</select>
									</div>
									<div class="col-md-3 col-sm-6">
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
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="minprice" placeholder="Min Price (USD)" >
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="maxprice" placeholder="Max Price (USD)" >
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="minarea" placeholder="Min Area (sqft)" >
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="text" class="form-control" name="maxarea" placeholder="Max Area (sqft)" >
									</div>
									<div class="col-md-3 col-sm-6">
										<input type="submit" name="search" class="btn btn-default" value="Search">
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
						<!-- <div class="row">
							<div class="col-md-12">
								<div class="property_sorting">
									<form class="property_filter" action="#" method="post">
										<div class="property_show">
											<select class="selectpicker form-control">
												<option>Any Type</option>
												<option>For Rent</option>
												<option>For Sale</option>
											</select>
										</div>
										<div class="property_view">
											<ul>
												<li>
													<span>Order:</span>
													<select class="selectpicker form-control">
														<option>Default Order</option>
														<option>Featured</option>
														<option>Price Hight</option>
														<option>Price Low</option>
														<option>Latest Item</option>
														<option>Oldest Item</option>
													</select>
												</li>
												<li>
													<a href="property_grid.html"><i class="fa fa-th" aria-hidden="true"></i></a>
												</li>
												<li>
													<a class="active" href="property_list.html"><i class="fa fa-th-list" aria-hidden="true"></i></a>
												</li>
											</ul>
										</div>
									</form>
								</div>
							</div>
						</div> -->
						<!-- Property Grids -->
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Rent</div>
										<a href="#"><img src="img/property_grid/property_grid-4.png" alt=""></a>
										<div class="sale_amount">2 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Lovelece Road Greenfield</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 4213 Duff Avenue South Burlington, VT 05403 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1200 Sqft</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Sale</div>
										<div class="featured_btn">Featured</div>
										<a href="#"><img src="img/property_grid/property_grid-5.png" alt=""></a>
										<div class="sale_amount">2 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Luxury Condos Infront of River</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 2305 Tree Frog Lane Overlandpk, MO 66210 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1600 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>4</li>
												<li><span>Baths</span>3</li>
												<li><span>Garage</span>1</li>
											</ul>
										</div>
									</div>
									<div class="bed_area">
										<ul>
											<li>$1,205,500</li>
											<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
											<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Rent</div>
										<a href="#"><img src="img/property_grid/property_grid-6.png" alt="" /></a>
										<div class="sale_amount">2 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Park Road Appartment Rent</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 4133 Arbor Court Worland, WY 82401 
										</span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>2100 Sqft</li>
												<li><span>Rooms</span>9</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
												<li><span>Garage</span>1</li>
											</ul>
										</div>
									</div>
									<div class="bed_area">
										<ul>
											<li>$1300/mo</li>
											<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
											<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Rent</div>
										<div class="featured_btn">Featured</div>
										<a href="#"><img src="img/property_grid/property_grid-7.png" alt=""></a>
										<div class="sale_amount">10 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Lovelece Road Greenfield</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 4213 Duff Avenue South Burlington, VT 05403 
										</span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1600 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Sale</div>
										<a href="#"><img src="img/property_grid/property_grid-8.png" alt=""></a>
										<div class="sale_amount">12 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Luxury Condos Infront of River</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 2305 Tree Frog Lane Overlandpk, MO 66210 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1600 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
												<li><span>Garage</span>1</li>
											</ul>
										</div>
									</div>
									<div class="bed_area">
										<ul>
											<li>$1,205,500</li>
											<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
											<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Sale</div>
										<a href="#"><img src="img/property_grid/property_grid-1.png" alt=""></a>
										<div class="sale_amount">15 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text">
										<a href="#"><h5 class="property-title">New Developed Condos</h5></a>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i>367 Sharon Lane South Bend, IN 4601 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1200 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Sale</div>
										<a href="#"><img src="img/property_grid/property_grid-8.png" alt=""></a>
										<div class="sale_amount">17 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text">
										<a href="#"><h5 class="property-title">Renovate Small Condos</h5></a>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i>499 Tenmile Road Boston, MA 02110 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1200 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Rent</div>
										<a href="#"><img src="img/property_grid/property_grid-2.png" alt=""></a>
										<div class="sale_amount">20 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text">
										<a href="#"><h5 class="property-title">Telico Villas House and Condos</h5></a>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i>1751 Finwood Road Freehold, NJ 07728 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1200 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>3</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Rent</div>
										<div class="featured_btn">Featured</div>
										<a href="#"><img src="img/property_grid/property_grid-3.png" alt=""></a>
										<div class="sale_amount">1 Day Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text">
										<a href="#"><h5 class="property-title">Telico Villas House and Condos</h5></a>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i>1751 Finwood Road Freehold, NJ 07728 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1200 Sqft</li>
												<li><span>Rooms</span>5</li>
												<li><span>Beds</span>3</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Rent</div>
										<div class="featured_btn">Featured</div>
										<a href="#"><img src="img/property_grid/property_grid-7.png" alt=""></a>
										<div class="sale_amount">10 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Lovelece Road Greenfield</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 4213 Duff Avenue South Burlington, VT 05403 
										</span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1600 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
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
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Sale</div>
										<a href="#"><img src="img/property_grid/property_grid-8.png" alt=""></a>
										<div class="sale_amount">12 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text"> 
										<a href="#">
											<h5 class="property-title">Luxury Condos Infront of River</h5>
										</a> <span><i class="fa fa-map-marker" aria-hidden="true"></i> 2305 Tree Frog Lane Overlandpk, MO 66210 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1600 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
												<li><span>Garage</span>1</li>
											</ul>
										</div>
									</div>
									<div class="bed_area">
										<ul>
											<li>$1,205,500</li>
											<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
											<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="property_grid">
									<div class="img_area">
										<div class="sale_btn">Sale</div>
										<a href="#"><img src="img/property_grid/property_grid-1.png" alt=""></a>
										<div class="sale_amount">15 Hours Ago</div>
										<div class="hover_property">
											<ul>
												<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="property-text">
										<a href="#"><h5 class="property-title">New Developed Condos</h5></a>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i>367 Sharon Lane South Bend, IN 4601 </span>
										<div class="quantity">
											<ul>
												<li><span>Area</span>1200 Sqft</li>
												<li><span>Rooms</span>7</li>
												<li><span>Beds</span>5</li>
												<li><span>Baths</span>4</li>
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
</html>