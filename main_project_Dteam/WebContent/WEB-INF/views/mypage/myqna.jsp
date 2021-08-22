<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
				<div class="accordion" id="accordionExample">
				
				  <!-- Item -->
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="headingOne">
				      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">나의 질문</button>
				    </h2>
				    <div class="accordion-collapse collapse show" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
					    	<!-- Item-->
					    	<c:forEach var="e" items="${list }" varStatus="i">
				            <div class="d-sm-flex justify-content-between mt-lg-4 mb-4 pb-3 pb-sm-2 border-bottom">
				              <div>
								<table>
										<tr>
											<th rowspan="4">
												<c:choose>
													<c:when test="${imgList[i.index] eq 'noImage'}">
														<img src="resources/images/no-image-icon.JPG" style="width: 120px; height: 100px; padding-right: 20px;">
													</c:when>
													<c:otherwise>
														<img src="resources/uploadFile/${imgList[i.index] }" style="width: 10rem; margin-right: 3rem;">
													</c:otherwise>
												</c:choose>
											</th>
											<td>
												<h5>
													<a href="questionDetail?que_num=${e.que_num }" style="color: #333333 !important; font-weight: 700;">
													${e.que_title }
													</a>
												</h5>
												<c:choose>
													<c:when test="${e.que_ans eq 0}">
														<span id="que_ans" class="badge bg-success lead p-1 mb-2">답변 대기 중</span>
													</c:when>
													<c:otherwise>
														<span id="que_ans" class="badge bg-info lead p-1 mb-2">답변 완료</span>
													</c:otherwise>
												</c:choose> 
												<br>
											</td>
										</tr>
										<tr>
											<td>
											<c:set var="keyword" value="${fn:split(e.que_keyword, ',')}"/>
													<c:forEach var="i" items="${keyword }">
											<a href="questionList?key=${i}" style="color: #3b5998 !important">#${i}</a>	
												</c:forEach>		
											</td>
										</tr>
										<tr>
											<td>
												<p>${e.que_content }</p>
											</td>
										</tr>
										<tr>
											<td class="td-right-align">
												<span class="regdate">${e.que_rdate }</span>	
												<span class="author"> / ${e.mem_id }</span>	
												<span class="author"> /조회수 ${e.que_hit }</span>	
											</td>
										</tr>
								</table>
							</div>
				            </div>
				            </c:forEach>
				            <!-- Item-->
				            <div class="d-sm-flex justify-content-between my-4 pb-3 pb-sm-2 border-bottom">
				              <div style="height: 80px; padding-top: 20px;margin: auto;">
								<%@include file="MyPageProcess.jsp" %>
							</div>
				            </div>
					    </div>
				    </div>
				  </div>
				
				  <!-- Item -->
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="headingTwo">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">나의 답변</button>
				    </h2>
				    <div class="accordion-collapse collapse" id="collapseTwo" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
					    <div class="accordion-body">
					    	<!-- Item-->
					    	<c:forEach var="e" items="${anslist }" varStatus="i">
					    	<h6 class="mt-2">질문 번호 : ${e.que_num }</h6>
					    	<h6>질문 제목 : ${tlist[i.index]}</h6>
				            <div class="d-sm-flex justify-content-between mt-lg-4 border-bottom">
				              <div class="d-block d-sm-flex align-items-start text-center text-sm-start">
				               <div id="comments">
						              <!-- comment-->
						           		<div class="d-flex align-items-start mb-3">
						           		<i class="far fa-smile-wink"></i>
							              <div class="ps-3">
							                <div class="d-flex justify-content-between align-items-center mb-2 p-1">
							                  <h6 class="fs-md mb-0">${e.ans_id }</h6>
							                </div>
							                <p class="fs-md mb-1">${e.ans_content }<br>
							                <c:choose>
												<c:when test="${e.ans_photo eq null}">
						
												</c:when>
												<c:otherwise>
													<c:set var="rmfile" value="${fn:split(e.ans_photo, ',')}" />
													<c:forEach var="file" items="${rmfile }">
														<img src="resources/uploadFile/${file }" />
													</c:forEach>
												</c:otherwise>
											</c:choose>
							                </p>
							                <span class="fs-ms text-muted"><i class="far fa-clock"></i>${e.ans_rdate }</span>
							              </div>
							            </div>
						        </div>
				            </div>
					    </div>
					    </c:forEach>
					    <div class="d-sm-flex justify-content-between my-4 pb-3 pb-sm-2 border-bottom">
			              <div style="height: 80px; padding-top: 20px;margin: auto;">
							<%@include file="MyPageProcess2.jsp"%>
						</div>
	            	</div>
				    </div>
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