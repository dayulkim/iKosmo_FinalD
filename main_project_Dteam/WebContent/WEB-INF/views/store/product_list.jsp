<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/prettyPhoto.css" rel="stylesheet">
<link href="resources/css/price-range.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">

<!-- ���� ��� ���� CSS & JQuery ����-->
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

<!-- Favicon -->
<link href="resources/planb/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="resources/planb/lib/slick/slick.css" rel="stylesheet">
<link href="resources/planb/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/planb/css/style.css" rel="stylesheet">
<!-- ���� ��� ���� CSS & JQuery ��-->
<!-- ���̵��� ���� -->
<script type="text/javascript">
	var stmnLEFT = 10; // ������ ���� 
	var stmnGAP1 = 0; // ���� ���� 
	var stmnGAP2 = 150; // ��ũ�ѽ� ������ ���ʰ� �������� �Ÿ� 
	var stmnBASE = 150; // ��ũ�� ������ġ 
	var stmnActivateSpeed = 25; //��ũ���� �ν��ϴ� ������ (���ڰ� Ŭ���� ������ �ν�)
	var stmnScrollSpeed = 20; //��ũ�� �ӵ� (Ŭ���� ����)
	var stmnTimer;

	function RefreshStaticMenu() {
		var stmnStartPoint, stmnEndPoint;
		stmnStartPoint = parseInt(
				document.getElementById('STATICMENU').style.top, 10);
		stmnEndPoint = Math.max(document.documentElement.scrollTop,
				document.body.scrollTop)
				+ stmnGAP2;
		if (stmnEndPoint < stmnGAP1)
			stmnEndPoint = stmnGAP1;
		if (stmnStartPoint != stmnEndPoint) {
			stmnScrollAmount = Math.ceil(Math
					.abs(stmnEndPoint - stmnStartPoint) / 15);
			document.getElementById('STATICMENU').style.top = parseInt(document
					.getElementById('STATICMENU').style.top, 10)
					+ ((stmnEndPoint < stmnStartPoint) ? -stmnScrollAmount
							: stmnScrollAmount) + 'px';
			stmnRefreshTimer = stmnScrollSpeed;
		}
		stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed);
	}
	function InitializeStaticMenu() {
		document.getElementById('STATICMENU').style.left = stmnLEFT + 'px'; //ó���� �����ʿ� ��ġ. left�� �ٲ㵵.
		document.getElementById('STATICMENU').style.top = document.body.scrollTop
				+ stmnBASE + 'px';
		RefreshStaticMenu();
	}
</script>

<style type="text/css">
#STATICMENU {
	margin: 0pt;
	padding: 0pt;
	position: absolute;
	right: 0px;
	top: 0px;
	border: thin;
	border-color: #FF0000;
	z-index: 1;
	width: 90px;
}

select {
	-moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
}

input {
	-moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
}

.bo_w_select {
	width: 10%; /* ���� ������ */
	padding: 10px; /* ���ο��� */
	padding-left: 12px;
	border: 2px solid #ddd;
	background: url(./resources/planb/img/arrow_down_18dp.png) no-repeat
		right 50%; /* ȭ��ǥ ��ġ */
	background-size: 30px; /* ȭ��ǥ ũ�� */
	border-radius: 8px;
	box-sizing: border-box;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	font-size: 9px;
	color: #000;
	outline: none;
}

.bo_w_select:hover {
	border: 1px solid #aaa;
} /* ���콺���� */
</style>


<!-- ���̵��� �� -->
</head>
<body onload="InitializeStaticMenu();"><br><br><br><br><br><br>
	<div id="STATICMENU">
		<table>
			<c:choose>
				<c:when test="${sessionID !=null}">
					<thead>
						<tr>
							<th width="90px" bgcolor="ffffff">>>Quick Banner</th>
						</tr>
						<tr>
							<th width="90px" bgcolor="ffffff">>>�ֱ� ��ȸ ��ǰ</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listc" items="${my_list}">
							<tr>
								<td bgcolor="#FFC6C6" height="90px" width="90px" align="center"><a
									href="detail?pnum=${listc.pro_num}"><img
										src="resources/assets/img/store/${listc.pro_thumb}" alt=""
										style="width: 75px; height: 75px;"></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:when>
				<c:otherwise>
					<thead>
						<tr>
							<th width="90px" bgcolor="ffffff">>>Quick Banner</th>
						</tr>
						<tr>
							<th width="90px" bgcolor="ffffff">>>�ִ� Ŭ�� ��ǰ</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listm" items="${their_list}">
							<tr>
								<td bgcolor="#FFC6C6" height="90px" width="90px" align="center"><a
									href="detail?pnum=${listm.pro_num}"><img
										src="resources/assets/img/store/${listm.pro_thumb}" alt=""
										style="width: 75px; height: 75px;"></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
	<!-- Bottom Bar Start -->
	<div class="bottom-bar">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-md-6">
					<div class="search">
						<input type="text" placeholder="Search">
						<button>
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<div class="col-md-3">
					<div class="user">
						<c:choose>
							<c:when test="${sessionID !=null}">
								<a href="scraplist" class="btn wishlist"> <span><i
										class="fa fa-heart"></i> (${cart_total})</span></a>
							</c:when>
							<c:otherwise>
								<a href="login" class="btn wishlist"> <span><i
										class="fa fa-heart"></i> (0)</span></a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${sessionID !=null}">
								<a href="cart" class="btn cart"> <span><i
										class="fa fa-shopping-cart"></i> (${scrap_total})</span>
								</a>
							</c:when>
							<c:otherwise>
								<a href="login" class="btn cart"> <span><i
										class="fa fa-shopping-cart"></i> (0)</span></a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bottom Bar End -->
	<!-- �����̵� ���� -->
	<div class="brand">
		<div class="container-fluid">
			<div class="brand-slider">
				<div class="brand-item">
					<img src="resources/assets/img/store/slide1.jpg" alt=""
						style="width: 330px; height: 200px; margin-left: 20px">
				</div>
				<div class="brand-item">
					<img src="resources/assets/img/store/slide1.jpg" alt=""
						style="width: 330px; height: 200px; margin-left: 20px">
				</div>
				<div class="brand-item">
					<img src="resources/assets/img/store/slide1.jpg" alt=""
						style="width: 330px; height: 200px; margin-left: 20px">
				</div>
				<div class="brand-item">
					<img src="resources/assets/img/store/slide1.jpg" alt=""
						style="width: 330px; height: 200px; margin-left: 20px">
				</div>
				<div class="brand-item">
					<img src="resources/assets/img/store/slide1.jpg" alt=""
						style="width: 330px; height: 200px; margin-left: 20px">
				</div>
				<div class="brand-item">
					<img src="resources/assets/img/store/slide1.jpg" alt=""
						style="width: 330px; height: 200px; margin-left: 20px">
				</div>
			</div>
		</div>
	</div>
	<!-- �����̵� �� -->
	<section>
		<div class="container">
			<!--  ���� ��ư ���� -->
			 <!-- <form action="selection" method="get"> -->
				<div align="right">
					<select class="bo_w_select" id="way" name="way">
						<option value="0" selected="selected">���ı���</option>
						<option value="1">�ֱٵ�ϼ�</option>
						<option value="2">��������</option>
						<option value="3">��������</option>
						<option value="4">���丹����</option>
						<option value="5">��������</option>
					</select>
				</div>
				<br>
				<div align="right">
					<select class="bo_w_select" id="merit" name="merit">
						<option value="0" selected="selected">���û���</option>
						<option value="1">��ۺ� ����</option>
						<option value="2">�������</option>
						<option value="3">��õ ��ü</option>
						<option value="4">���� ����</option>
					</select>
				</div>
				<br>
				<div align="right">
					<input type="submit" value="�˻�" class="button" onclick="addcategory()">
				</div>
			<!--  ī�װ� ���� -->
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>ī�װ�</h2>
						<div class="panel-group category-products" id="accordian">
							<!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=0">����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=1">�к긯</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=2">Ȩ����/����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=3">����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=4">����/����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=5">��Ȱ</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=6">�ֹ�</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=7">����ǰ</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=8">DIY/����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=9">�ð�/����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=10">�ݷ�����</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=11">ķ��</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=12">ȨƮ���̴�</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="theme?category=13">����/�Ƶ�</a>
									</h4>
								</div>
							</div>
						</div>
						<!--/category-products-->
					</div>
				</div>
				<div class="col-sm-9 padding-right">
					<div class="features_items">
						<!--features_items-->
						<h4 class="title text-center">Total ${pro_total}��</h4>
						<br> <br>
						<c:forEach var="listv" items="${list}">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img src="resources/assets/img/store/${listv.pro_thumb}"
												alt="" style="width: 250px; height: 250px;">
											<p>
												<c:set var="days" value="7" />
												<c:choose>
													<c:when test="${listv.pro_age le days}">
														<img src="resources/assets/img/store/new.jpg" alt=""
															style="width: 26px; height: 13px;">
													</c:when>
												</c:choose>
												[${listv.seller.sel_name}] <img
													src="resources/assets/img/store/grade${listv.seller.sel_grade}.jpg"
													alt="" style="width: 12.5px; height: 13px;"><br>
												${listv.pro_name}....
											</p>
											<h2>
												<del>${listv.pro_price}��</del>
												&nbsp;&nbsp;<b>${listv.pro_dprice}��&nbsp; </b>(${listv.pro_discount}%
												����)
											</h2>
											<font size="1" color="#F361A6">���� -
												${listv.pro_review}��</font>
										</div>
									</div>
									<div class="choose">
										<ul>
											<li><a href="#"><i class="fa fa-plus-square"></i>��ũ���ϱ�</a></li>
											<li><a href="detail?pnum=${listv.pro_num}"><i
													class="fa fa-plus-square"></i>��ǰ �󼼺���</a></li>
											<li><a href="#"><i class="fa fa-plus-square"></i>��
													��ǰ�� ���Ե� �����̺���</a></li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--features_items-->
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/price-range.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/main.js"></script>
	<!-- ���� ��� ���� JQuery ����-->
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="resources/planb/lib/easing/easing.min.js"></script>
	<script src="resources/planb/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/planb/js/main.js"></script>
	<!-- ���� ��� ���� JQuery ��-->
	<script type="text/javascript">
function addcategory() {
	var category = getParameterByName("category");
	console.log(category);
	var way = document.getElementById("way").value;
	var merit = document.getElementById("merit").value;
	var param = "category="+category;
		param += "&way="+way;
		param += "&merit="+merit;
	location.href = "selection?"+param;
	
}
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
</script>
</body>
</html>
