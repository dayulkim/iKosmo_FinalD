<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />
<style>
ul.myMenu>li {
   display: inline-block;
   width: 115px;
   text-align: center;
   position: relative;
}

select {
   width: 115px;
   padding: 5px;
   border: 1px solid #999;
   font-family: 'Nanumgothic';
   border-radius: 4px;
}
</style>
</head>
<body>
   <div class="container" style="margin-top: 10rem; margin-bottom: 5rem;">

   <!--   ==================       필터링  start             ======================== -->
   <form action="community" method="get">
      <ul class="myMenu" style="padding-left:0rem;">
         <li><select id="hou_order" name="hou_order" >
               <option value="0" hidden>정렬</option>
               <option value="1">최근순</option>
               <option value="2">인기순</option>
               <option value="3">과거순</option>
         </select></li>

         <li><select id="hou_type" name="hou_type">
               <option value="0" hidden>주거형태</option>
               <option value="1">아파트</option>
               <option value="2">원룸&오피스텔</option>
			   <option value="3">빌라&연립</option>
			   <option value="4">단독주택</option>
			   <option value="5">사무공간</option>
			   <option value="6">상업공간</option>
			   <option value="7">기타</option>
         </select></li>

         <li><select id="hou_space" name="hou_space">
               <option value="0" hidden>평수</option>
               <option value="1">10평대</option>
               <option value="2">20평대</option>
               <option value="3">30평대</option>
               <option value="4">40평대</option>
               <option value="5">50평이상</option>
         </select></li>

         <li><select id="hou_pay" name="hou_pay">
               <option value="0" hidden>예산</option>
               <option value="1">백만원이하</option>
               <option value="2">1백만원대</option>
               <option value="3">2백만원대</option>
               <option value="4">3백만원대</option>
               <option value="5">4백만원대</option>
               <option value="6">5백만원대</option>
               <option value="7">5백만이상</option>
         </select></li>

         <li><select id="hou_how" name="hou_how">
               <option value="0" hidden>작업방식</option>
               <option value="1">셀프</option>
               <option value="2">반셀프</option>
               <option value="3">전문가</option>
         </select></li>

         <li><select id="hou_style" name=hou_style>
               <option value="0" hidden>스타일</option>
               <option value="1">내추럴</option>
               <option value="2">모던</option>
               <option value="3">미니멀&심플</option>
               <option value="4">빈티지&레트로</option>
               <option value="5">북유럽</option>
               <option value="6">유니크&믹스매치</option>
               <option value="7">러블리&로맨틱</option>
               <option value="8">클래식&앤틱</option>
               <option value="9">프렌치&프로방스</option>
               <option value="10">한국&아시아</option>
               <option value="11">인더스트리얼</option>
         </select></li>

         <li><select id="hou_tone" name="hou_tone" onchange='change_background_color(this);'>
               <option value="0" hidden>컬러톤</option>
               <option value="1" style="background-color: #fff4e6"></option>
               <option value="2" style="background-color: #ffd3b6"></option>
               <option value="3" style="background-color: #e0a899"></option>
               <option value="4" style="background-color: #604439"></option>
               <option value="5" style="background-color: #e74c3c"></option>
               <option value="6" style="background-color: #f0c75e"></option>
               <option value="7" style="background-color: #a0d6b4"></option>
               <option value="8" style="background-color: #4b86b4"></option>
               <option value="9" style="background-color: #505050"></option>
               <option value="10" style="background-color: #000000"></option>
         </select></li>

         <li><input type="submit" onclick="getParameter()" value="검색하기"
            class="button"></li>
         <li>
			<button type="button" id="hwarm_write_btn" class="btn btn-primary rounded-pill" style="margin-left: 6rem;">
				집들이글 작성하기
			</button>
         </li>

      </ul>
   </form>
   <!--  ==================     필터링   end     ======================== -->

   <!--  ==================     검색결과      start  =======================  -->
      <div class="row" style="margin-top: 4rem;">
         <c:forEach var="listv" items="${list}">
            <div class="col-md-3" style="padding: 1rem;">
				<div style="position: relative; width: 100%; padding-bottom: 70%; overflow: hidden;  ">
                  <a href="hwarm_detail?hou_num=${listv.hou_num}"> <!-- 이미지 클릭시 이동할 상세보기 주소 -->
                     <img src="${listv.hou_thumb}" style="position: absolute; width:100%; border-radius: 1rem;">
                  </a>
                 </div>
                 <h5 style="margin-top: 1rem;">
                    <a href="hwarm_detail?hou_num=${listv.hou_num}" style="color: #2c2f33;"> ${listv.hou_name} </a>
                 </h5>
                 <span><img class="main-hwarm-img" src="resources/uploadFile/profile/${listv.memvo.mem_profile}"></span>
                 <span class="main-caption-price">${listv.memvo.mem_nickname}</span>
                 <p>스크랩 : ${listv.hou_scrap} &nbsp; · &nbsp; 조회수 : ${listv.hou_hit}</p>
            </div>
         </c:forEach>
      </div>

   <!--  ==================     검색결과      end  =======================  -->
   </div>
</body>




<!-- Bootstrap core JS-->
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="resources/js/jquery.min.js"></script>
<!-- owlCarousel JS-->
<script src="resources/js/owlCarousel/owl.carousel.js"></script>
<script src="resources/js/owlCarousel/owl.autoplay.js"></script>
<script>
   var owl = $('.owl-banner');
   owl.owlCarousel({
      items : 1,
      loop : true,
      margin : 10,
      autoplay : true,
      autoplayTimeout : 3000,
      autoplayHoverPause : true
   });

   function change_background_color(o) {
      o.style.backgroundColor = o.children[o.selectedIndex].style.backgroundColor;
   }
   
   // 문서 로딩이 완료되면 셀렉트 박스에 선택된 값으로 바뀌도록 함 
   $(document).ready(function() {
	   let params = (new URL(document.location)).searchParams;
	   let hou_order = parseInt(params.get('hou_order'));
	   $('select#hou_order option[value='+hou_order+']').attr('selected', 'selected');
	   let hou_type = parseInt(params.get('hou_type'));
	   $('select#hou_type option[value='+hou_type+']').attr('selected', 'selected');
	   let hou_space = parseInt(params.get('hou_space'));
	   $('select#hou_space option[value='+hou_space+']').attr('selected', 'selected');
		let hou_pay = parseInt(params.get('hou_pay'));
		$('select#hou_pay option[value='+hou_pay+']').attr('selected', 'selected');
		let hou_how = parseInt(params.get('hou_how'));
		$('select#hou_how option[value='+hou_how+']').attr('selected', 'selected');
		let hou_style = parseInt(params.get('hou_style'));
		$('select#hou_style option[value='+hou_style+']').attr('selected', 'selected');
		let hou_tone = parseInt(params.get('hou_tone'));
		$('select#hou_tone option[value='+hou_tone+']').attr('selected', 'selected');
		let color = $('select#hou_tone option[value='+hou_tone+']').css("background-color");
		$('select#hou_tone').css("background-color", color);
   });
   
   // 집들이글 작성하기 버튼을 누르면 집들이글 작성페이지로 가도록 함
   $('#hwarm_write_btn').click(function(){
	   $(location).attr("href","hwarm_write")
   })
   


</script>
