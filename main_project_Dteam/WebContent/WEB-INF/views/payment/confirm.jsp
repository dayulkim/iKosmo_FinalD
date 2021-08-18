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
                  href="index.html"><i class="fas fa-address-card opacity-60"></i>&nbsp;&nbsp;����������</a></li>
            </ol>
         </nav>
      </div>
      <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
         <h1 class="h3 mb-0" style="font-family: NANUMSQUARE_ACL;">�����ϱ�</h1>
      </div>
   </div>
</div>

<!-- Shipping address-->
<form action="payment" method="POST">
   <div class="container pb-5 mb-2 mb-md-4">
      <div class="row">
         <section class="col-lg-8">
            <div class="row">
               <h2 class="h6 pt-1 pb-3 mb-3 border-bottom col-sm-5">������ ���</h2>
               <h2 class="h6 pt-1 pb-3 mb-3 border-bottom  col-sm-5 offset-sm-1">�޴�
                  ���</h2>
            </div>
            <div class="row">
               <div class="col-sm-5">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-name">�̸�</label> 
                     <input class="form-control" type="text" id="senderName"
                        value="${member.mem_name }" disabled>
                  </div>
               </div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-ln">�̸�</label> <input
                        class="form-control" type="text" id="rec_name" name="rec_name">
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-5">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-tel" >����ó</label> <input
                        class="form-control" type="text" id="senderTel"
                        value="${member.mem_tel }" disabled>
                  </div>
               </div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-ln">����ó</label> <input
                        class="form-control" type="text" id="rec_tel" name="rec_tel">
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-5">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-addr">�ּ�</label> <input
                        class="form-control" type="text" id="senderAddr"
                        value="${member.mem_addr }" disabled>
                  </div>
               </div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="mb-3">
                     <label class="form-label" for="checkout-ln">�ּ�</label> <input
                        class="form-control" type="text" id="rec_addr" name="rec_addr">
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-5"></div>
               <div class="col-sm-5 offset-sm-1">
                  <div class="form-check-inline" style="margin-right:">
                     <input class="form-check-input" type="checkbox" id="same-address"> 
                     <label class="form-check-label" for="same-address">�ֹ��� ������ ����</label>
                  </div>
               </div>
            </div>

            <!-- ���� ī�� ���� -->
            <div class="row">
               <h2 class="h6 pt-1 pb-3 mb-3 border-bottom col-sm-11 mt-5">ī��
                  ����</h2>
               <div class="col-md-3 mb-3">
                  <label for="validationTooltip04" class="form-label">ī���</label> <select
                     class="form-select" id="rec_card" name="rec_card" required>
                     <option value="">ī��� ����</option>
                     <option value="BCī��">BCī��</option>
                     <option value="����ī��">����ī��</option>
                     <option value="�ϳ�ī��">�ϳ�ī��</option>
                     <option value="�Ե�ī��">�Ե�ī��</option>
                     <option value="�Ｚī��">�Ｚī��</option>
                     <option value="����ī��">����ī��</option>
                  </select>

               </div>
               <div class="col-md-8 mb-3">
                  <label for="validationTooltip01" class="form-label">ī���ȣ</label> <input
                     class="form-control" type="text" id="rec_cardnum"
                     name="rec_cardnum" placeholder="ī���ȣ" required>
               </div>
            </div>

         </section>
         <!-- Sidebar-->
         <aside class="col-lg-4 pt-4 pt-lg-0 ps-xl-5">
            <div class="bg-white rounded-3 shadow-lg p-4 ms-lg-auto">
               <div class="py-2 px-xl-2">
                  <div class="widget mb-3">
                     <h2 class="widget-title text-center">�ֹ� ����</h2>
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
                                 <span class="text-accent me-2">${carvo.productVO.pro_price }��</span><span
                                    class="text-muted">x ${carvo.car_qty }</span>
                              </div>
                           </div>
                        </div>
                     </c:forEach>
                  </div>
                  <ul class="list-unstyled fs-sm pb-2 border-bottom">
                     <li class="d-flex justify-content-between align-items-center"><span
                        class="me-2">�Ѿ�:</span><span class="text-end commaPrice">${totalPrice }��</span></li>
                     <li class="d-flex justify-content-between align-items-center"><span
                        class="me-2">��ۺ�:</span><span class="text-end">2500��</span></li>
                  </ul>
                  <h3 class="fw-normal text-center my-4 commaPrice">${payPrice }��</h3>
                  <!-- ���� ��ǰ ��� ������ ��� pro_num�� �Ѱ��ֱ� -->
                  <input type="hidden" id="pro_num" name="pro_num" value="${pro_num}"> 
                     <input type="hidden" id="fromCart" name="fromCart" value="${fromcart}">
                  <button id="paymentbtn" class="btn btn-outline-primary d-block w-100"
                     type="submit">�����ϱ�</button>
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