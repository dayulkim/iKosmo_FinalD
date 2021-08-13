<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">
<style>
.layer_title {
	text-align: center;
}

#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 99;
	background-color: #000000;
	display: none;
}

.layerpop {
	overflow: auto;
	position: absolute;
	display: none;
	z-index: 100;
	border: 2px solid #ccc;
	background: #fff;
}

.layerpop_area .layer_title {
	padding: 10px 10px 10px 10px;
	border: 0px solid #aaaaaa;
	background: #f1f1f1;
	color: #3eb0ce;
	font-size: 1.3em;
	font-weight: bold;
	line-height: 24px;
}

.layerpop_area .layerpop_close {
	width: 30px;
	display: block;
	position: absolute;
	top: 10px;
	right: 10px;
}

.layerpop_area .content {
	width: 95%;
	margin: 2%;
	color: #828282;
}

</style>
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
</head>

<body>


	<!-- Bottom Bar Start -->
	<div class="bottom-bar">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="search">
						<input type="text" placeholder="Search">
						<button>
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<div class="col-md-4">
					<div class="user">
						<a href="wishlist.html" class="btn wishlist"> <i
							class="fa fa-heart"></i> <span>(0)</span>
						</a> <a href="cart.html" class="btn cart"> <i
							class="fa fa-shopping-cart"></i> <span>(0)</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bottom Bar End -->

	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container-fluid">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">홈</a></li>
				<li class="breadcrumb-item"><a href="#">스토어</a></li>
				<li class="breadcrumb-item active">마이페이지</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- My Account Start -->
	<div class="my-account">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="nav flex-column nav-pills" role="tablist"
						aria-orientation="vertical">
						<a class="nav-link active" id="dashboard-nav" data-toggle="pill"
							href="#dashboard-tab" role="tab"><i class="fa fa-user"></i>&nbsp;내
							정보 보기</a> <a class="nav-link" id="address-nav" data-toggle="pill"
							href="#address-tab" role="tab"><i
							class="fa fa-map-marker-alt"></i>&nbsp;나의 집들이</a> <a class="nav-link"
							id="account-nav" data-toggle="pill" href="#account-tab"
							role="tab"><i class="fa fa-tachometer-alt"></i>&nbsp;나의 질문/답변</a>
						<a class="nav-link" id="orders-nav" data-toggle="pill"
							href="#orders-tab" role="tab"><i class="fa fa-shopping-bag"></i>&nbsp;구매내역</a>
						<a class="nav-link" id="payment-nav" data-toggle="pill"
							href="#payment-tab" role="tab"><i class="fa fa-credit-card"></i>&nbsp;나의
							쿠폰함</a> <a class="nav-link" href="logout"><i
							class="fa fa-sign-out-alt"></i>로그아웃</a>

					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="dashboard-tab"
							role="tabpanel" aria-labelledby="dashboard-nav">
							<h4>내 정보</h4>
							<div class="row">
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="이름">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="닉네임">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="휴대전화">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="이메일">
								</div>
								<div class="col-md-12">
									<input class="form-control" type="text" placeholder="주소">
								</div>
								<div class="col-md-12">
									<button class="btn">내 정보 수정하기</button>
									<br> <br>
								</div>
							</div>
							<h4>비밀번호 변경</h4>
							<div class="row">
								<div class="col-md-12">
									<input class="form-control" type="password"
										placeholder="현재 비밀번호">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="변경할 비밀번호">
								</div>
								<br>
								<div class="col-md-6">
									<input class="form-control" type="text"
										placeholder="변경할 비밀번호 재입력">
								</div>
								<div class="col-md-12">
									<button class="btn">비밀번호 변경</button>
								</div>
							</div>
							<br> <br>
							<h4>내 추가 정보</h4>
							<div class="row">
								<div class="col-md-12"></div>
								<div id="houseInfo_target">
									<button class="house_info_add-btn">추가</button>
									<c:forEach var="house_info" items="${house_info }">
										<p>
											<c:if test="${house_info.hinfo_type!='0' }">
									집 : ${house_info.hinfo_type}
									</c:if>
											<c:if test="${house_info.hinfo_size!='0' }">
									   &nbsp;${house_info.hinfo_size}
									</c:if>
											<c:if test="${house_info.hinfo_with!='0' }">
									함께 : ${house_info.hinfo_with}
									</c:if>
											<c:if test="${house_info.hinfo_tend!='0' }">
									성향 : ${house_info.hinfo_tend}
									</c:if>
										</p>
										<p>
											<c:if test="${house_info.hinfo_favour!='0' }">
									선호도 : ${house_info.hinfo_type}
									</c:if>
											<c:if test="${house_info.hinfo_buytend!='0' }">
									구매성향 : ${house_info.hinfo_buytend}
									</c:if>
											<c:if test="${house_info.hinfo_style!='0' }">
									스타일 : ${house_info.hinfo_style}
									</c:if>
											<c:if test="${house_info.hinfo_activity!='0' }">
									주 활동 : ${house_info.hinfo_activity}
									</c:if>


											<button class="house_info_del-btn"		value="${house_info.hinfo_num }">삭제</button>
										</p>
										<hr>

									</c:forEach>
								</div>
								<div class="col-md-6"></div>
								<br>
								<div class="col-md-6"></div>
								<div class="col-md-12"></div>
							</div>
						</div>
						<div class="tab-pane fade" id="orders-tab" role="tabpanel"
							aria-labelledby="orders-nav">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>주문번호</th>
											<th>상품명</th>
											<th>가격</th>
											<th>구매수량</th>
											<th>결제금액</th>
											<th>구매일</th>
											<th>배송상태</th>
											<th>상품보기</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${ordvo}">
											<tr>
												<td>${list.orderListVO.ord_num }</td>
												<td>${list.pro_name }</td>
												<td>${list.pro_sellprice }</td>
												<td>${list.orderListVO.ord_qty }</td>
												<td>${list.pro_sellprice * list.orderListVO.ord_qty }</td>
												<td>${list.orderListVO.ord_date }</td>
												<td>배송완료???????</td>
												<td><button class="btn">상품보러가기</button></td>
											</tr>
										</c:forEach>
										<tr>
											<td>1</td>
											<td>[35%할인] 아르테 4인 천연면피 소가죽 소파 +스툴 추가...</td>
											<td>56,000원</td>
											<td>구매수량</td>
											<td>결제금액</td>
											<td>2021-06-28</td>
											<td>배송완료</td>
											<td><button class="btn">상품보러가기</button></td>
										</tr>
										<tr>
											<td>2</td>
											<td>[35%할인] 아르테 4인 천연면피 소가죽 소파 +스툴 추가...</td>
											<td>56,000원</td>
											<td>구매수량</td>
											<td>결제금액</td>
											<td>2021-06-28</td>
											<td>배송완료</td>
											<td><button class="btn">상품보러가기</button></td>
										</tr>
										<tr>
											<td>3</td>
											<td>[35%할인] 아르테 4인 천연면피 소가죽 소파 +스툴 추가...</td>
											<td>56,000원</td>
											<td>구매수량</td>
											<td>결제금액</td>
											<td>2021-06-28</td>
											<td>배송완료</td>
											<td><button class="btn">상품보러가기</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="payment-tab" role="tabpanel"
							aria-labelledby="payment-nav">
							<h4>나의 쿠폰함</h4>
							<p>쿠폰 목록을 넣어주세요.</p>
						</div>
						<div class="tab-pane fade" id="address-tab" role="tabpanel"
							aria-labelledby="address-nav">
							<h4>[내 집들이]</h4>
							<div class="row">
								<div class="col-md-6">
									<h5>거리두기~ 집순이를 위한 드림하우스!</h5>
									<p>등록일: 2021-07-17</p>
									<p>30대 초반 1인 가구입니다. 화학 교사로 근무한 지 거의 10년이 다 돼가네요. 올해 초에 25평
										아파트(방3, 화2)를 매매해서 인테리어 업체를 끼지 않고 반셀프인....</p>
									<button class="btn">업데이트</button>
								</div>
								<div class="col-md-6">
									<h5>서른살, 모던하우스를 꿈꾸며</h5>
									<p>등록일: 2021-07-17</p>
									<p>30대 초반 1인 가구입니다. 화학 교사로 근무한 지 거의 10년이 다 돼가네요. 올해 초에 25평
										아파트(방3, 화2)를 매매해서 인테리어 업체를 끼지 않고 반셀프인....</p>
									<button class="btn">업데이트</button>
								</div>
								<div class="col-md-6">
									<h5>오묘한 달이 뜨는 화학샘의 싱글하우스, 셀프인테리어</h5>
									<p>등록일: 2021-07-17</p>
									<p>30대 초반 1인 가구입니다. 화학 교사로 근무한 지 거의 10년이 다 돼가네요. 올해 초에 25평
										아파트(방3, 화2)를 매매해서 인테리어 업체를 끼지 않고 반셀프인....</p>
									<button class="btn">업데이트</button>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="account-tab" role="tabpanel"
							aria-labelledby="account-nav">
							<h4>내 질문과 답변</h4>
							<p>내 질문과 답변 목록을 넣어주세요.</p>

							<div id="MyquestionList">
								<table>
									<c:forEach var="e" items="${list }" varStatus="i">
										<tr>
											<th rowspan="4" style="padding-top: 30px;"><c:choose>
													<c:when test="${imgList[i.index] eq 'noImage'}">
														<img src="resources/images/no-image-icon.JPG"
															style="width: 120px; height: 100px; padding-right: 20px;">
													</c:when>
													<c:otherwise>
														<img src="resources/uploadFile/${imgList[i.index] }"
															style="width: 120px; height: 100px; padding-right: 20px;">
													</c:otherwise>
												</c:choose></th>
											<td style="padding-top: 30px;">
												<h3>
													<a href="questionDetail?que_num=${e.que_num }">
														${e.que_title } </a>
												</h3>
											</td>
										</tr>
										<tr>
											<td><c:set var="keyword"
													value="${fn:split(e.que_keyword, ',')}" /> <c:forEach
													var="i" items="${keyword }">
													<a href="questionSearch?key=${i}">#${i} </a>
												</c:forEach></td>
										</tr>
										<tr>
											<td>
												<p>${e.que_content }</p>
											</td>
										</tr>
										<tr>
											<td class="td-right-align"><span class="regdate">${e.que_rdate }</span>
												<span class="author"> / ${e.mem_id }</span></td>
										</tr>
										<!-- 추가적인 내용물이 발생시 
										
										<tr>
											<td>
											</td>
										</tr>
										
										-->
									</c:forEach>
								</table>
							</div>

							<div style="height: 80px; padding-top: 20px;">
								<%@include file="MyPageProcess.jsp"%>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="mask"></div>

	<!--Popup Start -->
	<div id="layerbox" class="layerpop" style="width: 55%; height: 80%;">
		<article class="layerpop_area">


			<a href="javascript:popupClose();" class="layerpop_close"
				id="layerbox_close"><img alt="" src="resources/review/img/x.png"></a><br>
			<div class="content">
				<div id="body" align="center">

					<form action="houseinfoinsert" method="post">
						<div>
							<div>
								<ul>
									<li>집의 형식</li>
									<li><input type="radio" name="hinfo_type" value="원룸&오피스텔">원룸&오피스텔
										<input type="radio" name="hinfo_type" value="아파트">아파트
										<input type="radio" name="hinfo_type" value="빌라&연립">빌라&연립
										<input type="radio" name="hinfo_type" value="단독주택">단독주택</li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>집의 크기</li>
									<li><input type="radio" name="hinfo_size" value="10평미만">10평미만
										<input type="radio" name="hinfo_size" value="10평대">10평대
										<input type="radio" name="hinfo_size" value="20평대">20평대
										<input type="radio" name="hinfo_size" value="30평대">30평대
										<input type="radio" name="hinfo_size" value="40평 이상">40평
										이상
									<li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>구성원</li>
									<li><input type="checkbox" id="hinfo_with"
										name="hinfo_with" value="싱글라이프">싱글라이프 <input
										type="checkbox" id="hinfo_with" name="hinfo_with" value="신혼부부">신혼부부
										<input type="checkbox" id="hinfo_with" name="hinfo_with"
										value="아기">아기 <input type="checkbox" id="hinfo_with"
										name="hinfo_with" value="취학 자녀">취학 자녀 <input
										type="checkbox" id="hinfo_with" name="hinfo_with"
										value="성인 자녀">성인 자녀 <input type="checkbox"
										id="hinfo_with" name="hinfo_with" value="부모님">부모님 <input
										type="checkbox" id="hinfo_with" name="hinfo_with" value="반려동물">반려동물
									
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>성향</li>
									<li><input type="radio" name="hinfo_tend" value="미니멀리즘">미니멀리즘
										<input type="radio" name="hinfo_tend" value="실용주의">실용주의
										<input type="radio" name="hinfo_tend" value="맥시멀리즘">맥시멀리즘

									
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>선호도</li>
									<li><input type="checkbox" name="hinfo_favour" value="색상">색상
										<input type="checkbox" name="hinfo_favour" value="디자인">디자인
										<input type="checkbox" name="hinfo_favour" value="내구성">내구성<input
										type="checkbox" name="hinfo_favour" value="안전">안전
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>구매성향</li>
									<li><input type="checkbox" name="hinfo_buytend"
										value="브랜드">브랜드 <input type="checkbox"
										name="hinfo_buytend" value="트렌드">트렌드 <input
										type="checkbox" name="hinfo_buytend" value="퀄리티">퀄리티<input
										type="checkbox" name="hinfo_buytend" value="가성비">가성비
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>스타일</li>
									<li><input type="checkbox" name="hinfo_style" value="모던">모던
										<input type="checkbox" name="hinfo_style" value="미니멀&심플">미니멀&심플
										<input type="checkbox" name="hinfo_style" value="내추럴&북유럽">내추럴&북유럽<input
										type="checkbox" name="hinfo_style" value="빈티지&레트로">빈티지&레트로<input
										type="checkbox" name="hinfo_style" value="클래식&앤틱">클래식&앤틱
										<input type="checkbox" name="hinfo_style" value="프렌치&프로방스">프렌치&프로방스</li>
									<li><input type="checkbox" name="hinfo_style"
										value="러블리&로맨틱">러블리&로맨틱 <input type="checkbox"
										name="hinfo_style" value="인더스트리얼">인더스트리얼<input
										type="checkbox" name="hinfo_style" value="한국&아시아">한국&아시아<input
										type="checkbox" name="hinfo_style" value="유니크&믹스매치">유니크&믹스매치
										<input type="checkbox" name="hinfo_style" value="기타">기타</li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>주활동</li>
									<li><input type="checkbox" name="hinfo_activity"
										value="단순거주">단순거주 <input type="checkbox"
										name="hinfo_activity" value="홈액션(운동,쿠킹)">홈액션(운동,쿠킹)<input
										type="checkbox" name="hinfo_activity" value="홈워크(공부,사무)">홈워크(공부,사무)
										<input type="checkbox" name="hinfo_activity"
										value="문화생활(시청,게임)">홈문화(시청,게임)
								</ul>
								<hr>
							</div>
							<div>

								<hr>
							</div>
							<input type="submit" value="완료">
						</div>
					</form>
				</div>
			</div>
		</article>
	</div>
	<!-- My Account End -->

	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="resources/planb/lib/easing/easing.min.js"></script>
	<script src="resources/planb/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/planb/js/main.js"></script>
	<script>
		$('.house_info_del-btn').click(function() {
			var hinfo_num = $(this).val();
			location.href = "houseinfo_del?hinfo_num=" + hinfo_num
		});
		$('.house_info_add-btn').click(function() {
			popupOpen();
			wrapWindowByMask();
		});
		
		
		

		function wrapWindowByMask() {
			//화면의 높이와 너비를 구한다.
			var maskHeight = $(document).height();
			var maskWidth = $(window).width();

			//문서영역의 크기 
			console.log("document 사이즈:" + $(document).width() + "*"
					+ $(document).height());
			//브라우저에서 문서가 보여지는 영역의 크기
			console.log("window 사이즈:" + $(window).width() + "*"
					+ $(window).height());

			//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
			$('#mask').css({
				'width' : maskWidth,
				'height' : maskHeight
			});
			//애니메이션 효과
			$('#mask').fadeTo("slow", 0.5);
		}
		function popupOpen() {
			$('.layerpop').css("position", "absolute");

			//영역 가운에데 레이어를 뛰우기 위해 위치 계산 
			$('.layerpop').css(
					"top",
					(($(window).height() - $('.layerpop').outerHeight()) / 2)
							+ $(window).scrollTop());
			$('.layerpop').css(
					"left",
					(($(window).width() - $('.layerpop').outerWidth()) / 2)
							+ $(window).scrollLeft());
			// 			$('.layerpop').draggable();
			$('#layerbox').show();
		}
		function popupClose() {
			$('#layerbox').hide();
			$('#mask').hide();
		}

	</script>


</body>
</html>