<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  <link href="resources/css/store/bootstrap.min.css" rel="stylesheet">-->
<link href="resources/css/store/main.css" rel="stylesheet">
<!-- 정렬 방식 관련 CSS & JQuery 시작-->
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

<!-- Favicon -->
<link href="resources/assets/img/store/favicon.ico" rel="icon">

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
<link href="resources/lib/slick/slick.css" rel="stylesheet">
<link href="resources/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/store/style.css" rel="stylesheet">
<!-- 정렬 방식 관련 CSS & JQuery 끝-->
<!-- 사이드배너 시작 -->
<script type="text/javascript">
	var stmnLEFT = 10; // 오른쪽 여백 
	var stmnGAP1 = 0; // 위쪽 여백 
	var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
	var stmnBASE = 150; // 스크롤 시작위치 
	var stmnActivateSpeed = 25; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
	var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
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
		document.getElementById('STATICMENU').style.left = stmnLEFT + 'px'; //처음에 오른쪽에 위치. left로 바꿔도.
		document.getElementById('STATICMENU').style.top = document.body.scrollTop
				+ stmnBASE + 'px';
		RefreshStaticMenu();
	}
</script>
<style type="text/css">
#unit {
float:left;
}

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
	width: 10%; /* 가로 사이즈 */
	padding: 10px; /* 내부여백 */
	padding-left: 12px;
	border: 2px solid #ddd;
	background: url(./resources/assets/img/store/arrow_down_18dp.png)
		no-repeat right 50%; /* 화살표 위치 */
	background-size: 30px; /* 화살표 크기 */
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
} /* 마우스오버 */
</style>


<!-- 사이드배너 끝 -->

<body onload="InitializeStaticMenu();">
	  <div id="STATICMENU">
		<table>
			<c:choose>
				<c:when test="${sessionID !=null}">
					<thead>
						<tr>
							<th width="90px" bgcolor="ffffff">>>Quick Banner</th>
						</tr>
						<tr>
							<th width="90px" bgcolor="ffffff">>>최근 조회 상품</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listc" items="${my_list}">
							<tr>
								<td bgcolor="#FFC6C6" height="90px" width="90px" align="center"><a
									href="detail?pro_num=${listc.pro_num}&sel_num=${listc.sel_num}"><img
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
							<th width="90px" bgcolor="ffffff">>>최다 클릭 상품</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listm" items="${their_list}">
							<tr>
								<td bgcolor="#FFC6C6" height="90px" width="90px" align="center"><a
									href="detail?pnum=${listm.pro_num}&sel_num=${listm.sel_num}"><img
										src="resources/assets/img/store/${listm.pro_thumb}" alt=""
										style="width: 75px; height: 75px;"></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
<section>
	<div class="container">
				<!-- 나의 스크랩, 나의 장바구니 버튼 시작 -->
				<div class="bottom-bar" id="unit">
					<div class="user" align="left">
						<c:choose>
							<c:when test="${sessionID !=null}">
								<a href="scraplist" class="btn wishlist"> <i
									class="fa fa-heart"></i> (${cart_total})
								</a>
							</c:when>
							<c:otherwise>
								<a href="login" class="btn wishlist"> <span><i
										class="fa fa-heart"></i> (0)</span></a>
							</c:otherwise>
						</c:choose>
					</div>
					<br>
					<div class="user" align="left">
						<c:choose>
							<c:when test="${sessionID !=null}">
								<a href="cart" class="btn wishlist"> <span><i
										class="fa fa-shopping-cart"></i> (${scrap_total})</span>
								</a>
							</c:when>
							<c:otherwise>
								<a href="login" class="btn wishlist"> <span><i
										class="fa fa-shopping-cart"></i> (0)</span></a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div align="right">
					<select class="bo_w_select" id="way" name="way">
						<option value="0" selected="selected">정렬기준</option>
						<option value="1">최근등록순</option>
						<option value="2">낮은가격</option>
						<option value="3">높은가격</option>
						<option value="4">리뷰많은순</option>
						<option value="5">할인율순</option>
					</select>
				</div>
				<br>
				<div align="right">
					<select class="bo_w_select" id="merit" name="merit">
						<option value="0" selected="selected">선택사항</option>
						<option value="1">배송비 무료</option>
						<option value="2">빠른배송</option>
						<option value="3">추천 업체</option>
						<option value="4">대폭 할인</option>
					</select>
				</div>
				<br>
				<div align="right">
					<input type="submit" value="검색" class="button"
						onclick="addcategory()">
				</div>
				<!--  카테고리 시작 -->
				<div class="row">
					<div class="col-sm-3">
						<div class="left-sidebar">
							<h2>카테고리</h2>
							<div class="panel-group category-products" id="accordian">
								<!--category-productsr-->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=0">가구</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=1">패브릭</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=2">홈데코/조명</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=3">가전</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=4">수납/정리</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=5">생활</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=6">주방</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=7">생필품</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=8">DIY/공구</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=9">시공/서비스</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=10">반려동물</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=11">캠핑</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=12">홈트레이닝</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="theme?category=13">유아/아동</a>
										</h4>
									</div>
								</div>
							</div>
							<!--/category-products-->
						</div>
					</div>
				</div>
				<div class="col-sm-9 padding-right">
					<div class="features_items">
						<!--features_items-->
						<h4 class="title text-center">Total ${pro_total}개</h4>
						<br> <br>
						<c:forEach var="listv" items="${list}">
							<div class="col-sm-4" id="unit">
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
												<del>${listv.pro_price}원</del>
												&nbsp;&nbsp;<b>${listv.pro_dprice}원&nbsp; </b>(${listv.pro_discount}%
												할인)
											</h2>
											<font size="1" color="#F361A6">리뷰 -
												${listv.pro_review}개</font>
										</div>
									</div>
								</div>
								</div>
							</c:forEach>
						</div>
						<!--features_items-->
					</div>
				</div>
		
		</section>
	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/store/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="resources/js/store/jquery.min.js"></script>
	<script src="resources/js/store/jquery.js"></script>
	<script src="resources/js/store/bootstrap.min.js"></script>
	<script src="resources/js/store/jquery.scrollUp.min.js"></script>
	<script src="resources/js/store/price-range.js"></script>
	<script src="resources/js/store/jquery.prettyPhoto.js"></script>
	<script src="resources/js/store/main.js"></script>
	<!-- 정렬 방식 관련 JQuery 시작-->
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="resources/lib/easing/easing.min.js"></script>
	<script src="resources/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/js/store/main.js"></script>
	<!-- 정렬 방식 관련 JQuery 끝-->
	<script type="text/javascript">
		function addcategory() {
			var category = getParameterByName("category");
			console.log(category);
			var way = document.getElementById("way").value;
			var merit = document.getElementById("merit").value;
			var param = "category=" + category;
			param += "&way=" + way;
			param += "&merit=" + merit;
			location.href = "selection?" + param;

		}
		function getParameterByName(name) {
			name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
			var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
					.exec(location.search);
			return results === null ? "" : decodeURIComponent(results[1]
					.replace(/\+/g, " "));
		}
	</script>

