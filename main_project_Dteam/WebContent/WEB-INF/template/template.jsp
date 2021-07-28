<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>슬기로운 집콕생활</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="resources/resources/assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="resources/css/styles.css" rel="stylesheet" />
    <!-- OwlCarousel -->
    <link rel="stylesheet" href="resources/css/owlCarousel/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/owlCarousel/owl.theme.default.min.css">
	<!-- jquery -->
    <script src="resources/js/jquery/jquery.min.js"></script>
    <script src="resources/js/jquery/jquery-3.6.0.js"></script>
    <script src="resources/js/jquery/jquery-ui.js"></script>
    <script src="resources/js/jquery/jquery-1.11.1.min.js"></script>
    <!-- js -->
    <script src="resources/js/httpRequest.js"></script>
</head>
<body>
<div id="page-top">
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>
	
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="resources/js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</div>
</body>
</html>