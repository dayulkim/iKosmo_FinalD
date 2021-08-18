<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 3rem;"><img class="rounded-circle" src="resources/uploadFile/profile/${memvo.mem_profile}" alt="${memvo.mem_id}"></div>
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
          <!-- Content  -->
			<section class="col-lg-8">
				<div class="row">
					<!-- 친구 신청 회원 -->
					<c:forEach var="list" items="${frilist}">
					<div class="card text-center border-0 shadow m-3" style="width: 28%">
					  <div class="card-body">
					    <img class="d-inline-block rounded-circle mb-3" width="96" src="resources/uploadFile/profile/${list.memvo.mem_profile}" alt="${list.memvo.mem_id}"/>
					    <h6 class="pt-1 mb-1">${list.memvo.mem_name}</h6>
					    <p class="fs-sm text-muted">${list.memvo.mem_nickname}</p>
					    <ul class="fs-sm list-unstyled mb-4">
					      <li class="mb-0">
					        <i class="fas fa-user-friends"></i>
					        <a class="nav-link-style">${list.memvo.mem_id}</a>
					      </li>
					      <li class="mb-0">
					        <i class="fas fa-hourglass-end"></i>
					        <a class="nav-link-style">${list.req_date}</a>
					      </li>
					    </ul>
					    <button type="button" class="acceptBtn btn btn-success btn-shadow rounded-pill">수락하기</button>
					    <input id="req_mem_num" type="hidden" value="${list.mem_num}">
					  </div>
					</div>
					</c:forEach>
					
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
    <script>
    // 수락신청을 누르면 Ajax와 RESTful API로 친구상태 달라지게 하기
  	$('.acceptBtn').click(function(){
  		var req_mem_num = $(this).siblings('input').val();
  		$.ajax({
  			url:"accFriend?req_mem_num="+req_mem_num,
  			type: 'get',
  			// 성공하면 jsondata를 받아온다.
  			success: function(result) {
  				console.log("AJAX result ::"+result);
  				if(result == "success") { // 친구수락 성공 ===========================
  					alert('친구사이가 되었습니다.');
  					location.reload(); // 페이지 새로 고침
  				} else { // 정상적으로 처리되지 않은 경우 =========================
  					alert('친구사이 처리 중 내부 에러가 발생하였습니다.');
  					location.reload(); // 페이지 새로 고침
  				}
  			},
  			error: function(e) {
  				console.log("error:"+e);
  				alert('친구사이 처리 중 ajax 에러가 발생하였습니다.');
  				location.reload(); // 페이지 새로 고침
  			}
  		})
  	});
    </script>