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
                <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="fas fa-address-card opacity-60"></i>&nbsp;&nbsp;����������</a></li>
              </ol>
            </nav>
          </div>
          <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
            <h1 class="h3 mb-0" style="font-family: NanumGothic-Bold;">����������</h1>
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
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 6.375rem;"><img class="rounded-circle" src="resources/uploadFile/profile/iu.jpg" alt="Susan Gardner"></div>
                  <div class="ps-md-3">
                    <h3 class="fs-base mb-0">������</h3><span class="text-accent fs-sm">iu_leejieun</span>
                  </div>
                </div><a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0" href="#account-menu" data-bs-toggle="collapse" aria-expanded="false"><i class="fas fa-user-circle"></i>&nbsp;&nbsp;���������� �޴�</a>
              </div>
              <div class="d-lg-block collapse" id="account-menu">
              	<div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY����</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="mypage"><i class="fas fa-info-circle opacity-60"></i>&nbsp;&nbsp;�⺻����</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="survey"><i class="fas fa-poll opacity-60"></i>&nbsp;&nbsp;�߰�����</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY����</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="cart"><i class="fas fa-shopping-cart opacity-60"></i>&nbsp;&nbsp;��ٱ���</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="orders"><i class="far fa-credit-card opacity-60"></i>&nbsp;&nbsp;���ų���</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MYĿ�´�Ƽ</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="scrapbook"><i class="fas fa-bookmark opacity-60"></i>&nbsp;&nbsp;��ũ����</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="myqna"><i class="fas fa-question-circle opacity-60"></i>&nbsp;&nbsp;���� ������ �亯</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MYģ��</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_queue"><i class="fas fa-user-clock opacity-60"></i>&nbsp;&nbsp;ģ�� ��� ���</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_list"><i class="fas fa-user-friends opacity-60"></i>&nbsp;&nbsp;���� ģ�� ���</a></li>
                </ul>
              </div>
            </div>
          </aside>
          <!-- Content  -->
			<section class="col-lg-8">
            <!-- Wishlist-->
            <!-- Item-->
            <c:forEach var="cvo" items="${clist}">
	            <div class="d-sm-flex justify-content-between mt-lg-4 mb-4 pb-3 pb-sm-2 border-bottom">
	              <div class="d-block d-sm-flex align-items-start text-center text-sm-start"><a class="d-block flex-shrink-0 mx-auto me-sm-4" href="shop-single-v1.html" style="width: 10rem;">
	              <img src="${cvo.productVO.pro_thumb }" alt="Product"></a>
	                <div class="pt-2">
	                  <h3 class="product-title fs-base mb-2"><a href="detail?pro_num=${cvo.pro_num }">${cvo.productVO.pro_name }</a></h3>
	                  <div class="fs-sm"><span class="text-muted me-2">����:</span>${cvo.car_qty }</div>
	                  <div class="fs-lg text-accent pt-2 commaPrice">${cvo.productVO.pro_price }��</div>
	                </div>
	              </div>
	              <div class="pt-2 ps-sm-3 mx-auto mx-sm-0 text-center">
	              	<input type="hidden" class="car_num" value="${cvo.car_num }">
	                <button class="btn btn-outline-danger btn-sm delBtn" type="button"><i class="fas fa-trash-alt"></i>&nbsp;&nbsp;����</button>
	              </div>
	            </div>
            </c:forEach>
            <div class="d-flex justify-content-end">
            	<button type="button" class="btn btn-primary" style="margin-top: 2rem;" id="paymentBtn">�����ϱ�</button>
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
    
    $('.commaPrice').each(function() {
        var price = $(this).text()
        $(this).text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));   
     });
     
    	$('.delBtn').click(function(){
    		var car_num = $(this).siblings('input').val();
      		$.ajax({
      			url:"delcart?car_num="+car_num,
      			type: 'get',
      			// �����ϸ� jsondata�� �޾ƿ´�.
      			success: function(result) {
      				console.log("AJAX result ::"+result);
      				if(result == "success") { // ģ������ ���� ===========================
      					alert('�����Ǿ����ϴ�.');
      					location.reload(); // ������ ���� ��ħ
      				} else { // ���������� ó������ ���� ��� =========================
      					alert('���� ó�� �� ������ �߻��Ͽ����ϴ�.');
      					location.reload(); // ������ ���� ��ħ
      				}
      			},
      			error: function(e) {
      				console.log("error:"+e);
      				alert('ģ������ ó�� �� ajax ������ �߻��Ͽ����ϴ�.');
      				location.reload(); // ������ ���� ��ħ
      			}
      		})
    	});
    	
    	$('#paymentBtn').click(function(){
    		location.href = "confirm?fromCart=1"
    	});
    </script>