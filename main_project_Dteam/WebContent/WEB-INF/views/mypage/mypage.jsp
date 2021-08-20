<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />
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
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 6.375rem;"><img class="rounded-circle" src="resources/uploadFile/profile/${memvo.mem_profile}" alt="${memvo.mem_id}"></div>
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
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="mypage"><i class="fas fa-info-circle opacity-60"></i>&nbsp;&nbsp;기본정보 수정</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="survey"><i class="fas fa-poll opacity-60"></i>&nbsp;&nbsp;추가정보 입력</a></li>
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
            <form id="updateForm" name="updateForm" method="post" action="mem_update">
            <div class="row">
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="nickname">별명</label>
                  <input class="form-control" type="text" id="mem_nickname" name="mem_nickname" value="${memvo.mem_nickname}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="checkout-phone">전화번호</label>
                  <input class="form-control" type="text" id="mem_tel" name="mem_tel" value="${memvo.mem_tel}">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="password">현재 비밀번호</label>
                  <input class="form-control" type="password" id="crrPwd" value="${memvo.mem_pwd}">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="password_change">변경 비밀번호</label>
                  <input class="form-control" type="password" id="mem_pwd" name="mem_pwd">
                </div>
              </div>  
              <div class="col-sm-6">
                <div class="mb-3">
                  <label class="form-label" for="addr">주소</label>
                  <input class="form-control" type="text" id="mem_addr" name="mem_addr" value="${memvo.mem_addr}">
                </div>
              </div>
              <div class="image-container col-md-6">
              	<!-- 이미지 -->
              	<img class="img-thumbnail rounded" style="width: 7rem;" src="resources/uploadFile/profile/${memvo.mem_profile}">
              	
				<!-- 파일 업로드 버튼 -->
				<a class="upload-file-btn upload-file-btn-span"	style="background-color: #66b2b2;"> 
					<span class="upload-file-btn-span"><i class="fas fa-file-upload"></i></span>
					<span class="upload-file-btn-span">파일업로드</span>
				</a> 
				<input type="file" class="imgfile" id="mem_profile" name="mem_profile" style="display: none;">
              </div>
            </div>

            <div class="col-12">
               <hr class="mt-3 mb-3">
               <div class="d-flex flex-wrap justify-content-end align-items-end mt-4">
                 <button class="btn btn-success mt-3 mt-sm-0 house_info_add-btn" id="mem_update_btn" href="#signin-modal" data-bs-toggle="modal" type="button">회원정보 수정</button>
               </div>
            </div>
            </form>
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
    
 	// css가 적용되어 있는 a 태그를 눌렀을 때 파일업로드 버튼이 클릭되도록 하는 자바스크립트
    $(document).on("click", ".upload-file-btn", function() {
    	$(this).parent().children('input').click();
    });
 	
 	// 이미지 파일의 변화를 감지하는 스크립트
    document.addEventListener('change',function(e){
    	if(e.target.className == 'imgfile') {
    		readImage(e.target)
    	}
    })

    // 이미지를 업로드했을 때 읽어와서 미리보기 사진을 띄워주는 함수
    function readImage(input) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
    			const previewImage = input.parentNode.querySelectorAll('.preview-image')[0]
                previewImage.src = e.target.result
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
        }
    }
 	
 	$('#mem_update_btn').on("click", function(){
 		var crrPwd = $('#crrPwd').val();
 		var newPwd = $('#mem_pwd').val();
 		var mem_nickname = $('#mem_nickname').val();
 		var mem_tel = $('#mem_tel').val();
 		var mem_addr = $('#mem_addr').val();
 		var mem_profile = $('#mem_profile').val();
 		if (mem_nickname.trim() ==''||mem_tel.trim() == ''||
 				mem_addr.trim() ==''||mem_profile.trim()==''){
 			alert("정보를 입력해 주세요.")
 		}
 		if (crrPwd == newPwd){
 			alert("현재 비밀번호와 동일 합니다. 변경해 주세요.")
 			$('#password_change').focus();
 		}else if(newPwd == " "){
 			alert("신규 비밀번호를 입력해 주시기 바랍니다.")
 		}else{
 			var map = {
 					"mem_nickname" : mem_nickname,
 					"mem_tel" : mem_tel,
 					"mem_pwd" : newPwd,
 					"mem_addr" : mem_addr,
 					"mem_profile" : mem_profile
 			};
 			
 			$.ajax({
 				type: "post",
 				url: "mem_update",
 				dataType: "json",
 				contentType : "application/json",
 				data: JSON.stringify(map),
 				success: function(result){
 					console.log("result ::"+result);
 					alert("정보 수정이 완료 되었습니다.");
 					location.reload(); 
 				},
 				error: function(xhr, status, error){
 					alert("회원정보 수정 중 에러가 발생했습니다."+error);
 					location.reload(); 
 				}
 			});
 		}
 	});
    </script>