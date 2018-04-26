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
						<form action="#" method="post" class="submit_form">
							<div class="basic_information">
								<h4 class="inner-title">Basic Information</h4>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<input type="text" placeholder="Property Title" class="property_submit">
									</div>
									<div class="col-md-6 col-sm-6">
										<input type="text" placeholder="Property Status" class="property_submit">
									</div>
									<div class="col-md-6 col-sm-6">
										<input type="text" placeholder="Property Types" class="property_submit">
									</div>
									<div class="col-md-4 col-sm-4">
										<input type="text" placeholder="Ares (Sqft)" class="property_submit">
									</div>
									<div class="col-md-4 col-sm-4">
										<input type="text" placeholder="Price (USD)" class="property_submit">
									</div>
									<div class="col-md-4 col-sm-4">
										<input type="text" placeholder="No. Of Rooms" class="property_submit">
									</div>
									<div class="col-md-12">
										<div class="important_facts">
											<label>Do you have any installment system for payment?</label>
											<div class="radio_check">
												<input type="checkbox" id="radio_1" name="question" value="Yes">
												<label for="radio_1"><span>No</span><span>Yes</span></label>
											</div>
										</div>
										<div class="important_facts">
											<label>Have any insurance of this property?</label>
											<div class="radio_check">
												<input type="checkbox" id="radio_2" name="question" value="Yes">
												<label for="radio_2"><span>No</span><span>Yes</span></label>
											</div>
										</div>
										<div class="important_facts">
											<label>Is there any labilities of third party with this property?</label>
											<div class="radio_check">
												<input type="checkbox" id="radio_3" name="question" value="Yes">
												<label for="radio_3"><span>No</span><span>Yes</span></label>
											</div>
										</div>
									</div>
								</div>
								<div class="alert alert-warning">Please input the correct information of your property. Because it will effect on property search.</div>
							</div>
							<div class="description">
								<h4 class="inner-title">Description</h4>
								<textarea name="description" placeholder="Type Description..." class="form_description"></textarea>
								<div class="alert alert-warning">Need a proper description about the property. So that client can easily understand about the property.</div>
							</div>
							<div class="property_location">
								<h4 class="inner-title">property location</h4>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div class="row">
											<div class="col-md-6 col-sm-6">
												<input type="text" placeholder="Property Adddress" class="property_submit">
											</div>
											<div class="col-md-6 col-sm-6">
												<input type="text" placeholder="State" class="property_submit">
											</div>
											<div class="col-md-4 col-sm-4">
												<input type="text" placeholder="City" class="property_submit">
											</div>
											<div class="col-md-4 col-sm-4">
												<input type="text" placeholder="Zip Code" class="property_submit">
											</div>
											<div class="col-md-4 col-sm-6">
												<select class="property_submit">
													<option>Selcet Country</option>
													<option>USA</option>
													<option>Germany</option>
													<option>Netherland</option>
													<option>France</option>
													<option>England</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="check_feature">
								<h4 class="inner-title">check feature</h4>
								<div class="row">
									<div class="check_submit">
										<ul>
											<li>
												<input id="feature_1" type="checkbox" class="submit_checkbox">
												<label for="feature_1"></label>
												<span>garden include</span>
											</li>
											<li>
												<input id="feature_2" type="checkbox" class="submit_checkbox">
												<label for="feature_2"></label>
												<span>Garage Facility</span>
											</li>
											<li>
												<input id="feature_3" type="checkbox" class="submit_checkbox">
												<label for="feature_3"></label>
												<span>Fire Security</span>
											</li>
											<li>
												<input id="feature_4" type="checkbox" class="submit_checkbox">
												<label for="feature_4"></label>
												<span>Swiming Pool</span>
											</li>
											<li>
												<input id="feature_5" type="checkbox" class="submit_checkbox">
												<label for="feature_5"></label>
												<span>Fire Place Facility</span>
											</li>
											<li>
												<input id="feature_6" type="checkbox" class="submit_checkbox">
												<label for="feature_6"></label>
												<span>Play Ground</span>
											</li>
											<li>
												<input id="feature_7" type="checkbox" class="submit_checkbox">
												<label for="feature_7"></label>
												<span>Ferniture Include</span>
											</li>
											<li>
												<input id="feature_8" type="checkbox" class="submit_checkbox">
												<label for="feature_8"></label>
												<span>Marbel Floor</span>
											</li>
											<li>
												<input id="feature_9" type="checkbox" class="submit_checkbox">
												<label for="feature_9"></label>
												<span>Store Room</span>
											</li>
											<li>
												<input id="feature_10" type="checkbox" class="submit_checkbox">
												<label for="feature_10"></label>
												<span>Hight Class Door</span>
											</li>
											<li>
												<input id="feature_11" type="checkbox" class="submit_checkbox">
												<label for="feature_11"></label>
												<span>Floor Heating System</span>
											</li>
											<li>
												<input id="feature_12" type="checkbox" class="submit_checkbox">
												<label for="feature_12"></label>
												<span>Air Condition Facility</span>
											</li>
											<li>
												<input id="feature_13" type="checkbox" class="submit_checkbox">
												<label for="feature_13"></label>
												<span>Fire Security</span>
											</li>
											<li>
												<input id="feature_14" type="checkbox" class="submit_checkbox">
												<label for="feature_14"></label>
												<span>Fitness Room</span>
											</li>
											<li>
												<input id="feature_15" type="checkbox" class="submit_checkbox">
												<label for="feature_15"></label>
												<span>Bathtub and Shaware</span>
											</li>
										</ul>
									</div>
								</div>
								<div class="alert alert-warning">Check the extra features and facility of the property, it will show with the property.</div>
							</div>
							<div class="upload_media">
								<h4 class="inner-title">Upload Phto and Document</h4>
								<p>Felis etiam erat curabitur bibendum iaculis quisque placerat egestas. Nullam, lacus dis et consectetuer rhoncus etiam. Non vitae turpis curae; lacus sociosqu. Quisque. Lobortis aliquam penatibus mi. </p>
								<div class="row">
									<div class="col-md-12">
										<div class="browse_submit">
											<span>add photos</span>
											<input type="file" id="fileupload-example-1"/>
											<label class="fileupload-example-label" for="fileupload-example-1">Drop your photos here or Click</label>
										</div>
									</div>
									<div class="col-md-12">
										<div class="browse_submit">
											<span>add documents</span>
											<input type="file" id="fileupload-example-2"/>
											<label class="fileupload-example-label" for="fileupload-example-2">Drop your document file here or Click</label>
										</div>
									</div>
									<div class="col-md-12">
										<div class="video_upload">
											<input type="url" placeholder="Add property video links or URL" class="property_submit">
										</div>
									</div>
								</div>
								<div class="alert alert-warning">Please uplaod the photo of the property, please keep the photo size 760X410 ratio and please upload the PDF or Doc file at the document attachment.</div>
							</div>
							<div class="property_owner">
								<h4 class="inner-title">Input Contact Details</h4>
								<p>Felis etiam erat curabitur bibendum iaculis quisque placerat egestas. Nullam, lacus dis et consectetuer rhoncus etiam. Non vitae turpis curae; lacus sociosqu. Quisque. Lobortis aliquam penatibus mi. </p>
								<div class="row">
									<div class="col-md-4">
										<input type="text" placeholder="Full Name" class="property_submit">
									</div>
									<div class="col-md-4">
										<input type="email" placeholder="Email Address" class="property_submit">
									</div>
									<div class="col-md-4">
										<input type="text" placeholder="Phone Number" class="property_submit">
									</div>
								</div>
								<div class="browse_submit">
									<button name="submit" class="btn btn-default">submit property</button>
									<p><span>note</span> : Your property will under review for 24 Hours after submission *</p>
								</div>
							</div>
						</form>
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