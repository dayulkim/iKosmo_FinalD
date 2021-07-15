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
<title>����ο� ���ۻ�Ȱ</title>
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
					<li class="nav-item"><a class="nav-link" href="#dietlog">����α�</a></li>
					<li class="nav-item"><a class="nav-link" href="#group-buying">��������</a></li>
					<li class="nav-item"><a class="nav-link" href="#somoim">�Ҹ���</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">����������</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->

	<section class="page-section bg-light" id="dietlog">
		<div class="container">
			<div class="text-center py-5">
				<h2 class="section-heading text-uppercase">��ü��</h2>
				<h3 class="section-subheading text-muted">�ǹ��� ���� ���캸�� �����ϴ� �͵�
					���� �������!</h3>
			</div>
			<input type="hidden" id="selname" value="�÷ζ�ħ��">
			<input type="hidden" id="addr" value="����Ư���� ������ ������� 34��21-7">

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
		var container = document.getElementById('map'); //���� ǥ�� div
	
		var options = {
			center : new kakao.maps.LatLng(36.300442, 127.574917), //������ �߽���ǥ
			level : 3
		//������ Ȯ�� ����
		};

		var map = new kakao.maps.Map(container, options);
		
		var geocoder = new kakao.maps.services.Geocoder();
		
		var addr = document.getElementById('addr').value;
		var selname = document.getElementById('selname').value;
		
		geocoder.addressSearch(addr, function(result, status){
			 // ���������� �˻��� �Ϸ������ 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // ��������� ���� ��ġ�� ��Ŀ�� ǥ��
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // ����������� ��ҿ� ���� ������ ǥ��		        
		        var infowindow = new kakao.maps.InfoWindow({
		            content: "<div style='width:100px;margin:auto;text-align:center;font-size:15px;'>"+selname+'</div>'
		        });
		        infowindow.open(map, marker);

		        // ������ �߽��� ��������� ���� ��ġ�� �̵�
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
