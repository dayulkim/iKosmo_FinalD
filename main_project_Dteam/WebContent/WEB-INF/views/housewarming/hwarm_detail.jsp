<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />
        <!-- 메인 영역 -->
        <div class="container" style="margin-top: 10rem;">
            <div class="row">
                <div id="content" class="col-lg-8">
                    <!-- Post content-->
                    <article>
                        <!-- Post header-->
                        <header class="mb-4">
                        	<!-- 집들이글 번호 -->
                        	<input type="hidden" id="hou_num" value="${hwarm.hou_num }">
                            <!-- 집들이글 제목-->
                            <h1 class="fw-bolder mb-1">${hwarm.hou_name }</h1>
							<!-- 집들이 정보 -->
							<div class="card bg-light" style="height: 7rem; margin-top: 2.2rem;">
								<table class="hwarm_info_table">
									<tr class="hwarm_info_table">
										<td width="25%"><i class="fas fa-home"></i> 공간유형:&nbsp;&nbsp;${hwarm.hou_type }</td>
										<td width="25%"><i class="fas fa-ruler-combined"></i> 평수:&nbsp;&nbsp;${hwarm.hou_space }평</td>
										<td width="25%"><i class="fas fa-users"></i> 작업방식:&nbsp;&nbsp;${hwarm.hou_how }</td>
										<td width="25%"><i class="fas fa-wrench"></i> 분야:&nbsp;&nbsp;${hwarm.hou_sector }</td>
									</tr>
									<tr>
										<td width="25%"><i class="fab fa-skype"></i> 스타일:&nbsp;&nbsp;${hwarm.hou_style }</td>
										<td width="25%"><i class="far fa-calendar-alt"></i> 기간:&nbsp;&nbsp;${hwarm.hou_period }주</td>
										<td width="25%"><i class="fas fa-won-sign"></i> 예산:&nbsp;&nbsp;${hwarm.hou_pay }만원</td>
										<td width="25%"><i class="fas fa-palette"></i> 컬러톤:&nbsp;&nbsp;<div style="background-color: ${hwarm.hou_tone }; height: 0.9rem; width: 2rem; display: inline-block;"></div></td>
									</tr>
								</table>
							</div>
                        </header>
                        <!-- 본문 영역 -->
        	            <section class="mb-5" style="padding: 2rem;">
	                        <c:forEach var="e" items="${hdetail }" varStatus="i">
                        		<!-- 집들이글 내용 -->
                        		<p class="fs-5 mb-4" style="padding-top: 4rem;">${e.hwd_content }</p>
                        		<!-- 집들이글 사진 -->
	                         	<figure class="mb-4"><img class="img-fluid rounded" src="resources/uploadFile/hwarm/${e.hwd_photo }" alt="..." style="width:100%"/></figure>
	                         	<!-- 태그된 상품 사진 -->
	                         	<c:forEach var="pro_thumb" items="${e.hwd_tag_photo }" varStatus="i">
	                         		<c:if test="${pro_thumb ne 'none'}">
	                         			<a href="">
	                         				<img class="img-fluid rounded tagged_pro_thumb" src="resources/assets/img/product/${pro_thumb }" alt="..." style="width:20%;"/>
	                         			</a>
	                         		</c:if>
	                         	</c:forEach>
	                        </c:forEach>
                        </section>
                    </article>
                    <!-- 댓글 영역 -->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <!-- 댓글 입력창 -->
                                <form class="mb-4">
                                	<textarea id="comment_textarea" class="form-control" rows="3" placeholder="댓글을 남겨보세요." style="resize: none;"></textarea>
                                </form>
                                <button id="comm_input_btn" style="width: 100%; border-radius: 1rem; border: none; height: 3rem; background-color: #b2d8d8; margin-bottom: 2rem;">등록</button> 
                                <!-- 댓글 목록 -->
                                <div id="comment_list" style="word-wrap: break-word;">
                                	<c:forEach var="comment" items="${hcomment }">
                                		<c:if test="${comment.depth_num == 0}">
	                                		<!-- 부모 댓글 -->
			                                <div class="parent_comment d-flex" id="${comment.comm_num }" style="margin-top: 2rem;">
			                                    <div class="flex-shrink-0"><img class="rounded-circle" style="width: 3rem;" src="resources/uploadFile/profile/${comment.mem_profile }" alt="..." /></div>
			                                    <div class="ms-3">
			                                        <div class="fw-bold">
			                                        	<span>${comment.mem_id }
			                                        		<span class="float-end">
																	&nbsp;&nbsp;<span><a class="reply" style="color: #428bca; text-decoration: none;"><i class="fas fa-reply"></i> Reply</a></span>
															</span>
			                                        	</span>
			                                        </div>
			                                        ${comment.comm_content }
			                                    </div>
			                                </div>
		                                </c:if>
		                                <c:if test="${comment.depth_num == 1}">
		                                	<!-- 자식 댓글 -->
		                        	        <div class="child_comment" style="margin-left: 4rem;">
		                                        <div class="d-flex mt-4">
		                                            <div class="flex-shrink-0"><img class="rounded-circle" style="width: 3rem;" src="resources/uploadFile/profile/${comment.mem_profile }" alt="..." /></div>
		                                            <div class="ms-3">
		                                                <div class="fw-bold">${comment.mem_id }</div><!-- 자식 댓글 작성자 아이디 -->
		                                               ${comment.comm_content }
		                                            </div>
		                                        </div>
		                                    </div>
		                                </c:if>
                                	</c:forEach>
	                            </div>
                            </div>
                        </div>
                    </section>
                </div>
                <!-- 사이드 위젯 -->
                <div class="sidebar" style="margin-top: 5.2rem;">
                    <!-- Search widget-->
                    <div class="card mb-4" style="width: 15rem;">
                        <div class="card-header" style="vertical-align: middle;">
                        	<!-- 왼쪽: 회원 프로필 이미지 -->
                        	<div class="card-header-left" style="width: 30%; float: left">
                        		<img src="resources/uploadFile/profile/${hwarm.mem_profile }" style="width: 4rem; border-radius: 10rem; float:left;">
                        	</div>
                        	<!-- 오른쪽: 회원아이디와 등록일 -->
                        	<div class="card-header-right" style="width: 70%; float: right;">
                        		<p style="line-height: 40%; font-size: 1.5rem; margin-left: 0.8rem; margin-top:1rem;">${hwarm.mem_id }</p>
                        		<p style="line-height: 100%; font-size: 0.8rem; margin-left: 0.8rem;">${hwarm.hou_rdate } </p>
                        	</div>
                       	</div>
                       	<!-- 스크랩, 좋아요, 공유 버튼 -->
                        <div class="card-body" style="text-align: center;">
                       		<button href=""  class="hdetail-btn" id="hdetail-scrap-btn"><i class="far fa-bookmark"></i></button>
                       		<button href="" class="hdetail-btn" id="hdetail-like-btn"><i class="far fa-heart"></i></button>
                       		<button href="" class="hdetail-btn" id="hdetail-share-btn"><i class="far fa-share-square"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <script>
        // 여러 메서드에서 공통적으로 사용하는 집들이 번호
        var hou_num = $('#hou_num').val();
        
     	// DOM 로딩이 완료되면 해당 조회자의 로그인 상태, 좋아요/싫어요를 누른 상태를 받아와서 스타일을 설정한다.
        $(document).ready(function() {
        	 // 집들이글의 번호
        	$.ajaxSetup({cache: false}); // ajax에서는 캐시가 문제이므로 기존 캐시를 지워줌
        	$.ajax({
        		url:"currHwarmStatus?hou_num="+hou_num,
        		// 성공하면 data를 받아오고 실패하면 error를 날리는 콜백함수.
        		type: 'get',
        		success: function(result) {
        			console.log(result);
        			if(result.login=='login') { // 로그인된 상태일 때만 아래 내용 적용===========================
        				var like = JSON.parse(result.like);
        				var scrap = JSON.parse(result.scrap);
        				if(like==1) { // 조회자가 이미 좋아요를 눌렀던 글이라면 -------------------------
        					$('#hdetail-like-btn').html('<i class="fas fa-heart"></i>'); // 채워진 좋아요 버튼으로 변경
        				}
        				if(scrap==1) { // 조회자가 이미 스크랩했던 글이라면 -------------------------
        					$('#hdetail-scrap-btn').html('<i class="fas fa-bookmark"></i>'); // 채워진 스크랩 버튼으로 변경
        				}
        			}
        		},
        		error: function(e) {
        			console.log("error:"+e);
        		}
        	})

        });
     	
     	// 좋아요 버튼을 누르면 Ajax와 RESTful API로 좋아요 추가 또는 취소
      	$('#hdetail-like-btn').click(function(){
      		$.ajaxSetup({cache: false}); // ajax에서는 캐시가 문제이므로 기존 캐시를 지워줌
      		$.ajax({
      			url:"clickHwarmLike?hou_num="+hou_num,
      			type: 'get',
      			// 성공하면 jsondata를 받아온다.
      			success: function(result) {
      				console.log(result);
      				if(result.login=='unlogin') { // 로그인 안 된 상태인 경우 ===========================
      					alert('로그인 후 좋아요를 누르실 수 있습니다.');
      				} else if (result.login=='login') { // 로그인 상태인 경우 =========================
          				if(result.status==1) { // 좋아요를 추가했다면
          					$('#hdetail-like-btn').html('<i class="fas fa-heart"></i>'); // 채워진 좋아요 버튼으로 변경
          				} else { // 좋아요를 취소한 경우
          					$('#hdetail-like-btn').html('<i class="far fa-heart"></i>'); // 비워진 좋아요 버튼으로 변경
          				}
      				}
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
      	});
     	
     	// 스크랩 버튼을 누르면 Ajax와 RESTful API로 스크랩북에 추가 또는 취소
      	$('#hdetail-scrap-btn').click(function(){
      		$.ajaxSetup({cache: false}); // ajax에서는 캐시가 문제이므로 기존 캐시를 지워줌
      		$.ajax({
      			url:"clickHwarmScrap?hou_num="+hou_num,
      			type: 'get',
      			// 성공하면 jsondata를 받아온다.
      			success: function(result) {
      				console.log(result);
      				if(result.login=='unlogin') { // 로그인 안 된 상태인 경우 ===========================
      					alert('로그인 후 좋아요를 누르실 수 있습니다.');
      				} else if (result.login=='login') { // 로그인 상태인 경우 =========================
          				if(result.status==1) { // 스크랩 추가했다면
          					$('#hdetail-scrap-btn').html('<i class="fas fa-bookmark"></i>'); // 채워진 스크랩 버튼으로 변경
          				} else { // 스크랩 취소한 경우
          					$('#hdetail-scrap-btn').html('<i class="far fa-bookmark"></i>'); // 비워진 스크랩 버튼으로 변경
          				}
      				}
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
      	});
     	
     	// 댓글 등록 버튼
     	$('#comm_input_btn').click(function(){
     		comment = $('#comment_textarea').val();
     		console.log("댓글: "+comment);
     		$.ajaxSetup({cache: false}); // ajax에서는 캐시가 문제이므로 기존 캐시를 지워줌
      		$.ajax({
      			url:"insertHouseComment",
      			data: {hou_num:hou_num, comment:encodeURIComponent(comment), depth_num:0},
	            type:'POST',
      			// 성공하면 jsondata를 받아온다.
      			success: function(result) {
      				console.log(result);
      				var comment_html = "";
      				comment_html += "<div class=\"parent_comment d-flex\" id=\""+parseInt(result.comm_num)+"\" style=\"margin-top: 2rem;\">"
      				comment_html += "<div class=\"flex-shrink-0\">"
   					comment_html += "<img class=\"rounded-circle\" src=\"resources/uploadFile/profile/"+result.profile+"\" style=\"width: 3rem;\"/></div>" 
      				comment_html += "<div class=\"ms-3\">"
    				comment_html += "<div class=\"fw-bold\"><span>"+result.mem_id // 부모 댓글 작성자 아이디
    				comment_html += "<span class=\"float-end\">&nbsp;&nbsp;<span><a class=\"reply\" style=\"color: #428bca; text-decoration: none;\">"
    				comment_html += "<i class=\"fas fa-reply\"></i> Reply</a></span></span></span></div>"
    				comment_html += comment // 부모 댓글 내용
    				comment_html += "</div></div>" 		
					$('#comment_list').append(comment_html); // 새로운 댓글 붙이기
    				$('#comment_textarea').val(''); // textarea 비우기 
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
     	});
     	
     	// 댓글 reply 버튼을 눌렀을 때 답글 입력창 띄우기
     	$(document).on("click", ".reply", function(){
     		var reply_html = '<div class="input-group mb-3" style="margin-top: 1rem;">'
     		reply_html += '<input type="text" class="form-control">';
     		reply_html += '<button class="btn btn-outline-secondary reply_btn" type="button" style="border-radius: 0rem; border: 0.5px solid #999999;">등록</button></div>';
     		$(this).parent().parent().parent().parent().parent().parent().after(reply_html);
     		
     	});
     	
     	// reply 등록 버튼을 누르면 자식 댓글 등록하기
     	$(document).on("click", ".reply_btn", function(){
			reply = $(this).siblings('input[type=text]').val(); // 답글 내용 받아오기
			index = $('.parent_comment').index($(this).parent().prev('div')); // 현재가 몇 번째 부모 댓글인지 인덱스 파악
			last_index = $('.parent_comment').index($('.parent_comment').last()); // 가장 마지막 부모 댓글의 인덱스 
			console.log(index + ':' +last_index)
			par_comm_numm = $(this).parent().prev('div').attr('id'); // 부모 댓글의 comm_num
			console.log(par_comm_numm);
			reply_box = $(this).parent(); // 답글 박스
			$.ajaxSetup({cache: false}); // ajax에서는 캐시가 문제이므로 기존 캐시를 지워줌
      		$.ajax({
      			url:"insertHouseComment",
      			data: {hou_num:hou_num, comment:encodeURIComponent(reply), depth_num:1, par_comm_numm: par_comm_numm},
	            type:'POST',
      			// 성공하면 jsondata를 받아온다.
      			success: function(result) {
      				console.log(result);
      				var comment_html = "<div class=\"child_comment\" style=\"margin-left: 4rem;\">";
      				comment_html += "<div class=\"d-flex mt-4\">";
      				comment_html += "<div class=\"flex-shrink-0\">"; 
    				comment_html += "<img class=\"rounded-circle\" style=\"width: 3rem;\" src=\"resources/uploadFile/profile/"+result.profile+"\"/></div>";
    				comment_html += "<div class=\"ms-3\"><div class=\"fw-bold\">"+result.mem_id+"</div>";
    				comment_html += reply
    				comment_html += "</div></div></div>"
    				if (index==last_index) {
    					$('#comment_list').append(comment_html); // 마지막 부모 댓글 뒤에 자식 댓글 추가
    				} else {
    					$('.parent_comment').eq(index+1).before(comment_html); // 다음 부모 댓글 요소 앞에 자식 댓글 추가
    				}
   					reply_box.remove(); // 답글 등록이 되면 답글 박스 닫기
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
     	});


        </script>