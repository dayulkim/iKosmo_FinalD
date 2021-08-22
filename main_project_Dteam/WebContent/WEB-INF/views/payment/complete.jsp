<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="resources/css/theme.css" rel="stylesheet" />
<!-- Body-->
<div class="top-element"></div>
<div class="container pb-5 mb-sm-4">
       <div class="pt-5">
          <div class="card py-3 mt-sm-3">
            <div class="card-body text-center">
              <h2 class="title">결제가 완료 되었습니다.</h2>
              <p class="fs-sm mb-2">꾸며줘!홈즈 의 스토어 서비스를 이용해 주셔서 진심으로 감사 드립니다.</p>
              <p class="fs-sm mb-2">고객님이 결제하신 주문번호는 <span class='pay-pernum'>${pur_num}</span> 입니다.</p>
              <p class="fs-sm">결제완료된 내역은 마이페이지 > 구매내역 에서 확인 하실 수 있습니다.</p>
              <a class="btn btn-primary mt-3" href="orders">구매내역 확인</a>
            </div>
          </div>
     </div>
</div>