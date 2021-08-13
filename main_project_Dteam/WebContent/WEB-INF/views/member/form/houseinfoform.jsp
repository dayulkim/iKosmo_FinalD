<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
/*  폼 css */
[class*="u-border-"].u-border-no-top {
	border-top-width: 0;
	border-top-style: none;
}

[class*="u-border-"].u-border-no-right {
	border-right-width: 0;
	border-right-style: none;
}

[class*="u-border-"].u-border-no-left {
	border-left-width: 0;
	border-left-style: none;
}

.u-form-control-hidden {
	display: none !important;
}

#reviewForm checkbox {
	font-family: 'NanumGothic-Regular';
	font-size: 16px;
}

#reviewForm p {
	font-family: 'NanumGothic-Regular';
	font-size: 16px;
}

#reviewForm table tr td>input.u-input-1 {
	height: 50px;
	width: 500px;
	font-size: 15px;
	font-family: 'NanumGothic-Regular';
}

#reviewForm table tr td>textarea.u-input-2 {
	height: 250px;
	width: 500px;
	resize: none;
	font-size: 15px;
	font-family: 'NanumGothic-Regular';
}

#reviewForm input+label {
	display: inline-block;
	position: relative;
	padding-left: 10px;
	font-size: 13px;
	font-family: 'NanumGothic-Regular';
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
</head>

<body>
	<button onClick="javascript:goDetail('테스트');">팝업</button>

	<!-- 팝업뜰때 배경 -->
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


	<script>
		// 	LayerPopUp 스크립트구역--------------------------------------------------------------------------
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

		function goDetail() {
			/*팝업 오픈전 별도의 작업이 있을경우 구현*/
			popupOpen(); //레이어 팝업창 오픈 
			wrapWindowByMask(); //화면 마스크 효과 
		}
	</script>
</body>
</html>
