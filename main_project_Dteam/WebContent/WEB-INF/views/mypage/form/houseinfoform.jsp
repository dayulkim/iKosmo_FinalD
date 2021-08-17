<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<style>
.layer_title {
	text-align: center;
}

#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 200;
	background-color: #000000;
	display: none;
}

.layerpop {
	overflow: auto;
	position: absolute;
	display: none;
	z-index: 201;
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


<!-- 팝업뜰때 배경 -->
<div id="mask"></div>

<!--Popup Start -->
<div id="layerbox" class="layerpop" style="width: 55%; height: 80%;">
	<article class="layerpop_area">

		<div class="layer_title">집 정보 추가</div>
		<a href="#" class="layerpop_close"
			id="layerbox_close"><img alt="" src="resources/review/img/x.png"></a><br>
		<div class="content">
			<div id="body" align="center">

				<form action="houseinfoinsert" method="post">
					<div class="all_question">


						<div class="quest">
							<br>
							<h5>집의 형식</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-1"
									name="hinfo_type" value="원룸&오피스텔"> <label
									class="form-check-label" for="type_radio-1">원룸&오피스텔</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-2"
									name="hinfo_type" value="아파트"> <label
									class="form-check-label" for="type_radio-2">아파트</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-3"
									name="hinfo_type" value="빌라&연립"> <label
									class="form-check-label" for="type_radio-3">빌라&연립</label>

							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-4"
									name="hinfo_type" value="단독주택"> <label
									class="form-check-label" for="type_radio-4">단독주택</label>

							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>집의 크기</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-1"
									name="hinfo_size" value="10평미만"> <label
									class="form-check-label" for="size_radio-1">10평미만</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-2"
									name="hinfo_size" value="10평대"> <label
									class="form-check-label" for="size_radio-2">10평대</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-3"
									name="hinfo_size" value="20평대"> <label
									class="form-check-label" for="size_radio-3">20평대</label>

							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-4"
									name="hinfo_size" value="30평대"> <label
									class="form-check-label" for="size_radio-4">30평대</label>

							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-5"
									name="hinfo_size" value="40평이상"> <label
									class="form-check-label" for="size_radio-5">40평이상</label>

							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>구성원</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-1" name="hinfo_with" value="싱글라이프"> <label
									class="form-check-label" for="with-check-1">싱글라이프</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-2" name="hinfo_with" value="신혼부부"> <label
									class="form-check-label" for="with-check-2">신혼부부</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-3" name="hinfo_with" value="아기"> <label
									class="form-check-label" for="with-check-3">아기</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-4" name="hinfo_with" value="취학 자녀"> <label
									class="form-check-label" for="with-check-4">취학 자녀</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-5" name="hinfo_with" value="성인 자녀"> <label
									class="form-check-label" for="with-check-5">성인 자녀</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-6" name="hinfo_with" value="부모님"> <label
									class="form-check-label" for="with-check-6">부모님</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-7" name="hinfo_with" value="반려동물"> <label
									class="form-check-label" for="with-check-7">반려동물</label>
							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>성향</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="tend_radio-1"
									name="hinfo_tend" value="미니멀리즘"> <label
									class="form-check-label" for="tend_radio-1">미니멀리즘</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="tend_radio-2"
									name="hinfo_tend" value="실용주의"> <label
									class="form-check-label" for="tend_radio-2">실용주의</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="tend_radio-3"
									name="hinfo_tend" value="맥시멀리즘"> <label
									class="form-check-label" for="tend_radio-3">맥시멀리즘</label>

							</div>


						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>선호도</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-1" name="hinfo_favour" value="색상"> <label
									class="form-check-label" for="favour-check-1">색상</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-2" name="hinfo_favour" value="디자인"> <label
									class="form-check-label" for="favour-check-2">디자인</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-3" name="hinfo_favour" value="내구성"> <label
									class="form-check-label" for="favour-check-3">내구성</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-4" name="hinfo_favour" value="안전"> <label
									class="form-check-label" for="favour-check-4">안전</label>
							</div>


						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>구매 성향</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-1" name="hinfo_buytend" value="브랜드">
								<label class="form-check-label" for="buytend-check-1">브랜드</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-2" name="hinfo_buytend" value="트렌드">
								<label class="form-check-label" for="buytend-check-2">트렌드</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-3" name="hinfo_buytend" value="퀄리티">
								<label class="form-check-label" for="buytend-check-3">퀄리티</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-4" name="hinfo_buytend" value="가성비">
								<label class="form-check-label" for="buytend-check-4">가성비</label>
							</div>


						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>스타일</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-1" name="hinfo_style" value="모던"> <label
									class="form-check-label" for="style-check-1">모던</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-2" name="hinfo_style" value="미니멀&심플"> <label
									class="form-check-label" for="style-check-2">미니멀&심플</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-3" name="hinfo_style" value="내추럴&북유럽">
								<label class="form-check-label" for="style-check-3">내추럴&북유럽</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-4" name="hinfo_style" value="빈티지&레트로">
								<label class="form-check-label" for="style-check-4">빈티지&레트로</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-5" name="hinfo_style" value="클래식&앤틱"> <label
									class="form-check-label" for="style-check-5">클래식&앤틱</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-6" name="hinfo_style" value="프렌치&프로방스">
								<label class="form-check-label" for="style-check-6">프렌치&프로방스</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-7" name="hinfo_style" value="러블리&로맨틱">
								<label class="form-check-label" for="style-check-7">러블리&로맨틱</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-8" name="hinfo_style" value="인더스트리얼"> <label
									class="form-check-label" for="style-check-8">인더스트리얼</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-9" name="hinfo_style" value="한국&아시아"> <label
									class="form-check-label" for="style-check-9">한국&아시아</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-10" name="hinfo_style" value="유니크&믹스매치">
								<label class="form-check-label" for="style-check-10">유니크&믹스매치</label>
							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>주활동</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-1" name="hinfo_activity" value="단순거주">
								<label class="form-check-label" for="activity-check-1">단순거주</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-2" name="hinfo_activity" value="홈액션(운동&쿠킹)">
								<label class="form-check-label" for="activity-check-2">홈액션(운동&쿠킹)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-3" name="hinfo_activity" value="홈워크(공부&사무)">
								<label class="form-check-label" for="activity-check-3">홈워크(공부&사무)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-4" name="hinfo_activity" value="문화생활(시청&게임)">
								<label class="form-check-label" for="activity-check-4">문화생활(시청&게임)</label>
							</div>
						</div>
						<br>
						<hr>

						<input type="submit" value="완료"> <input type="reset"
							value="리셋">
					</div>
				</form>
			</div>
		</div>
	</article>
</div>



<script>
	$('.house_info_add-btn').click(function() {
		popupOpen();
		wrapWindowByMask();
	});
	
	$('#layerbox_close').click(function() {
		$('#layerbox').hide();
		$('#mask').hide();
	});
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

</script>

