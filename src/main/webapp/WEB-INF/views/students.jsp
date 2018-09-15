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
							<h3 class="page_title">Applications</h3>
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
											<a href="#"><h5 class="property-title">${s.name}</h5></a>
											<span><i class="fa fa-map-marker" aria-hidden="true"></i>${s.address},&nbsp;${s.city},&nbsp;${s.state},&nbsp;${s.zipcode}</span>
											<p>Father Name&nbsp;:&nbsp;${s.fathername} &nbsp;&nbsp;&nbsp;Mother Name&nbsp;:&nbsp;${s.mothername}</p>
											<div class="quantity">
												<ul>
													<li><span>Age</span>${s.age}</li>
													<li><span>Blood Group</span>${s.bloodgrp}</li>
													<li><span>Gender</span>${s.gender}</li>
													<li><span>DOB</span>${s.dob}</li>
													<li><span>Grade</span>${s.edugrade}</li>
													<li><span>Father's Occupation</span>${s.fqoccupation}</li>
													<li><span>Mother's Occupation</span>${s.mqoccupation}</li>
												</ul>
											</div>
										</div>
										<div>
										<c:choose>
											<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_SCHOOL_ADMIN'}">
												<c:choose>
													<c:when test="${not s.active and s.accept eq 'F'.charAt(0)}">
														<a href="${pageContext.request.contextPath}/accept?id=${s.studentid}&flag=Y" onclick="return confirm('Are you sure to Accept?')" class="btn btn-default">Accept</a>
														<a href="${pageContext.request.contextPath}/accept?id=${s.studentid}&flag=N" onclick="return confirm('Are you sure to Reject?')" class="btn btn-default">Reject</a>
													</c:when>
													<c:when test="${s.active and s.accept eq 'Y'.charAt(0)}">
														<a href="${pageContext.request.contextPath}/studentStatus?id=${s.studentid}&flag=false" onclick="return confirm('Are you sure to DeActive?')" class="btn btn-default">DeActive</a>
														<a href="${pageContext.request.contextPath}/editStudent?id=${s.studentid}" class="btn btn-default">Edit</a>
													</c:when>
													<c:when test="${not s.active and s.accept eq 'Y'.charAt(0)}">
														<a href="${pageContext.request.contextPath}/studentStatus?id=${s.studentid}&flag=true" onclick="return confirm('Are you sure to Active?')" class="btn btn-default">Active</a>
													</c:when>
													<c:when test="${not s.active and s.accept eq 'N'.charAt(0)}">
														<a href="${pageContext.request.contextPath}/accept?id=${s.studentid}&flag=Y" onclick="return confirm('Are you sure to Accept?')" class="btn btn-default">Accept</a>
													</c:when>
												</c:choose>
											</c:when>
											<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_PARENT'}">
												<c:choose>
												<c:when test="${not s.active and s.accept eq 'F'.charAt(0)}">
													<span><b>Status&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;New</b></span>
												</c:when>
												<c:when test="${s.active and s.accept eq 'Y'.charAt(0)}">
													<span><b>Status&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;Active</b></span>
												</c:when>
												<c:when test="${not s.active and s.accept eq 'Y'.charAt(0)}">
													<span><b>Status&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;DeActive</b></span>
												</c:when>
												<c:when test="${not s.active and s.accept eq 'N'.charAt(0)}">
													<span><b>Status&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;Rejected</b></span>
												</c:when>
												</c:choose>
											</c:when>
										</c:choose>
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