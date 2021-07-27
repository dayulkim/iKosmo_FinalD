<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="resources/product/css/style.css"
	type="text/css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
<style type="text/css">
/* 연아님 담당 ProductDetail Style 시작  */
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
/* 연아님 담당 ProductDetail Style 끝 */

/* 재영님 담당 Review Style 시작  */
.review-table {
	width: 35em;
	height: auto;
	text-align: center;
}

.font-small {
	font-size: 0.4em;
}
/* 재영님 담당 Review Style 끝  */
</style>
<div class="top-element"></div>

<div id="page">
	<div id="contents">
		<div id="product">
			<div class="section">
				<ul>
					<li><a href="product.html"><img
							src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d3.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d3.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
				</ul>
				<div>
					<img src="resources/product/images/d2.jpg" alt="view">
				</div>
			</div>
			<div class="section">
				<p>
					<b>${provo.pro_name }<!-- 상품명 --></b><br> <br> 판매가
					&nbsp&nbsp&nbsp&nbsp
					<del>${provo.pro_price }</del>
					&nbsp ${provo.pro_sellprice }
					<!-- 상품가격 -->
					&nbsp (${provo.pro_discount }% OFF)<br> <br> 제조업체
					&nbsp&nbsp&nbsp&nbsp (주)엄마가 만든 집<br> <br> 원산지
					&nbsp&nbsp&nbsp&nbsp 대한민국<br> <br> 배송비
					&nbsp&nbsp&nbsp&nbsp ${provo.pro_delivery }원 (50,000원 이상 구매 시 무료)<br>
					<br> 제조사 &nbsp&nbsp&nbsp&nbsp 자체제작<br> <br> 상품등록일
					&nbsp&nbsp&nbsp&nbsp ${provo.pro_rdate }<br> <br> 판매자
					고유번호 &nbsp&nbsp&nbsp&nbsp ${provo.sel_num }
					<!-- 판매자 고유번호 출력안하고 값넘기기만 확인 -->
				</p>
				<form action="index.html" method="post">
					<select>
						<option>사이즈를 선택하세요.</option>
					</select> <select>
						<option>수량을 선택하세요.</option>
					</select> <input type="submit" value="스크랩하기" class="btn-cart"> <input
						type="submit" value="결제하기">
				</form>
			</div>
		</div>
	</div>
	<div id="product">
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
				<div align="center" id="testcenter">

					<!-- 					<form action="productDetail" method="post" id="formTest"> -->
					<%-- 						<input type="hidden" name="pro_num" value="${paging.pro_num}"> --%>

					<!-- 					<input type="hidden" name="sortType1" id="sortType1" 	value="aa()">  -->
					<select id="sortType1" name="sortType1" onchange="test()">
						<option value="0">최신순</option>
						<option value="1">별점순</option>

					</select>




					<!-- 					</form> -->

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
										<img alt="" src="resources/review/img/${list.rev_period }.png"
										width="100">
								</span></td>

							</tr>
							<tr>


								<td><span style="text-align: left;" class="font-small">
										색상평:<img alt=""
										src="resources/review/img/${list.rev_color}.png" width="100">
								</span><span class="font-small" style="text-align: right;"> 등록일:
										${list.rev_rdate }</span></td>
							</tr>

							<tr>
								<td colspan="3"><hr></td>
							</tr>

						</table>

					</c:forEach>
					<%@include file="reviewPageProcess.jsp"%>




				</div>
			</div>
			<div id="panel3" class="panel">
				<h6>문의 (판매자 정보)</h6>
				<br />
				<div class="container">
					<div class="text-center py-5">
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
							<tr>
								<td>등급 :</td>
								<td>&nbsp;&nbsp;${selvo.sel_grade}</td>
							</tr>
						</table>

					</div>
					<input type="hidden" id="selname" value="${selvo.sel_name}">
					<input type="hidden" id="addr" value="${selvo.sel_addr}">
					<div id="map" style="width: 500px; height: 400px;"></div>
					<br>
				</div>
			</div>
			<div id="panel4" class="panel">
				<h6>배송 및 환불에 관한 사항</h6>
				<br />배송비는 ${provo.pro_delivery }원이며, 50,000원 이상 구매 시 무료입니다.<br />
				예상 배송기간은 ${provo.pro_period }일 입니다. <br /> 환불에 관한 사항은 문의자에게 연락주세요.
				<br /> <br />
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

		// 세연님 담당 Seller Map 연동 -Ajax는 다율 작성
		$.ajax({
			type : "GET", // HTTP 요청방식
			url : url, // 해당 url
			data : data,
			dataType : dataType, // data 타입
			success : function() { // HTTP 요청 성공 후 데이터 전송
				alert("판매자 정보 map 출력 성공");
			},
			error : function() { // HTTP 요청 실패 후 데이터 전송
				alert("판매자 정보 map 출력 실패");
			}
		})
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