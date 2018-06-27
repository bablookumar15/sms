<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Uniland - Real Estate HTML5 Template">
<meta name="keywords" content="real estate, property, property search, agent, apartments, booking, business, idx, housing, real estate agency, rental">
<meta name="author" content="unicoder">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>School Management System</title>
<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

<!-- Bootstrap -->
<jsp:include page="css.jsp" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
	function hideError(element) {
		document.getElementById(element.id + "1").style.display = "none";
		document.getElementById(element.id + "2").style.display = "none";
		document.getElementById(element.id + "3").style.display = "none";
	}
	
	function hideCheckError(element) {
		document.getElementById(element.name +"R1").style.display = "none";
	}
	
	function validateEmail(emailField){
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		return reg.test(emailField.value);
	}
	function validatePhone(mobileField){
		var phoneno = /^\d{10}$/;
		return mobileField.value.match(phoneno);
	}
	function validateZipcode(zipcodeField){
		var zipcode = /^\d{6}$/;
		return zipcodeField.value.match(zipcode);
	}
	function isNumberKey(evt)
    {
       var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;

       return true;
    }
</script>