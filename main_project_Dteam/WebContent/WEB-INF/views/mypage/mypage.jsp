<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Body-->
    
      <!-- Page Title-->
      <div class="page-title-overlap pt-4"  style="margin-top: 8rem; background-color:#F2F3F4;">
        <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
          <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-start">
                <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="fas fa-address-card opacity-60"></i>&nbsp;&nbsp;마이페이지</a></li>
              </ol>
            </nav>
          </div>
          <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
            <h1 class="h3 mb-0" style="font-family: NANUMSQUARE_ACL;">마이페이지</h1>
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
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 6.375rem;"><img class="rounded-circle" src="resources/uploadFile/profile/iu.jpg" alt="${memvo.mem_id}"></div>
                  <div class="ps-md-3">
                    <h3 class="fs-base mb-0">이지은</h3><span class="text-accent fs-sm">iu_leejieun</span>
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
          <!-- Content  -->
			<section class="col-lg-8">
			<!-- Shipping address-->
            <h2 class="h6 pt-1 pb-3 mb-3 border-bottom">기본정보 수정</h2>
            <div class="row">
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="nickname">별명</label>
                  <input class="form-control" type="text" id="nickname">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="checkout-phone">전화번호</label>
                  <input class="form-control" type="text" id="checkout-phone">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="password">비밀번호</label>
                  <input class="form-control" type="password" id="password">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="password_check">비밀번호 확인</label>
                  <input class="form-control" type="password" id="password_check">
                </div>
              </div>
            </div>

            <div class="col-12">
               <hr class="mt-3 mb-3">
               <div class="d-flex flex-wrap justify-content-end align-items-end mt-4">
                 <button class="btn btn-success mt-3 mt-sm-0 house_info_add-btn" href="#signin-modal" data-bs-toggle="modal" type="button">회원정보 수정</button>
               </div>
             </div>
			</section>
        </div>
      </div>
    </main>
	
    <!-- Back To Top Button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
    <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>