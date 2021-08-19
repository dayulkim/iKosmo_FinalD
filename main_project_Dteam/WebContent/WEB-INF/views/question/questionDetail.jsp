<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>question Detail</title>
<!-- 커뮤니티 댓글  -->

<link rel="stylesheet" href="resources/detail/css/style.css"
	type="text/css">
<link rel="stylesheet"
	href="//static.fmkorea.com/modules/board/skins/sketchbook5_elkha/css/board.css?c=1625228155"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="//static.fmkorea.com/widgets/fmkorea_best/style_pc.css?c=1612601066"
	type="text/css" media="all" />
	
<!-- 커뮤니티 댓글 end -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
	
<style type="text/css">
.tabs {
	margin: 0;
	padding: 0;
}

.tabs li {
	list-style-type: none;
	display: inline-block;
	background: #c7c7c7;
	padding: 3px 10px;
	color: #fff;
	cursor: pointer;
}

.tabs li:hover {
	color: #fff;
	background: #5294de;
}

.tabs li.active {
	color: #fff;
	background: #5294de;
}

.panel {
	display: none;
	background: #fff;
	border: 1px solid #c7c7c7;
	padding: 30px;
}

.panel.active {
	display: block;
}

.comment_div{
	display: inline-block;
	padding: 5px;
	border: solid 1px #ccc;
	background-color: #f4f4f4;
	font-size: 9pt; 
}

.comment{
	background-color: transparent;
	border: 0;
	font-size: 9pt;
}

#queBtn{
	margin-left: 550px;
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	background-color:#33bdef;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
}

#queBtn:hover {
	background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
	background-color:#019ad2;
}
#queBtn:active {
	position:relative;
	top:1px;
}


<!-- 파일 업로드 -->

.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
  display: inline-block;
  padding: .5em .75em;
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}

/* imaged preview */
.filebox .upload-display {
  margin-bottom: 5px;
}

@media(min-width: 768px) {
  .filebox .upload-display {
    display: inline-block;
    margin-right: 5px;
    margin-bottom: 0;
  }
}

.filebox .upload-thumb-wrap {
  display: inline-block;
  width: 54px;
  padding: 2px;
  vertical-align: middle;
  border: 1px solid #ddd;
  border-radius: 5px;
  background-color: #fff;
}

.filebox .upload-display img {
  display: block;
  max-width: 100%;
  width: 100% \9;
  height: auto;
}

.filebox.bs3-primary label {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
</style>


<!-- 오늘의 집 UI  - 내용물 정리는 하지 않은 상태 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap&subset=korean"
	rel="stylesheet">
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/assets/v3/layout/application_react-790a108e6a9b26136290c8bea25696fec3e4701284512f9eed313b7dbb352615.css" />
<script
	src="https://static.ohou.se/assets/v3/layouts/navigation_stub-2afc6570f26c12358127eb3d1d8b54fc3aa1df1f1a041c239fcf21d9abcade4a.js"></script>

<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/16-aae64295.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/17-308f2ccf.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/App-3a3e77d9.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/38-2a9f5ede.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/containers-CommentFeed-CommentFeedProvider-416a965c.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/dist/css/templates-Content-QnAFeed-QnADetail-056f58ff.chunk.css" />

<!-- 오늘의 집 UI  end-->

</head>
<body>
	<br>

	<!-- 오늘의 집 활용 -->
	<section>
	<main class="qna-detail">
	<article class="qna-detail__container container">
		<section class="qna-detail__container__content">
			<header class="qna-detail__content__header-container">
				<div class="qna-detail__content__header-top">
					<a class="qna-detail__content__header-subtitle" href="/questions">
						질문과 답변 </a>
				</div>
				<h1 class="qna-detail__content__header-title">${quevo.que_title }</h1>
				<hr>
				<address
					class="qna-detail-author qna-detail__content__header-author-section">
					<a class="qna-detail-author__profile-link" href="/users/13219120">
						<div class="qna-detail-author__profile-link__image">
							<!-- 프로필 이미지 넣을곳 -->
							<img src="resources/uploadFile/profile/${que_profile }" class="img-thumbnail rounded-circle" style="width: 3rem;">
						</div>
						<div class="qna-detail-author__profile-link__summary">
							<div class="qna-detail-author__profile-link__summary-section">
								<span class="qna-detail-author__profile-link__summary-nickname">${quevo.mem_id }</span>
							</div>
							<div
								class="qna-detail-author__profile-link__summary-introduction">
							</div>
						</div>
					</a>
					<div><!-- 팔로우 버튼 일단 주석처리
					<a class="button button--color-gray-4 button--size-30 button--shape-4">팔로우</a>
					 -->
					</div>
				</address>
			</header>
			<section class="qna-detail__content__body">
				<p>${quevo.que_content }</p>
				<p>
				<!-- 일단 혹시몰라서 멀티 업로드에도 적용되는 상태로 놔둠 -->
				<c:choose>
					<c:when test="${quevo.que_photo eq null}">
					
					</c:when>
					<c:otherwise>
						<c:set var="rmfile" value="${fn:split(quevo.que_photo, ',')}" />
						<c:forEach var="file" items="${rmfile }">
							<img src="resources/uploadFile/${file }" />
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<!---------------------------------------- -->
				</p>
			</section>
			<footer class="qna-detail__footer">
			<hr>
				<p>
					<c:set var="keyword" value="${fn:split(quevo.que_keyword, ',')}" />
					<c:forEach var="e" items="${keyword }">
						<a href="questionSearch?key=${e}">#${e}</a>
					</c:forEach>
				</p>
				<aside class="qna-detail-actions qna-detail__footer__action-group">
					<div class="drop-down qna-detail-actions__wrapper">
						<button
							class="button button--color-gray-14-inverted button--size-30 button--shape-round qna-detail-actions__action"
							type="button">
							<svg class="qna-detail-actions__action__icon" aria-label="공유하기"
								width="28" height="28" viewBox="0 0 28 28"
								preserveAspectRatio="xMidYMid meet">
							  <g fill="none" fill-rule="evenodd">
							  <g transform="translate(-124 -11)">
							  <path d="M124 11h28v28h-28z"></path>
							  <g stroke="#757575" transform="translate(126 12)">
							  <circle cx="5" cy="13" r="4.5"></circle>
							  <circle cx="19" cy="21" r="4.5"></circle>
							  <circle cx="19" cy="5" r="4.5"></circle>
							  <path stroke-linecap="square" d="M8.5 10.5l6-4M8.5 15.5l6 4"></path>
							  </g></g></g></svg>
							<span class="qna-detail-actions__action__label">공유</span>
						</button>
					</div>
				</aside>
				<div class="qna-detail__footer__metadata">
					<p>${quevo.que_rdate }</p>
				</div>
			</footer>
			<section class="qna-detail__comment-section">
				<section class="comment-feed">
					<h1 class="comment-feed__header">
						댓글
						&nbsp; <span class="comment-feed__header__count"><!-- 댓글 숫자 넣을 거면 여기다. --></span>
					</h1>
					
					<!-- 로그인시  -->
					
					<div class="cmt_editor" style="margin-top:0px; ">
						<label for="editor_3769368131" class="cmt_editor_tl fl">
						<strong style="padding-left:5px;">댓글 쓰기</strong>
						</label>
					
						<form action="addans" method="post" class="bd_wrt cmt_wrt clear" enctype="multipart/form-data">
						<input type="hidden" id="que_num" name="que_num" value="${quevo.que_num }"> 
						<input type="hidden" id="sessionID" name="sessionID" value="${sessionScope.sessionID }">		
						<div class="simple_wrt">	
						<div class="text">	
						<textarea id="content" name="content" cols="50" rows="4" style="background: rgb(255, 255, 255); overflow: hidden; min-height: 4em; height: 72px; width: 600px; margin: 0px 11px 0px 3px;" placeholder="댓글을 남겨주세요!"></textarea>
						</div>	
						<input type="submit" value="등록" class="bd_btn keyup_alt" style="top: 30px;">	
						</div>
						<div class="filebox bs3-primary preview-image">
			              <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
			
			              <label for="input_file">업로드</label> 
			              <input type="file" id="input_file" name="mfile" class="upload-hidden"> 
			            </div>
						</form>
						</div>
					
					<!-- 비로그인시 -->
					<div class="cmt_editor" style="margin-top:0px; ">
					<label for="editor_3769198738" class="cmt_editor_tl fl">
					<strong style="padding-left:5px;">댓글 쓰기</strong>
					</label>
					<div class="bd_wrt clear">	
					<div class="simple_wrt">	
					<div class="text">			
					<a class="cmt_disable bd_login" href="#">댓글 작성 하시려면 로그인 해주세요. 로그인 하시겠습니까?</a>			
					</div>	
					<input type="button" value="등록" disabled="disabled" class="bd_btn">	
					</div>
					</div>
					</div>
					
					
					<!-- 댓글 목록  -->
					<div class="fdb_lst_wrp  ">
						<div id="3756539495_comment" class="fdb_lst clear  cmt_wrt_btm">
							<div id="cmtPosition" aria-live="polite">
								<div class="fdb_tag bg_f_f9 css3pie">
									<h5>댓글 목록</h5>
								</div>
								<ul class="fdb_lst_ul ">

									<c:forEach var="e" items="${list }">
										<li id="" class="fdb_itm clear comment_best  comment-2">
											<div class="meta">
												<a href="#popup_menu_area" class="member_890373595"
													onclick="return false"> <img
													src="resources/images/no-image-icon.JPG"
													style="vertical-align: middle; margin-right: 3px; width: 25px; height: 25px;">
													${e.ans_id }
												</a> <span class="date">${e.ans_rdate }</span>
											</div>
											<div>
												<div class="comment_3756542670_890373595 xe_content">
													${e.ans_content }
													<br>
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

												</div>
											</div>
										</li>
									</c:forEach>

								</ul>
							</div>
							<%@include file="detailpageProcess.jsp"%>
						</div>
					</div>
					
				</section>
			</section>
		</section>
		<nav class="qna-detail__container__sidebar">
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="false" data-sticky-ignore="false"
				data-direction="top" data-offset="131" class="sticky-container"
				style="position: sticky; top: 131px;">
				<div class="sticky-child" style="position: relative">
					<div class="qna-detail__container__sidebar__content">
						<address
							class="qna-detail-author qna-detail__container__sidebar__author">
							<a class="qna-detail-author__profile-link" href="/users/13219120">
							<div class="qna-detail-author__profile-link__image">
									<!-- 계정 이미지 -->
								</div>
								<div class="qna-detail-author__profile-link__summary">
									<div class="qna-detail-author__profile-link__summary-section">
										<span
											class="qna-detail-author__profile-link__summary-nickname">${quevo.mem_id }</span>
									</div>
									<div
										class="qna-detail-author__profile-link__summary-introduction"></div>
								</div></a>
							<div>
							<!--  
								<a class="button button--color-gray-4 button--size-30 button--shape-4">팔로우</a>
							-->
							</div>
						</address>
						<aside class="qna-detail-actions question__sidebar__actions">
							<div class="drop-down qna-detail-actions__wrapper">
								<!-- 공유하기 -->
								<a href=""
							onclick="window.open(url_combine_fb, '', 'scrollbars=no, width=600, height=600'); return false;">
							<img src="resources/images/logo/facebook.png" title="페이스북으로 공유하기"
							class="sharebtn_custom" style="width: 32px;">
						</a>
						<!-- 트위터 공유 버튼 -->
						<a href=""
							onclick="window.open(url_combine_tw, '', 'scrollbars=no, width=600, height=600'); return false;">
							<img src="resources/images/logo/twitter.png" title="트위터로 공유하기"
							class="sharebtn_custom" style="width: 32px;">
						</a>
						<!-- 카카오 스토리 공유 버튼 -->
						<a href=""
							onclick="window.open(url_combine_ks, '', 'scrollbars=no, width=600, height=600'); return false;">
							<img src="resources/images/logo/kakao.png" title="카카오스토리로 공유하기"
							class="sharebtn_custom" style="width: 32px;">
						</a>
						<!-- 네이버 공유 버튼 -->
						<a href=""
							onclick="window.open(url_combine_naver, '', 'scrollbars=no, width=600, height=600'); return false;">
							<img src="resources/images/logo/naver.png" title="네이버로 공유하기"
							class="sharebtn_custom" style="width: 32px;">
						</a>
							</div>
						</aside>
						<aside
							class="qna-detail-aside qna-detail__container__sidebar__aside">
							<div class="qna-detail-aside__section">
								<!-- 빈공간 -->
								<div>
								<h5>인테리어 궁금한 것 물어보세요!</h5>
								<button type="button" id="queBtn" onclick="location='questionForm'">질문하러 가기</button>
								<input type="button" value="질문하기" id="queBtn" onclick="location='questionForm'">
								</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</nav>
	</article>
	<div data-sticky-enabled="false" data-sticky-disabled="false"
		data-sticky-always="false" data-sticky-ignore="false"
		data-direction="bottom" data-offset="0"
		class="sticky-container qna-detail__bottom-sticky-strip"
		style="position: sticky; bottom: 0px;">
		<div class="sticky-child" style="position: relative">
			<div class="qna-detail__bottom-sticky-strip__inner">
				<aside
					class="qna-detail-actions qna-detail__bottom-sticky-strip__action-list">
					<div class="drop-down qna-detail-actions__wrapper">
						<button
							class="button button--color-gray-14-inverted button--size-30 button--shape-4 qna-detail-actions__action qna-detail-actions__action--minimal"
							type="button">
							
						</button>
					</div>
				</aside>
			</div>
		</div>
	</div>
	</main>
	</section>


	<script type="text/javascript" async>
		$(document).ready(function() {
			$(".tabs li").on("click", function(e) {
				var $contents = $(this).closest("#contents");
				$contents.find(".tabs li.active").removeClass("active");
				$(this).addClass("active");
				$contents.find(".panel.active").hide();
				$contents.find(".panel.active").removeClass("active");
				var panelToShow = $(this).data("panel");
				$("#" + panelToShow).show();
				$("#" + panelToShow).addClass("active");
			});
		});

		function addFile(){
			var code = parseInt(document.getElementById("code").value,"10");
			console.log(code);
			var html = "";
			for(var i=0; i<code; i++){
				html +="<input type=\"file\" name=\"mfile\" id=\"mfile\"><br>";
			
			}
			document.getElementById("uploadtarget").innerHTML= html;
		}

		function addClass(tag, className) {
			tag.className += " " + className;

		}

		var url_default_ks = "https://story.kakao.com/share?url=";
		var url_default_fb = "https://www.facebook.com/sharer/sharer.php?u=";
		var url_default_tw_txt = "https://twitter.com/intent/tweet?text=";
		var url_default_tw_url = "&url=";
		var url_default_band = "http://band.us/plugin/share?body=";
		var url_route_band = "&route=";
		var url_default_naver = "http://share.naver.com/web/shareView.nhn?url=";
		var title_default_naver = "&title=";
		var url_this_page = location.href;
		var title_this_page = document.title;
		var url_combine_ks = url_default_ks + url_this_page;
		var url_combine_fb = url_default_fb + url_this_page;
		var url_combine_tw = url_default_tw_txt + document.title
				+ url_default_tw_url + url_this_page;
		var url_combine_naver = url_default_naver + encodeURI(url_this_page)
				+ title_default_naver + encodeURI(title_this_page);
		
		
		$(document).ready(function(){
			   var fileTarget = $('.filebox .upload-hidden');

			    fileTarget.on('change', function(){
			        if(window.FileReader){
			            // 파일명 추출
			            var filename = $(this)[0].files[0].name;
			        } 

			        else {
			            // Old IE 파일명 추출
			            var filename = $(this).val().split('/').pop().split('\\').pop();
			        };

			        $(this).siblings('.upload-name').val(filename);
			    });

			    //preview image 
			    var imgTarget = $('.preview-image .upload-hidden');

			    imgTarget.on('change', function(){
			        var parent = $(this).parent();
			        parent.children('.upload-display').remove();

			        if(window.FileReader){
			            //image 파일만
			            if (!$(this)[0].files[0].type.match(/image\//)) return;
			            
			            var reader = new FileReader();
			            reader.onload = function(e){
			                var src = e.target.result;
			                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
			            }
			            reader.readAsDataURL($(this)[0].files[0]);
			        }

			        else {
			            $(this)[0].select();
			            $(this)[0].blur();
			            var imgSrc = document.selection.createRange().text;
			            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

			            var img = $(this).siblings('.upload-display').find('img');
			            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
			        }
			    });
			});
	</script>

</body>
</html>