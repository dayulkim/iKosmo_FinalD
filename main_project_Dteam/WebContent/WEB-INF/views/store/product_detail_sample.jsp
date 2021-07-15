<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>슬기로운 집콕생활</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/resources/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/shop_styles.css" rel="stylesheet" />
<!-- OwlCarousel -->
<link rel="stylesheet"
	href="resources/css/owlCarousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="resources/css/owlCarousel/owl.theme.default.min.css">
</head>
<body id="page-top">

	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top"><img
				src="resources/assets/img/logo_sweethome.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="#dietlog">집밥로그</a></li>
					<li class="nav-item"><a class="nav-link" href="#group-buying">공동구매</a></li>
					<li class="nav-item"><a class="nav-link" href="#somoim">소모임</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->

	<section class="page-section bg-light" id="dietlog">
		<div class="container">
			<div class="text-center py-5">
				<h2 class="section-heading text-uppercase">업체명</h2>
				<h3 class="section-subheading text-muted">실물을 직접 살펴보고 결정하는 것도
					좋은 방법이죠!</h3>
			</div>
			<input type="hidden" id="selname" value="플로라침구">
			<input type="hidden" id="addr" value="서울특별시 강남구 테헤란로 34길21-7">

			<div id="map" style="width: 500px; height: 400px;"></div>
		</div>
	</section>
	

	<!-- Footer-->
	<footer class="footer py-4">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-4 text-lg-start">Copyright &copy; Your
					Website 2021</div>
				<div class="col-lg-4 my-3 my-lg-0">
					<a class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-twitter"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-facebook-f"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-linkedin-in"></i></a>
				</div>
				<div class="col-lg-4 text-lg-end">
					<a class="link-dark text-decoration-none me-3" href="#!">Privacy
						Policy</a> <a class="link-dark text-decoration-none" href="#!">Terms
						of Use</a>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- kakaomap api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ed41aaad31a6786708d7abba81ccc02d&libraries=services"></script>
	<script>
		var container = document.getElementById('map'); //지도 표시 div
	
		var options = {
			center : new kakao.maps.LatLng(36.300442, 127.574917), //지도의 중심좌표
			level : 3
		//지도의 확대 레벨
		};

		var map = new kakao.maps.Map(container, options);
		
		var geocoder = new kakao.maps.services.Geocoder();
		
		var addr = document.getElementById('addr').value;
		var selname = document.getElementById('selname').value;
		
		geocoder.addressSearch(addr, function(result, status){
			 // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시		        
		        var infowindow = new kakao.maps.InfoWindow({
		            content: "<div style='width:100px;margin:auto;text-align:center;font-size:15px;'>"+selname+'</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동
		        map.setCenter(coords);
		    } 
		});
	</script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="resources/js/jquery.min.js"></script>


	

</body>
</html>
