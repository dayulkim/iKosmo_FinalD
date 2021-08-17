<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>상품 상세보기</title>
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
<link href="resources/css/store/main.css" rel="stylesheet">
<!-- 탭 기능 시작 -->
<style type="text/css">
.tabs {
	margin: 0;
	padding: 0;
}

.tabs li {
	list-style-type: none;
	display: inline-block;
	background: #c7c7c7;
	padding: 3px 10px;
	color: #fff;
	cursor: pointer;
}

.tabs li:hover {
	color: #fff;
	background: #5294de;
}

.tabs li.active {
	color: #fff;
	background: #5294de;
}

.panel {
	display: none;
	background: #fff;
	border: 1px solid #c7c7c7;
	padding: 30px;
}

.panel.active {
	display: block;
}
</style>
<!-- 탭 기능 끝 -->
</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Product Detail Start -->
	<div class="product-detail">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="product-detail-top">
						<div class="row align-items-center">
							<div class="col-md-5">
								<div class="product-slider-single normal-slider">
									<img src="resources/assets/img/store/${provo.pro_thumb}"
										alt="Product Image">
									<c:forEach var="i" items="${plist}">
										<img src="resources/assets/img/store/${i}" alt="Product Image">
									</c:forEach>
								</div>
								<div class="product-slider-single-nav normal-slider">
									<div class="slider-nav-img">
										<img src="resources/assets/img/store/${provo.pro_thumb}"
											alt="Product Image">
									</div>
									<c:forEach var="i" items="${plist}">
										<div class="slider-nav-img">
											<img src="resources/assets/img/store/${i}"
												alt="Product Image">
										</div>
									</c:forEach>

								</div>
							</div>
							<div class="col-md-7"
								style="line-height: 200%; color: #747474; font-size: 5px">
								<div class="product-content">
									<div class="title">
										<div>
											<a href="wishlist.html" class="btn wishlist"> <i
												class="fa fa-heart"></i>
											</a>
										</div>
										<br>
										<c:set var="num0" value="0" />
										<c:set var="num1" value="1" />
										<c:set var="num2" value="2" />
										<c:set var="num3" value="3" />
										<c:set var="num4" value="4" />
										<c:set var="num5" value="5" />
										<c:set var="num6" value="6" />
										<c:set var="num7" value="7" />
										<c:set var="num8" value="8" />
										<c:set var="num9" value="9" />
										<c:set var="num10" value="10" />
										<c:set var="num11" value="11" />
										<c:set var="num12" value="12" />
										<c:set var="num13" value="13" />
										<c:choose>
											<c:when test="${provo.pro_category eq num0 }">
												<p>분류 &nbsp; :&nbsp;가구 &nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num1 }">
												<p>분류 &nbsp; :&nbsp;패브릭 &nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num2 }">
												<p>분류 &nbsp; :&nbsp;홈데코/조명 &nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num3 }">
												<p>분류 &nbsp; :&nbsp;가전&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num4 }">
												<p>분류 &nbsp; :&nbsp;수납/정리&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num5 }">
												<p>분류 &nbsp; :&nbsp;생활&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num6 }">
												<p>분류 &nbsp; :&nbsp;주방&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num7 }">
												<p>분류 &nbsp; :&nbsp;생필품&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num8 }">
												<p>분류 &nbsp; :&nbsp;DIY/공구&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num9 }">
												<p>분류 &nbsp; :&nbsp;시공/서비스&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num10 }">
												<p>분류 &nbsp; :&nbsp;반려동물&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num11 }">
												<p>분류 &nbsp; :&nbsp;캠핑&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num12 }">
												<p>분류 &nbsp; :&nbsp;홈트레이닝&nbsp;></p>
											</c:when>
											<c:when test="${provo.pro_category eq num13 }">
												<p>분류 &nbsp; : &nbsp;유아/아동&nbsp;></p>
											</c:when>
										</c:choose>

									</div>
									<div class="price">${provo.pro_name}</div>
									<div id="star_result">
										<c:forEach var="i" begin="1" end="5" step="1">
											<c:choose>
												<c:when test="${i <= pro_star }">
													<a class="ratting"><i class="fa fa-star"></i></a>
												</c:when>
												<c:otherwise>
													<i class="fa fa-star"></i>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</div>
									<br>
									<div class="price">
										판매업체: ${provo.seller.sel_name} &nbsp; (등급: <img
											src="resources/assets/img/store/grade${provo.seller.sel_grade}.jpg"
											alt="" style="width: 12.5px; height: 13px;">)
									</div>
									<div class="price">
										가격: &nbsp; (${provo.pro_discount}% OFF) &nbsp;
										${provo.pro_dprice}원 &nbsp;
										<del>${provo.pro_price}원</del>
									</div>
									<div class="price">배송비:&nbsp; ${provo.pro_delivery}원</div>
									<div class="price">예상 배송기간:&nbsp;
										최대&nbsp;${provo.pro_delivery}일</div>
									<div class="quantity">
										수량:&nbsp;
										<div class="qty">
											<button class="btn-minus">
												&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-minus"></i>
											</button>
											<input type="text" value="1">
											<button class="btn-plus">
												&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-plus"></i>
											</button>
										</div>
									</div>
									<br>
									<div class="action">
										<a class="btn" href="#"><i class="fa fa-shopping-cart"></i>장바구니에
											담기</a> <a class="btn" href="#"><i class="fa fa-shopping-bag"></i>즉시
											구매</a>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>

			<!-- 탭 시작 -->
			<div id="product" style="width: 55%">
				<div id="contents">
					<ul class="tabs">
						<li class="active" data-panel="panel1">상품정보</li>
						<li data-panel="panel2">리뷰</li>
						<li data-panel="panel3">문의</li>
						<li data-panel="panel4">배송/환불</li>
						<li data-panel="panel5">추천상품</li>
					</ul>
					<div id="panel1" class="panel active">
						상품정보 이미지 <br /> <img src="${provo.pro_detail }" alt="상세 이미지"
							width="50%" height="50%" align="center" border="0"> <br />
					</div>
					<div id="panel2" class="panel">
						<div align="left" id="testcenter">
						<div class="reviews-submitted">
                         <div class="reviewer" style="font-size: 16px">리뷰(4)&nbsp;&nbsp;&nbsp;추천순&nbsp;|&nbsp;등록순</div><hr>
                                            <div class="ratting" style="font-size: 14px">
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                            &nbsp;&nbsp;&nbsp; by 봄* &nbsp;<span>(2021/08/14)</span></div>
                                            <p  style="font-size: 13px">
                                                시원하고 여름에 쓰기 좋아요! 가볍지만 충전재 빵빵하고 완전 대만족합니다! 많이 파세용
                                            </p>
                                            <img src="resources/assets/img/store/${provo.pro_thumb}" style="width: 60px">
                                            <p  style="font-size: 13px">
                                                1개의 댓글이 있습니다.
                                            </p><hr>
                                            <div class="ratting" style="font-size: 14px">
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                            &nbsp;&nbsp;&nbsp; by 신연*&nbsp;<span>(2021/08/14)</span></div>
                                            <p  style="font-size: 13px">
                                                가격이 너무 싸서 걱정했는데, 받아보니 정말 만족합니다 친척들 선물용으로 추가 구매할 생각이에용
                                            </p>
                                            <img src="resources/assets/img/store/${provo.pro_thumb}" style="width: 60px">
                                            <p  style="font-size: 13px">
                                                1개의 댓글이 있습니다.
                                            </p><hr>
                                            <div class="ratting" style="font-size: 14px">
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                                <i class="fa fa-star" style="font-size: 12px"></i>
                                            &nbsp;&nbsp;&nbsp; by다롱* &nbsp;<span>(2021/08/14)</span></div>
                                            <p  style="font-size: 13px">
                                                시원하고 여름에 쓰기 좋아요! 만족합니다!
                                            </p>
                                            <img src="resources/assets/img/store/${provo.pro_thumb}" style="width: 60px">
                                            <p  style="font-size: 13px">
                                                1개의 댓글이 있습니다.
                                            </p><hr>
                                        </div>
                                        

							<!-- 					<form action="productDetail" method="post" id="formTest"> -->
							<%-- 						<input type="hidden" name="pro_num" value="${paging.pro_num}"> --%>

							<!-- 					<input type="hidden" name="sortType1" id="sortType1" 	value="aa()">  -->
							<!-- <select id="sortType1" name="sortType1" onchange="test()">
								<option value="0">최신순</option>
								<option value="1">별점순</option>

							</select>-->
							<!-- 					</form> 

							<c:forEach var="list" items="${reviewList}">
								<table id="review-table">
									<tr>
										<td rowspan="3"><img alt=""
											src="resources/review/reviewImages/${list.rev_photo }"
											width="200"></td>
										<td>
											<p>내용 : ${list.rev_content }</p>
										</td>
									</tr>
									<tr>
										<td><span style="text-align: left; padding-left: 24px;"
											class="font-small"> 별점: <img alt=""
												src="resources/review/img/${list.rev_star }.png" width="100">
										</span><span style="text-align: right;" class="font-small">배송기간평:
												<img alt=""
												src="resources/review/img/${list.rev_period }.png"
												width="100">
										</span></td>
									</tr>
									<tr>
										<td><span style="text-align: left;" class="font-small">
												색상평:<img alt=""
												src="resources/review/img/${list.rev_color}.png" width="100">
										</span><span class="font-small" style="text-align: right;">
												등록일: ${list.rev_rdate }</span></td>
									</tr>
									<tr>
										<td colspan="3"><hr></td>
									</tr>
								</table>
							</c:forEach>
							<%@include file="reviewPageProcess.jsp"%>




						</div>
					</div>
					<div id="panel3" class="panel" style="line-height: 200%;">
						<h6>문의 (판매자 정보)</h6>
						<hr>
						업체명 : ${selvo.sel_name}<br> 문의전화 : ${selvo.sel_tel}<br>
						주소 : ${selvo.sel_addr}<br> 등급 : ${selvo.sel_grade} <input
							type="hidden" id="selname" value="${selvo.sel_name}"> <input
							type="hidden" id="addr" value="${selvo.sel_addr}">
						<div id="map" style="width: 500px; height: 400px;"></div>
						<br>
					</div>
					<div id="panel4" class="panel">
						<h6>배송 및 환불에 관한 사항</h6>
						<br />배송비는 ${provo.pro_delivery }원이며, 50,000원 이상 구매 시 무료입니다.<br />
						예상 배송기간은 ${provo.pro_period }일 입니다. <br /> 환불에 관한 사항은 문의자에게
						연락주세요. <br /> <br />
						<table style="text-align: left;" border="1">
							<tr>
								<td>업체명 :</td>
								<td>&nbsp;&nbsp;${selvo.sel_name}</td>
							</tr>
							<tr>
								<td>문의전화 :</td>
								<td>&nbsp;&nbsp;${selvo.sel_tel}</td>
							</tr>
							<tr>
								<td>주소 :</td>
								<td>&nbsp;&nbsp;${selvo.sel_addr}</td>
							</tr>
						</table>

					</div>
					<div id="panel5" class="panel">
						<div class="footer">
							<ul class="items">
								<li><a href="product.html"> <img
										src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
											68,930원 &nbsp 15% OFF</span> 시어서커 차렵이불 줄누비 여름이불 블루
								</a></li>
								<li><a href="product.html"> <img
										src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
											68,930원 &nbsp 15% OFF</span> 다이아 고밀도 60수 순면 슈퍼싱글 퀸 차렵이불세트
								</a></li>
								<li><a href="product.html"> <img
										src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
											68,930원 &nbsp 15% OFF</span> 대나무 뱀부 시어서커 차렵 사계절침구
								</a></li>
								<li><a href="product.html"> <img
										src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
											68,930원 &nbsp 15% OFF</span> 해미 시어서커 리플 여름이불 그레이
								</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<!-- 탭 끝 -->
		</div>
	</div>
	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="resources/lib/easing/easing.min.js"></script>
	<script src="resources/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/js/store/main.js"></script>
	<script type="text/javascript">
		// 연아님 담당 Detail
		$(document).ready(function() {

			$(".tabs li").on("click", function(e) {
				var $contents = $(this).closest("#contents");
				$contents.find(".tabs li.active").removeClass("active");
				$(this).addClass("active");
				$contents.find(".panel.active").hide();
				$contents.find(".panel.active").removeClass("active");
				var panelToShow = $(this).data("panel");
				$("#" + panelToShow).show();
				$("#" + panelToShow).addClass("active");
			});

		});

		// 재영님 담당 Review
		function test() {
			let sort = $('#sortType1').val();
			$('#testcenter').load(
					"productDetail?pro_num=${paging.pro_num}&sortType1=" + sort
							+ " #testcenter", function() {
						$("#sortType1").val(sort);
					});

		};
	</script>
	<!-- kakaomap api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ed41aaad31a6786708d7abba81ccc02d&libraries=services"></script>
	<script>
		// 세연님 담당 카카오지도 API
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

		geocoder
				.addressSearch(
						addr,
						function(result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시		        
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : "<div style='width:100px;margin:auto;text-align:center;font-size:15px;'>"
													+ selname + '</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동
								map.setCenter(coords);
							}
						});
	</script>