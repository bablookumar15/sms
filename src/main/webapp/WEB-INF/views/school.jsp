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
												<img src="img/single_property/1.png" alt="">
											</div>
											<div class="item">
												<img src="img/single_property/2.png" alt="">
											</div>
											<div class="item">
												<img src="img/single_property/3.png" alt="">
											</div>
										</div>
										
										<!-- Controls -->
										<!-- <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
											<div class="lef_btn">prev</div>
											<span class="sr-only">Previous</span>
										</a>
										<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
											<div class="right_btn">next</div>
											<span class="sr-only">Next</span>
										</a> -->
									</div>
								</div>
							</div>
						</div>						
						<div class="row">
							<div class="col-md-12">
								<div class="detail_text">
									<div class="property-text">
										<h4 class="property-title">Luxury Condos Infront of the street of Green Park</h4>
										<span><i class="fa fa-map-marker" aria-hidden="true"></i> 402 Henry Ford Avenue Sand Springs, LA 74063 </span>
										<blockquote>Dis at habitasse viverra nisl. Arcu nec id imperdiet venenatis, lacus sollicitudin in et libero sed senectus ullamcorper conubia velit metus lacinia duis fermentum dictumst ut phasellus aptent tempor lectus.</blockquote>
										<p>Feugiat rhoncus Rhoncus mi, eros consectetuer pretium vivamus potenti sem. Vestibulum quisque neque libero molestie. Arcu ac. Amet dis pulvinar nostra leo posuere per dapibus metus, taciti rutrum tristique nullam suspendisse. Fringilla vitae Parturient risus pretium iaculis blandit condimentum proin nisl risus.</p>
										<p>Pellentesque volutpat mollis dignissim molestie Sed placerat hac, elementum senectus parturient vivamus. Odio. Egestas justo ridiculus erat diam. Lobortis id mollis conubia et varius, justo, velit Ultricies tempus tincidunt viverra feugiat mi. Felis lacus pellentesque amet habitasse vehicula porttitor nisl ullamcorper Porta metus netus. Curae; a torquent condimentum amet Elementum. Rhoncus porttitor scelerisque quam suscipit sapien vitae ad maecenas. Venenatis taciti cum felis enim sem mattis sagittis venenatis nec magnis consequat parturient eu massa rhoncus lorem tristique est taciti conubia semper sodales ultricies integer A placerat etiam lacinia hendrerit ante proin congue erat habitant habitasse curabitur pretium nonummy interdum bibendum.</p>
										<p>Dapibus. Sagittis. Quisque cras tellus pede. Sollicitudin. Ridiculus nec. Mus cras quam. Nonummy. Vulputate sit interdum at, iaculis convallis nullam faucibus ad tempor. Ad aliquet rhoncus urna phasellus parturient pellentesque. Erat porta conubia habitant dolor erat praesent felis orci hymenaeos semper tellus imperdiet rutrum Ut magnis mattis nascetur.</p>
									</div>
								</div>
								<div class="more_information">
									<h4 class="inner-title">More Information</h4>
									<div class="profile_data">
										<ul>
											<li><span>Age :</span> 10 Years</li>
											<li><span>Type :</span> Appartment</li>
											<li><span>Installment Facility :</span> Yes</li>
											<li><span>Insurance :</span> Yes</li>
											<li><span>3rd Party :</span> No</li>
											<li><span>Swiming Pool :</span> Yes</li>
											<li><span>Garden and Field :</span> 2400sqft</li>
											<li><span>Total Floor :</span> 3 Floor</li>
											<li><span>Security :</span> 3 Step Security</li>
											<li><span>Alivator :</span> 2 Large</li>
											<li><span>Dining Capacity :</span> 20 People</li>
											<li><span>Exit :</span> 3 Exit Gate</li>
											<li><span>Fire Place :</span> Yes</li>
											<li><span>Heating System :</span> Floor Heating</li>
										</ul>
									</div>
								</div>
								<div class="single_video">
									<video width="400" poster="video/poster.png" controls>
										<source src="video/real_estate.mp4" type="video/mp4">
									</video>
								</div>
								<div class="single_feature">
									<h4 class="inner-title">Features</h4>
									<div class="info-list">
										<ul>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Fitness Lab and Room</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Swiming Pools</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Parking Facility</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Green Park View</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Playground Include</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Garden</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Kitchen Furniture</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Fire Security</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>High Class Door</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Store Room</li>
											<li><span><i class="fa fa-check-square-o" aria-hidden="true"></i></span>Marble Floor</li>
										</ul>
									</div>
								</div>
								<div class="single_map">
									<h4 class="inner-title">Location</h4>
									<div id="map" class="map-canvas"> </div>
								</div>
								<div class="rating-box">
									<h4 class="inner-title">Give a Review</h4>
									<form action="#" method="post" class="rating-form">
										<div class="row">
											<div class="col-md-12 rating-animation">
											  <div class="box-header">Move Mouse for Rating</div>
											  <div class="star-rating">
												  <select id="example-reversed" name="rating" autocomplete="off">
													  <option value="Strongly Disagree">Very Bad Review</option>
													  <option value="Disagree">Bad Review</option>											  
													  <option value="Neither Agree or Disagree" selected="selected">Good Review</option>
													  <option value="Agree">Very Good Quality</option>
													  <option value="Strongly Agree">Excellent Quality</option>
												  </select>
											  </div>
											</div>									
											<div class="form-group col-md-6 col-sm-12">
												<input class="form-control" type="text" name="yourname" Placeholder="Your Name" >
											</div>
											<div class="form-group col-md-6 col-sm-12">
												<input class="form-control" type="text" name="youremail" Placeholder="Your Email" >
											</div>
											<div class="form-group col-md-12 col-sm-12">
												<textarea class="ratingcomments" name="ratingcomments" placeholder="Your Comments"></textarea>
											</div>
											<div class="form-group col-md-12 col-sm-12">
												<input id="send" class="btn btn-default" value="Send" type="submit">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- Property Commsnts -->
						<div class="row">
							<div class="col-md-12">
								<div class="people-rating ">
									<h4 class="inner-title">Review and Comments</h4>
									<ul class="user-comments">
										<li>
											<div class="comment_description">
												<div class="author_img">
													<img src="img/blog_detail/comment-1.png" alt="">
												</div>
												<div class="author_text">
													<div class="author_info">
														<h5 class="author_name">Rebecca D. Nagy </h5>
														<span>27 February, 2017 at 3.27 pm</span>
													</div>
													<div class="user-rating">
														<ul>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="deactive"></li>
														</ul>
													</div>
													<p>Fermentum mus porttitor tempor arcu posuere. Nibh consectetuer condimentum ultricies pulvinar eget pede litora interdum magna aenean ullamcorper nisi dis. Viverra. Vulputate. Quisque neque luctus quis rhoncus.</p>
													<a href="#" class="btn btn-default">Replay</a>
												</div>
											</div>
										</li>
										<li>
											<div class="comment_description">
												<div class="author_img">
													<img src="img/blog_detail/comment-2.png" alt="">
												</div>
												<div class="author_text">
													<div class="author_info">
														<h5 class="author_name">Charles F. Bush</h5>
														<span>12 February, 2017 at 10.32 pm</span>
													</div>
													<div class="user-rating">
														<ul>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
														</ul>
													</div>
													<p>Ullamcorper parturient elit, mauris congue duis morbi lacus eget id pellentesque commodo porta bibendum ullamcorper mauris dui fusce dolor massa class ultricies.</p>
													<a href="#" class="btn btn-default">Replay</a>
												</div>
											</div>
										</li>
										<li>
											<div class="comment_description replied">
												<div class="author_img">
													<img src="img/blog_detail/comment-1.png" alt="">
												</div>
												<div class="author_text">
													<div class="author_info">
														<h5 class="author_name">Patty Hurd</h5>
														<span>17 February, 2017 at 11.17 am</span>
													</div>
													<div class="user-rating">
														<ul>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="deactive"></li>
															<li class="deactive"></li>
														</ul>
													</div>
													<p>Pretium urna nonummy sodales, dictumst blandit, magna. Quis porttitor lobortis lectus fringilla nam at Sociis vel pharetra enim per praesent viverra consequat litora, pharetra turpis magna tincidunt curae; molestie non.</p>
													<a href="#" class="btn btn-default">Replay</a>
												</div>
											</div>
										</li>
										<li>
											<div class="comment_description">
												<div class="author_img">
													<img src="img/blog_detail/comment-4.png" alt="">
												</div>
												<div class="author_text">
													<div class="author_info">
														<h5 class="author_name">Joseph Richard </h5>
														<span>30 January, 2017 at 10.32 pm</span>
													</div>
													<div class="user-rating">
														<ul>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="active"></li>
															<li class="deactive"></li>
														</ul>
													</div>
													<p>Hac placerat. Morbi. Parturient. Nulla porta duis. Donec fames vel. Quam sem. Purus odio ultrices augue. Diam ridiculus cras luctus.</p>
													<a href="#" class="btn btn-default">Replay</a>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Property Comments -->
					</div>
					<div class="col-md-4">
						<div class="property_sidebar">
							<div class="property_listing sidebar-widget">
								<h4 class="inner-title">Property Summary</h4>
								<div class="profile_data">
									<ul>
										<li><span>Property ID :</span> LA459C27</li>
										<li><span>Listing Type :</span> For Sale</li>
										<li><span>Property Type :</span> Condos</li>
										<li><span>Price :</span> $375,000</li>
										<li><span>Area :</span> 6500 sqft</li>
										<li><span>Bedroom :</span> 5</li>
										<li><span>Bathroom :</span> 4</li>
										<li><span>Car Garage :</span> Yes ( 5 Capacity )</li>
										<li><span>Swimming :</span> Yes ( 1 Large )</li>
										<li><span>Garden :</span> Yes</li>
										<li><span>Rating :</span>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star-o" aria-hidden="true"></i>
(12)</li>
									</ul>
								</div>
							</div>
							<div class="contact_agent sidebar-widget">
								<div class="agent_details">
									<div class="author_img">
										<img src="img/testimonial/2.png" alt="">
									</div>
									<div class="agent_info">
										<h5 class="author_name">Rebecca D. Nagy</h5>
										<span>+( 81 ) 84 538 91231</span>
									</div>
									<form class="message_agent" action="#" method="post">
										<div class="input-group">
											<input type="text" class="form-control" name="name" placeholder="Your Name">
										</div>
										<div class="input-group">
											<input type="text" class="form-control" name="email" placeholder="Your Email">
										</div>
										<div class="input-group">
											<textarea class="form-control" name="message" placeholder="Message"></textarea>
										</div>
										<div class="input-group">
											<button type="submit" class="btn btn-default" name="submit">Send</button>
										</div>
									</form>
								</div>
							</div>
							<div class="price_range sidebar-widget">
								<h4 class="widget-title">Price</h4>
								<form class="price-filter" action="#" method="post">
									<span class="price-slider">
										<input class="filter_price" type="text" name="price" value="0;1000000" />
									</span>
								</form>								
							</div>
							<div class="price_range sidebar-widget">
								<h4 class="widget-title">Area</h4>
								<form class="area-filter" action="#" method="post">
									<span class="price-slider">
										<input class="area_filter" type="text" name="price" value="0;10000" />
									</span>
								</form>								
							</div>
							<div class="advance_search sidebar-widget">
								<h4 class="widget-title">Advance Search</h4>
								<form method="post" class="search_form" action="#">
									<div class="row">
										<div class="col-md-12 col-sm-6">
											<select class="selectpicker form-control">
												<option>Any Status</option>
												<option>For Rent</option>
												<option>For Sale</option>
											</select>
										</div>
										<div class="col-md-12 col-sm-6">
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
										<div class="col-md-12 col-sm-6">
											<select class="selectpicker form-control" data-live-search="true">
												<option>Any States</option>
												<option>New York</option>
												<option>Sydney</option>
												<option>Washington</option>
												<option>Las Vegas</option>
											</select>
										</div>
										<div class="col-md-12 col-sm-6">
											<select class="selectpicker form-control" data-live-search="true">
												<option>All City</option>
												<option>New York</option>
												<option>Sydney</option>
												<option>Washington</option>
												<option>Las Vegas</option>
											</select>
										</div>
										<div class="col-md-6 col-sm-6">
											<select class="selectpicker form-control">
												<option>Beds</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>6</option>
											</select>
										</div>
										<div class="col-md-6 col-sm-6">
											<select class="selectpicker form-control">
												<option>Baths</option>
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select>
										</div>
										<div class="col-md-12 col-sm-6">
											<button name="search" class="btn btn-default" type="submit">search property</button>
										</div>
									</div>
								</form>
							</div>
							<div class="featured_sidebar sidebar-widget">
								<h4 class="widget-title">Featured Property</h4>
								<div class="slide_featured">
									<div class="item">
										<div class="thumb">
											<div class="sidebar_img">
												<img src="img/property_grid/property_grid-4.png" alt="">
												<div class="sale_btn">sale</div>
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
											<div class="property-text">
												<a href="#"><h6 class="property-title">New Developed Condos</h6></a>
												<div class="property_price">$150,000</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="thumb">
											<div class="sidebar_img">
												<img src="img/property_grid/property_grid-5.png" alt="">
												<div class="sale_btn">sale</div>
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
											<div class="property-text">
												<a href="#"><h6 class="property-title">New Developed Condos</h6></a>
												<div class="property_price">$150,000</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="thumb">
											<div class="sidebar_img">
												<img src="img/property_grid/property_grid-6.png" alt="">
												<div class="sale_btn">sale</div>
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
											<div class="property-text">
												<a href="#"><h6 class="property-title">New Developed Condos</h6></a>
												<div class="property_price">$150,000</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="thumb">
											<div class="sidebar_img">
												<img src="img/property_grid/property_grid-7.png" alt="">
												<div class="sale_btn">sale</div>
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
											<div class="property-text">
												<a href="#"><h6 class="property-title">New Developed Condos</h6></a>
												<div class="property_price">$150,000</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Related Property -->
				<div class="row">
					<div class="col-md-12">
						<div class="inner-feature">
							<h4 class="inner-title">Related Properties</h4>
							<div class="property_slide">
								<div class="item">
									<div class="property_grid">
										<div class="img_area">
											<div class="sale_btn">Rent</div>
											<a href="#"><img src="img/property_grid/property_grid-1.png" alt=""></a>
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
												<h5 class="property-title">Park Road Appartment Rent</h5>
											</a><span><i class="fa fa-map-marker" aria-hidden="true"></i> 3225 George Street Brooksville, FL 34610</span>
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
								<div class="item">
									<div class="property_grid">
										<div class="img_area">
											<div class="sale_btn">Sale</div>
											<div class="featured_btn">Featured</div>
											<a href="#"><img src="img/property_grid/property_grid-2.png" alt=""></a>
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
												<h5 class="property-title">Park Road Appartment Rent</h5>
											</a><span><i class="fa fa-map-marker" aria-hidden="true"></i> 3494 Lyon Avenue Middleboro, MA 02346 </span>
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
												<li>$1,410,000</li>
												<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
												<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="property_grid">
										<div class="img_area">
											<div class="sale_btn">Rent</div>
											<a href="#"><img src="img/property_grid/property_grid-3.png" alt=""></a>
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
												<h5 class="property-title">Park Road Appartment Rent</h5>
											</a><span><i class="fa fa-map-marker" aria-hidden="true"></i> 39 Parrill Court Oak Brook, IN 60523 </span>
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
												<li>$1200/mo</li>
												<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
												<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="property_grid">
										<div class="img_area">
											<div class="sale_btn">Rent</div>
											<a href="#"><img src="img/property_grid/property_grid-4.png" alt=""></a>
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
												<h5 class="property-title">Central Road Appartment Rent</h5>
											</a><span><i class="fa fa-map-marker" aria-hidden="true"></i> 39 Parrill Court Oak Brook, IN 60523 </span>
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
												<li>$1200/mo</li>
												<li class="flat-icon"><a href="#"><i class="flaticon-like"></i></a></li>
												<li class="flat-icon"><a href="#"><i class="flaticon-connections"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Related Property -->
			</div>
		</section>
		<!-- Single Property End --> 
		
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
		
		<!-- use for map style --> 
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyADAvRonq8GcS5dNWMPgDMf17hgiaTHs7E&callback=initMap"></script>
		<script>
				google.maps.event.addDomListener(window, 'load', init);

				function init() {
					var mapOptions = {
						zoom: 9,
						center: new google.maps.LatLng(28.538335, -81.379236), // New York
						styles: [{"featureType":"water","elementType":"all","stylers":[{"hue":"#76aee3"},{"saturation":38},{"lightness":-11},{"visibility":"on"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"hue":"#8dc749"},{"saturation":-47},{"lightness":-17},{"visibility":"on"}]},{"featureType":"poi.park","elementType":"all","stylers":[{"hue":"#c6e3a4"},{"saturation":17},{"lightness":-2},{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"hue":"#cccccc"},{"saturation":-100},{"lightness":13},{"visibility":"on"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"hue":"#5f5855"},{"saturation":6},{"lightness":-31},{"visibility":"on"}]},{"featureType":"road.local","elementType":"all","stylers":[{"hue":"#ffffff"},{"saturation":-100},{"lightness":100},{"visibility":"simplified"}]},{"featureType":"water","elementType":"all","stylers":[]}]
					};

					var mapElement = document.getElementById('map');

					var map = new google.maps.Map(mapElement, mapOptions);

					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(28.538335, -81.379236),
						map: map,
						icon: 'http://unicoderbd.com/theme/html/uniland/img/marker_blue.png',
						title: 'Snazzy!'
					});
				}

		</script>
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-106986305-1', 'auto');
		  ga('send', 'pageview');
		</script>
	</body>
</html>	