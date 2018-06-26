<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Top Header Start -->
<div id="top_header">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-5">
				<div class="top_contact">
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i> Need Support ? +1-435-782-4312</li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 col-sm-7">
				<div class="top_right">
					<ul>
						<li>
							<div class="lan-drop"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Eng <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">sp</a></li>
									<li><a href="#">ch</a></li>
									<li><a href="#">ud</a></li>
								</ul>
							</div>
						</li>
						<c:choose>
							<c:when test="${sessionScope.user != null}">
								<li><a href="#">Hi,&nbsp;${sessionScope.user.firstname} </a></li>
								<li><a href="${pageContext.request.contextPath}/logout" class="toogle_btn" >Logout</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/signup" class="toogle_btn" >Register</a></li>
								<li><a href="${pageContext.request.contextPath}/login" class="toogle_btn" >Login</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Top Header End --> 

<!-- Nav Header Start -->
<div id="nav_header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<nav class="navbar navbar-default nav_edit"> 
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> 
							<span class="sr-only">Toggle navigation</span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span> 
						</button>
						<a class="navbar-brand" href="${pageContext.request.contextPath}"><img class="nav-logo" src="${pageContext.request.contextPath}/resources/img/logo1.png" alt=""></a> 
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse my_nav" id="bs-example-navbar-collapse-1">
						<div class="submit_property">
							<c:if test="${sessionScope.user == null or sessionScope.user != null and sessionScope.user.role !='ROLE_PARENT'}">
								<a href="${pageContext.request.contextPath}/submitSchool"><i class="fa fa-plus" aria-hidden="true"></i>Submit School</a>						
							</c:if>
						</div>
						<ul class="nav navbar-nav navbar-right nav_text">
							<li class="dropdown">
								<c:choose>
									<c:when test="${sessionScope.user != null}">
										<a href="${pageContext.request.contextPath}/home" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Home</a>
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Home</a>
									</c:otherwise>
								</c:choose>
							</li>
							
							<li class="dropdown">
								<c:choose>
									<c:when test="${sessionScope.user != null and sessionScope.user.role == 'ROLE_SYSTEM_ADMIN' or sessionScope.user.role == 'ROLE_PARENT'}">
										<a href="${pageContext.request.contextPath}/schools" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Schools</a>
									</c:when>
								</c:choose>
							</li>
							
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse --> 
				</nav>
			</div>
		</div>
	</div>
</div>