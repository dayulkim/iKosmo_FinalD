<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="top-element">
상품번호는 
${provo.pro_num } 입니다. CSS적용은 아직 하지 못했습니다,.. 흑흑  <br/>
</div>


<!-- 첫번째 영역 -->
<div style="border: 1px solid lightblue; float: left; width: 65%; padding:10px;">

<img src="${provo.pro_thumb }"
alt="대표 이미지" width="50%" height="30%" align="center" border="0">


<%-- ${provo.pro_thumb } --%>
<%-- ${provo.pro_photo } <!-- 슬라이드로 여러사진 넘기게 --> --%>
</div>

<!-- 두번째 영역 -->
<div style="border: 1px solid lightgreen; float: right; width: 30%; padding:10px;">
상품명 : ${provo.pro_name } <br/>
상품가격 : ${provo.pro_price } <br/>
배송비 : ${provo.pro_delivery }원  <br/> <!-- +"원", 숫자가 0일땐, "0원"? "무료배송"? -->
배송예상기간 : ${provo.pro_period }일  <br/>
상품등록일 : ${provo.pro_rdate }  <br/>
<br/> <br/> <br/>
판매자 고유번호 : ${provo.sel_num }  <br/> <!-- 이건 출력안하고 값넘기기만 확인 -->
<br/> <br/> <br/> <br/> 
</div>

<div>
<img src="${provo.pro_detail }"
alt="상세 이미지" width="50%" height="50%" align="center" border="0">

<br/> 
</div>
<!-- https://welbu.co.kr/product/detail.html?product_no=285&gclid=CjwKCAjw87SHBhBiEiwAukSeUYhUPRVTiN5DmZAwhijScfm7ipcwUHTOqTRRediTBw6rm6g-3iGwbBoCLCsQAvD_BwE -->