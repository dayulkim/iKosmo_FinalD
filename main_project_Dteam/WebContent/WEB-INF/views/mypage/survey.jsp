<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Body-->

<!-- 마이페이지 상단 헤더 -->
<div class="page-title-overlap pt-4"
	style="margin-top: 8rem; background-color: #F2F3F4;">
	<div class="container d-lg-flex justify-content-between py-2 py-lg-3">
		<div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
			<nav aria-label="breadcrumb">
				<ol
					class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-start">
					<li class="breadcrumb-item"><a class="text-nowrap"
						href="index.html"><i class="fas fa-address-card opacity-60"></i>&nbsp;&nbsp;마이페이지</a></li>
				</ol>
			</nav>
		</div>
		<div class="order-lg-1 pe-lg-4 text-center text-lg-start">
			<h1 class="h3 mb-0" style="font-family: NanumGothic-Bold;">마이페이지</h1>
		</div>
	</div>
</div>
<div class="container pb-5 mb-2 mb-md-4">
	<div class="row">

		<!-- Sidebar-->
          <aside class="col-lg-4 pt-4 pt-lg-0 pe-xl-5">
            <div class="bg-white rounded-3 shadow-lg pt-1 mb-5 mb-lg-0">
              <div class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
                <div class="d-md-flex align-items-center">
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 3rem;"><img class="rounded-circle" src="${memvo.mem_profile}" alt="${memvo.mem_id}"></div>
                  <div class="ps-md-3">
                    <h3 class="fs-base mb-0">${memvo.mem_name}</h3><span class="text-accent fs-sm">${memvo.mem_id}</span>
                  </div>
                </div><a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0" href="#account-menu" data-bs-toggle="collapse" aria-expanded="false"><i class="fas fa-user-circle"></i>&nbsp;&nbsp;마이페이지 메뉴</a>
              </div>
              <div class="d-lg-block collapse" id="account-menu">
              	<div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY정보</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="mypage"><i class="fas fa-info-circle opacity-60"></i>&nbsp;&nbsp;기본정보</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="survey"><i class="fas fa-poll opacity-60"></i>&nbsp;&nbsp;추가정보</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY쇼핑</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="cart"><i class="fas fa-shopping-cart opacity-60"></i>&nbsp;&nbsp;장바구니</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="orders"><i class="far fa-credit-card opacity-60"></i>&nbsp;&nbsp;구매내역</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY커뮤니티</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="scrapbook"><i class="fas fa-bookmark opacity-60"></i>&nbsp;&nbsp;스크랩북</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="myqna"><i class="fas fa-question-circle opacity-60"></i>&nbsp;&nbsp;나의 질문과 답변</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY친구</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_queue"><i class="fas fa-user-clock opacity-60"></i>&nbsp;&nbsp;친구 대기 목록</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_list"><i class="fas fa-user-friends opacity-60"></i>&nbsp;&nbsp;나의 친구 목록</a></li>
                </ul>
              </div>
            </div>
          </aside>

		<!-- 추가정보 내용 시작  -->
		<section class="col-lg-8">

			<!-- 추가정보 아코디언 시작 -->
			<div class="accordion" id="accordionExample">

				<!-- 아코디언 아이템 1 제목 : 내가 사는 집 1 -->
				<div class="accordion-item">
					<!-- 내가 사는 집 이름 -->
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							<i class="fas fa-home opacity-60"></i>&nbsp;&nbsp;나의 서울 자취방
							&nbsp;&nbsp;&nbsp;<span class="badge rounded-pill bg-success">Main</span>
						</button>
					</h2>
					<!-- 아코디언 아이템 1 내용: 내가 사는 집 1의 상세 내용 -->
					<div class="accordion-collapse collapse show" id="collapseOne"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<!-- Description list alignment -->
							<dl class="row">
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">공간유형</dt>
								<dd class="col-sm-9">원룸</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">평수</dt>
								<dd class="col-sm-9">23평</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">스타일</dt>
								<dd class="col-sm-9">인더스트리얼</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">가족형태</dt>
								<dd class="col-sm-9">싱글라이프</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">집꾸미기 성향</dt>
								<dd class="col-sm-9">미니멀리즘</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">공간유형</dt>
								<dd class="col-sm-9">원룸</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>

			<!-- 추가정보 입력 버튼  -->
			<div class="col-12">
				<div
					class="d-flex flex-wrap justify-content-end align-items-end mt-4">
					<button class="btn btn-accent mt-3 mt-sm-0 house_info_add-btn"
						href="#survey_modal" data-bs-toggle="modal" type="button">추가정보
						입력</button>
				</div>
			</div>
		</section>
	</div>
</div>
</main>


<!-- 추가 정보 입력 Modal -->
<div class="modal" tabindex="-1" role="dialog" id="survey_modal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">추가정보 입력</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body tab-content py-4">
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="hou_type">주거형태</label> <select
							id="hou_type" name="hou_type" class="form-select">
							<option value="0">주거형태</option>
							<option value="1">원룸</option>
							<option value="2">오피스텔</option>
							<option value="3">빌라&연립</option>
							<option value="4">아파트</option>
							<option value="5">단독주택</option>
							<option value="6">협소주택</option>
							<option value="7">상업공간</option>
							<option value="8">사무공간</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">평수</label>
						<div class="input-group">
							<input id="hou_space" name="hou_space" type="number"
								class="form-control"> <span class="input-group-text">평</span>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">스타일</label> <select
							class="form-select" id="checkout-country">
							<option value="0">스타일</option>
							<option value="1">모던</option>
							<option value="2">미니멀&심플</option>
							<option value="3">내추럴&북유럽</option>
							<option value="4">빈티지&레트로</option>
							<option value="5">클래식&앤틱</option>
							<option value="6">프렌치&프로방스</option>
							<option value="7">러블리&로맨틱</option>
							<option value="8">인더스트리얼</option>
							<option value="9">한국&아시아</option>
							<option value="10">유니크&믹스매치</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">가족형태</label> <select
							class="form-select" id="checkout-country">
							<option value="0">가족형태</option>
							<option value="1">싱글라이프</option>
							<option value="2">신혼/부부가 사는 집</option>
							<option value="3">자녀가 있는 집</option>
							<option value="4">부모님과 함께 사는 집</option>
							<option value="5">룸메이트와 함께 사는 집</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="animal">반려동물 유무</label>
						<div id="animal">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="ex-radio-4"
									name="radio2" checked> <label class="form-check-label"
									for="ex-radio-4">없음</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="ex-radio-5"
									name="radio2"> <label class="form-check-label"
									for="ex-radio-5">있음</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">집 꾸미기 성향</label>
						<select class="form-select" id="checkout-country">
							<option value="0">집 꾸미기 성향</option>
							<option value="1">미니멀리즘</option>
							<option value="2">실용주의</option>
							<option value="3">맥시멀리즘</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">구매 성향</label> <select
							class="form-select" id="checkout-country">
							<option value="0">구매 성향</option>
							<option value="1">가성비 중시</option>
							<option value="2">디자인 중시</option>
							<option value="3">브랜드 중시</option>
							<option value="4">퀄리티 중시</option>
							<option value="5">트렌드 중시</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="activity">집에서 주로 하는 활동</label>
						<div id="activity">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-4">
								<label class="form-check-label" for="ex-check-4">수면</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">일</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">공부</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">운동</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">요리</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">홈카페</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">문화생활</label>
							</div>
						</div>
					</div>
				</div>
				<!-- 추가정보 저장하기 버튼 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary d-block w-100">저장하기</button>
				</div>
			</div>
		</div>
	</div>
</div>






<!-- Back To Top Button-->
<a class="btn-scroll-top" href="#top" data-scroll><span
	class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
	class="btn-scroll-top-icon ci-arrow-up"> </i></a>
<!-- Vendor scrits: js libraries and plugins-->
<script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="vendor/simplebar/dist/simplebar.min.js"></script>
<script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
<script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="js/theme.min.js"></script>