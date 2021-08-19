<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link href="resources/css/question/question.css" rel="stylesheet" />
<!-- Body-->
<!-- 회색 타이틀 영역-->
<div class="pt-4" style="margin-top: 8rem; background-color: #F2F3F4;">
	<div class="container justify-content-center py-2 py-lg-3">
		<div class="row">
			<div class="col-lg-12 order-lg-1 pe-lg-4 text-center text-lg-start">
				<h1 class="h3 mb-2" style="font-family: NANUMSQUARE_ACL;"
					align="center">질문과 답변</h1>
				<p align="center">꾸며줘 홈즈! 인테리어 고수들에게 조언을 받아보세요</p>
			</div>
		</div>
		<!-- 검색바 -->
		<c:choose>
			<c:when test="${type eq 2}">
				<form id="questions-header__form" class="sticky-top" action="naquestionList" method="get">
					<div class="row mb-3 mt-4 justify-content-center">
						<div class="col-lg-2">
							<select class="form-select" id="searching" name="search">
								<option value="0">키워드</option>
								<option value="1">제목 + 내용</option>
							</select>
						</div>
						<div class="col-lg-7">
							<input class="form-control" type="text" id="key" name="key"
								placeholder="제목/타이틀, 키워드를 검색해보세요!" required>
						</div>
					</div>
				</form>
				<!-- 키워드 추천 -->
				<div class="row justify-content-center">
					<div class="col-lg-9 widget">
						<c:choose>
							<c:when test="${mkeylist eq null}">
								<c:forEach var="i" items="${keylist}">
									<a href="naquestionList?key=${i }" class="btn-tag me-2 mb-2 btn-light">#${i }</a>&nbsp;
								</c:forEach>	
							</c:when>
							<c:otherwise>
								<c:forEach var="i" items="${mkeylist}">
										<a href="naquestionList?key=${i }" class="btn-tag me-2 mb-2 btn-light">#${i }</a>&nbsp;
								</c:forEach>	
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<!-- 키워드 검색 -->
				<div class="row justify-content-center mb-4">
					<div class="col-lg-9 accordion accordion-flush border-bottom"
						id="accordionFlushExample">
						<!-- Item -->
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="true" aria-controls="flush-collapseOne">+
									키워드 검색</button>
							</h2>
							<div class="accordion-collapse collapse" id="flush-collapseOne"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<th scope="row" style="width: 10%">일반</th>
													<td><a class="que_keyword"
														href="naquestionList?key=리모델링/수리">#리모델링/수리</a> &nbsp; <a
														class="que_keyword" href="naquestionList?key=견적">#견적</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=업체추천">#업체추천</a>
														&nbsp; <a class="que_keyword"
														href="naquestionList?key=셀프인테리어">#셀프인테리어</a> &nbsp; <a
														class="que_keyword" href="naquestionList?key=신혼">#신혼</a>&nbsp;
														<a class="que_keyword" href="naquestionList?key=리폼">#리폼</a>
														&nbsp; <a class="que_keyword"
														href="naquestionList?key=디자인추천">#디자인추천</a> &nbsp;</td>
												</tr>
												<tr>
													<th scope="row" style="width: 10%">가구</th>
													<td><a class="que_keyword"
														href="naquestionList?key=가구배치/이동">#가구배치/이동</a> &nbsp; <a
														class="que_keyword" href="naquestionList?key=수전/싱크대">#수전/싱크대</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=냉장고">#냉장고</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=소파">#소파</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=식탁">#식탁</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=침대">#침대</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=에어컨">#에어컨</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=TV">#TV</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=유리">#유리</a>&nbsp;
														<a class="que_keyword" href="naquestionList?key=기타가구">#기타가구</a>
														&nbsp;</td>
												</tr>
												<tr>
													<th scope="row" style="width: 10%">공간</th>
													<td><a class="que_keyword"
														href="naquestionList?key=단독주택">#단독주택</a> &nbsp; <a
														class="que_keyword" href="naquestionList?key=아파트">#아파트</a> <a
														class="que_keyword" href="naquestionList?key=상가">#상가</a>
														&nbsp; <a class="que_keyword" href="naquestionList?key=원룸">#원룸
													</a> &nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<form id="questions-header__form" class="sticky-top" action="questionList" method="get">
					<div class="row mb-3 mt-4 justify-content-center">
						<div class="col-lg-2">
							<select class="form-select" id="searching" name="search">
								<option value="0">키워드</option>
								<option value="1">제목 + 내용</option>
							</select>
						</div>
						<div class="col-lg-7">
							<input class="form-control" type="text" id="key" name="key"
								placeholder="제목/타이틀, 키워드를 검색해보세요!" required>
						</div>
					</div>
				</form>
				<!-- 키워드 추천 -->
				<div class="row justify-content-center">
					<div class="col-lg-9 widget">
						<c:choose>
							<c:when test="${mkeylist eq null}">
								<c:forEach var="i" items="${keylist}">
									<a href="naquestionList?key=${i }" class="btn-tag me-2 mb-2 btn-light">#${i }</a>&nbsp;
								</c:forEach>	
							</c:when>
							<c:otherwise>
								<c:forEach var="i" items="${mkeylist}">
										<a href="naquestionList?key=${i }" class="btn-tag me-2 mb-2 btn-light">#${i }</a>&nbsp;
								</c:forEach>	
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<!-- 키워드 검색 -->
				<div class="row justify-content-center mb-4">
					<div class="col-lg-9 accordion accordion-flush border-bottom"
						id="accordionFlushExample">
						<!-- Item -->
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="true" aria-controls="flush-collapseOne">+
									키워드 검색</button>
							</h2>
							<div class="accordion-collapse collapse" id="flush-collapseOne"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<th scope="row" style="width: 10%">일반</th>
													<td><a class="que_keyword"
														href="questionList?key=리모델링/수리">#리모델링/수리</a> &nbsp; <a
														class="que_keyword" href="questionList?key=견적">#견적</a>
														&nbsp; <a class="que_keyword" href="questionList?key=업체추천">#업체추천</a>
														&nbsp; <a class="que_keyword"
														href="questionList?key=셀프인테리어">#셀프인테리어</a> &nbsp; <a
														class="que_keyword" href="questionList?key=신혼">#신혼</a>&nbsp;
														<a class="que_keyword" href="questionList?key=리폼">#리폼</a>
														&nbsp; <a class="que_keyword"
														href="questionList?key=디자인추천">#디자인추천</a> &nbsp;</td>
												</tr>
												<tr>
													<th scope="row" style="width: 10%">가구</th>
													<td><a class="que_keyword"
														href="questionList?key=가구배치/이동">#가구배치/이동</a> &nbsp; <a
														class="que_keyword" href="questionList?key=수전/싱크대">#수전/싱크대</a>
														&nbsp; <a class="que_keyword" href="questionList?key=냉장고">#냉장고</a>
														&nbsp; <a class="que_keyword" href="questionList?key=소파">#소파</a>
														&nbsp; <a class="que_keyword" href="questionList?key=식탁">#식탁</a>
														&nbsp; <a class="que_keyword" href="questionList?key=침대">#침대</a>
														&nbsp; <a class="que_keyword" href="questionList?key=에어컨">#에어컨</a>
														&nbsp; <a class="que_keyword" href="questionList?key=TV">#TV</a>
														&nbsp; <a class="que_keyword" href="questionList?key=유리">#유리</a>&nbsp;
														<a class="que_keyword" href="questionList?key=기타가구">#기타가구</a>
														&nbsp;</td>
												</tr>
												<tr>
													<th scope="row" style="width: 10%">공간</th>
													<td><a class="que_keyword"
														href="questionList?key=단독주택">#단독주택</a> &nbsp; <a
														class="que_keyword" href="questionList?key=아파트">#아파트</a> <a
														class="que_keyword" href="questionList?key=상가">#상가</a>
														&nbsp; <a class="que_keyword" href="questionList?key=원룸">#원룸
													</a> &nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</div>

<!-- 흰색 내용 영역 -->
<div class="mt-5" style="background-color: #fff;">
	<div class="container">
		<!-- 정렬, 답변 대기 질문 버튼, 질문하기 버튼 영역 -->
		<div class="row d-flex justify-content-center">
			<div class="col-lg-10 d-flex justify-content-between">
				<div class="col-lg-2">
					<c:choose>
						<c:when test="${type eq 2}">
							<select class="form-select" id="searching3" name="sort"  onchange="anssort()">
								<option value="">정렬</option>
								<option value="0">최신순</option>
								<option value="1">조회수순</option>
							</select>
						</c:when>
						<c:otherwise>
							<select class="form-select" id="searching2" name="sort"  onchange="keysort()">
								<option value="">정렬</option>
								<option value="0">최신순</option>
								<option value="1">조회수순</option>
							</select>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="col-lg-3">
					<c:choose>
						<c:when test="${type eq 2}">
							<button type="button" id="all_que_btn" class="btn btn-info">전체 질문</button>
						</c:when>
						<c:otherwise>
							<button type="button" id="wait_que_btn" class="btn btn-info">답변 대기 질문</button>
						</c:otherwise>
					</c:choose>
					<button type="button" class="btn btn-info" id="questionForm">질문하기</button>
				</div>
			</div>
		</div>
		<!-- 워드 클라우드 들어갈 영역 -->
		<div class="row d-flex justify-content-center mt-3">
			<div class="accordion col-lg-10" id="accordionExample">
			  <!-- Item -->
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="headingOne">
			      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">꾸며줘 홈즈 회원들이 많이 검색한 키워드</button>
			    </h2>
			    <div class="accordion-collapse collapse" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			      <div class="accordion-body"><div id="wordcloud" align="center"></div></div>
			    </div>
			  </div>
			</div>
		</div>
		<!-- 질문 목록 영역 -->
			<!-- 검색결과가 없는 경우 메세지 띄우기 -->
			<c:if test="${msg ne null}">
				<h2>${msg }</h2>
			</c:if>
			<section class="row d-flex justify-content-center align-items-center" style="padding-top: 5rem;">
				<c:forEach var="e" items="${list }" varStatus="status">
					<!-- 질문 Item-->
					<div class="row d-flex align-items-center col-lg-10 justify-content-between border-bottom">
						<div class="col-lg-7 mt-3 mb-3" style="padding-right: 0rem;">
							<div class="d-block d-flex align-items-start text-sm-start ">
								<a class="d-block flex-shrink-0 me-sm-4"
									style="width: 10rem;"> 
									<c:choose>
										<c:when test="${imgList[status.index] eq 'noImage'}">
											<img src="resources/images/no-image-icon.JPG" class="rounded-3">
										</c:when>
										<c:otherwise>
											<img src="resources/uploadFile/${imgList[status.index] }" class="rounded-3">
										</c:otherwise>
									</c:choose>
								</a>
								<div class="pt-2">
									<h4 class="product-title mb-4">
										<a href="questionDetail?que_num=${e.que_num }">${e.que_title }</a>
									</h4>
									<c:set var="keyword" value="${fn:split(e.que_keyword, ',')}"/>
									<c:forEach var="i" items="${keyword }">
										<c:choose>
											<c:when test="${type eq 2}">
												<a href="naquestionList?key=${i}" class="fs-sm text-accent">#${i}</a>	
											</c:when>
											<c:otherwise>
												<a href="questionList?key=${i}" class="fs-sm text-accent">#${i}</a>	
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<div class="fs-6 mt-1">${e.que_content }</div>
									<div class="fs-sm mt-1">${e.que_rdate }&nbsp; ·
										&nbsp;조회수 ${e.que_hit }</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 mt-3 mb-3">
							<div class="d-flex justify-content-end">
								<img src="resources/uploadFile/profile/${pro_list[status.index] }"
									class="img-thumbnail rounded-circle" style="width: 3rem;">
								<div class="d-sm-flex justify-content-end">
									&nbsp;&nbsp;${e.mem_id }</div>
							</div>
							<div class="d-flex justify-content-end mt-3">
								<c:choose>
									<c:when test="${e.que_ans eq 0}">
										<span class="badge bg-success badge-shadow lead p-2">답변 대기 중</span>
									</c:when>
									<c:otherwise>
										<!-- <p><span id="que_ans"></span></p> -->
									</c:otherwise>
								</c:choose> 
								
							</div>
						</div>
					</div>
				</c:forEach>
				<div style="height: 80px; padding-top: 20px;">
					<c:choose>
						<c:when test="${type eq 1}">
							<%@include file="PageProcess2.jsp" %>
						</c:when>
						<c:when test="${type eq 2}">
							<%@include file="PageProcess3.jsp" %>
						</c:when>
						<c:otherwise>
							<%@include file="PageProcess.jsp" %>
						</c:otherwise>
					</c:choose>
				</div>
			</section>
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

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="https://rawgit.com/jasondavies/d3-cloud/master/build/d3.layout.cloud.js" type="text/JavaScript"></script>
<script>

$('#all_que_btn').click(function(){
	location.href = "questionList"
});

$('#wait_que_btn').click(function(){
	location.href = "naquestionList"
});

$('#questionForm').click(function(){
	location.href = "questionForm"
});

	var wordcloudlist = $.ajax({
		type: "GET",
	    url: "quesearchwordcloud",
	    dataType: "json",
	    contentType: "application/json; charset:UTF-8", 
	    async: false
		}).responseText; 
	
	var x = JSON.parse(wordcloudlist);
	console.log("Json데이터 ",x)
 

 var color = d3.scale.linear() //선형적인 스케일로 표준화를 시킨다.
         .domain([0,1,2,3,4,5,6,10,15,20,100])//데이터의 범위, 입력 크기
         .range([0.50]);//표시할 범위, 출력 크기
         //ex)"#ddd", "#ccc", "#bbb", "#aaa", "#999", "#888", "#777", "#666", "#555", "#444", "#333", "#222"
         
 d3.layout.cloud().size([600, 300]) //[width,height]
         .words(x)
         .rotate(0)
         .fontSize(function(d) { return d.mount; })
         .on("end", draw)
         .start();
 
 function draw(words) {
     d3.select("#wordcloud").append("svg")//wordcloud 테이블에 svg를 붙이고
             .attr("width", 650)
             .attr("height", 350)
             .attr("class", "wordcloud")
             .append("g")
             .attr("transform", "translate(320,170)")
             .selectAll("text")
             .data(words)
             .enter().append("text")
             .style("font-size", function(d) { return d.mount + "px"; })
             .style("fill", function(d, i) { return color(i); })
             .attr("transform", function(d) {
                 return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
             })
             .text(function(d) { return d.subject; });
 }
 
 function anssort(){
     const sort = $('#searching3').val();
     var sortv = "sort=" + sort;
     var url = document.location.href;
     var params = {};
       url.replace(/[?&]{1}([^=&#]+)=([^&#]*)/g, function(s, k, v) { params[k] = v; });
       let klist = Object.keys(params);
      let vlist = Object.values(params);
      if(klist[0] == "key"){
         window.location.href = "naquestionList?key=" + vlist[0] + "&" + sortv;
      }else{
         window.location.href = "naquestionList?" + sortv;
      }
      
  }
  
  function keysort(){
     const sort = $('#searching2').val();
     var sortv = "&sort=" + sort;
     var url = document.location.href;
     var params = {};
       url.replace(/[?&]{1}([^=&#]+)=([^&#]*)/g, function(s, k, v) { params[k] = v; });
       let klist = Object.keys(params);
      let vlist = Object.values(params);
      
      if(klist[0] == "key"){
         window.location.href = "questionList?key=" + vlist[0] + "&" + sortv;
      }else{
         window.location.href = "questionList?" + sortv;
      }
  }
  
</script>