<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Title-->
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
         <h1 class="h3 mb-0" style="font-family: NANUMSQUARE_ACL;">결제하기</h1>
      </div>
   </div>
</div>

<!-- Shipping address-->
<form action="payment" method="POST">
   <div class="container pb-5 mb-2 mb-md-4">
      <div class="row">
         <section class="col-lg-8">
            <div class="row">
               <h2 class="h6 pt-1 pb-3 mb-3 border-bottom col-sm-5">보내는 사람</h2>
               <h2 class="h6 pt-1 pb-3 mb-3 border-bottom  col-sm-5 offset-sm-1">받는
                  사람</h2>
            </div>
            <div class="row">
               <div class="col-sm-5">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-name">이름</label> 
                     <input class="form-control" type="text" id="senderName"
                        value="${member.mem_name }" disabled>
                  </div>
               </div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-ln">이름</label> <input
                        class="form-control" type="text" id="rec_name" name="rec_name">
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-5">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-tel" >연락처</label> <input
                        class="form-control" type="text" id="senderTel"
                        value="${member.mem_tel }" disabled>
                  </div>
               </div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-ln">연락처</label> <input
                        class="form-control" type="text" id="rec_tel" name="rec_tel">
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-5">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-addr">주소</label> <input
                        class="form-control" type="text" id="senderAddr"
                        value="${member.mem_addr }" disabled>
                  </div>
               </div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-ln">주소</label> <input
                        class="form-control" type="text" id="rec_addr" name="rec_addr">
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-5"></div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="form-check-inline" style="margin-right:">
                     <input class="form-check-input" type="checkbox" id="same-address"> 
                     <label class="form-check-label" for="same-address">주문자 정보와 동일</label>
                  </div>
               </div>
            </div>

            <!-- 결제 카드 정보 -->
            <div class="row">
               <h2 class="h6 pt-1 pb-3 mb-3 border-bottom col-sm-11 mt-5">카드
                  정보</h2>
               <div class="col-md-3 mb-3">
                  <label for="validationTooltip04" class="form-label">카드사</label> <select
                     class="form-select" id="rec_card" name="rec_card" required>
                     <option value="">카드사 선택</option>
                     <option value="BC카드">BC카드</option>
                     <option value="신한카드">신한카드</option>
                     <option value="하나카드">하나카드</option>
                     <option value="롯데카드">롯데카드</option>
                     <option value="삼성카드">삼성카드</option>
                     <option value="현대카드">현대카드</option>
                  </select>

               </div>
               <div class="col-md-8 mb-3">
                  <label for="validationTooltip01" class="form-label">카드번호</label> <input
                     class="form-control" type="text" id="rec_cardnum"
                     name="rec_cardnum" placeholder="카드번호" required>
               </div>
            </div>

         </section>
         <!-- Sidebar-->
         <aside class="col-lg-4 pt-4 pt-lg-0 ps-xl-5">
            <div class="bg-white rounded-3 shadow-lg p-4 ms-lg-auto">
               <div class="py-2 px-xl-2">
                  <div class="widget mb-3">
                     <h2 class="widget-title text-center">주문 정보</h2>
                     <!--  -->
                     <c:forEach var="carvo" items="${carvo_list }">
                        <div class="d-flex align-items-center pb-2 border-bottom">
                           <img
                              src="${carvo.productVO.pro_thumb }"
                              width="64" alt="Product">
                           <div class="ps-2">
                              <h6 class="widget-product-title">
                                 ${carvo.productVO.pro_name }
                              </h6>
                              <div class="widget-product-meta">
                                 <span class="text-accent me-2">${carvo.productVO.pro_price }원</span><span
                                    class="text-muted">x ${carvo.car_qty }</span>
                              </div>
                           </div>
                        </div>
                     </c:forEach>
                  </div>
                  <ul class="list-unstyled fs-sm pb-2 border-bottom">
                     <li class="d-flex justify-content-between align-items-center"><span
                        class="me-2">총액:</span><span class="text-end commaPrice">${totalPrice }원</span></li>
                     <li class="d-flex justify-content-between align-items-center"><span
                        class="me-2">배송비:</span><span class="text-end">2500원</span></li>
                  </ul>
                  <h3 class="fw-normal text-center my-4 commaPrice">${payPrice }원</h3>
                  <!-- 단일 상품 즉시 구매인 경우 pro_num을 넘겨주기 -->
                  <input type="hidden" id="pro_num" name="pro_num" value="${pro_num}"> 
                     <input type="hidden" id="fromCart" name="fromCart" value="${fromcart}">
                  <button id="paymentbtn" class="btn btn-outline-primary d-block w-100"
                     type="submit">결제하기</button>
               </div>
            </div>
         </aside>
      </div>
   </div>
</form>
<script>
$('.commaPrice').each(function() {
    var price = $(this).text()
    $(this).text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));   
 });
 
$('#same-address').change(function(){
	if($('#same-address').is(':checked')) {
		$('#rec_name').val($('#senderName').val());
		$('#rec_tel').val($('#senderTel').val());
		$('#rec_addr').val($('#senderAddr').val());
	} else {
		$('#rec_name').val('');
		$('#rec_tel').val('');
		$('#rec_addr').val('');
	}

	
});
</script>