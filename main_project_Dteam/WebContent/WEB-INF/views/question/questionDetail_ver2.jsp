<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<style>
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
	<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="resources/detail/css/style.css"
		type="text/css">
	<link rel="stylesheet"
		href="//static.fmkorea.com/modules/board/skins/sketchbook5_elkha/css/board.css?c=1625228155"
		type="text/css" media="all" />
	<link rel="stylesheet"
		href="//static.fmkorea.com/widgets/fmkorea_best/style_pc.css?c=1612601066"
		type="text/css" media="all" />
    <!-- SEO Meta Tags-->
    <meta name="description" content="Cartzilla - Bootstrap E-commerce Template">
    <meta name="keywords" content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap, html5, css3, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#fe6a6a" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendor Styles including: Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="resources/vendor/simplebar/dist/simplebar.min.css"/>
    <link rel="stylesheet" media="screen" href="resources/vendor/tiny-slider/dist/tiny-slider.css"/>
    <link rel="stylesheet" media="screen" href="resources/vendor/lightgallery.js/dist/css/lightgallery.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="resources/css/theme.min.css">
  </head>
  <!-- Body-->
  <body class="handheld-toolbar-enabled">
  	<section>
    <main class="page-wrapper">
      <!-- Page Title (Light)-->
      <div class="bg-secondary py-4">
        <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
          <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-start">
                <li><a class="text-nowrap" href="home"><i class="fas fa-home"></i> Home </a></li>
                <li><i class="fas fa-chevron-right"></i><a href="questionList"> 질문과 답변 </a>
                </li>
                <li><i class="fas fa-chevron-right"></i> 질문 게시글 </li>
              </ol>
            </nav>
          </div>
          <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
            <h1 class="h3 mb-0">${quevo.que_title }</h1>
          </div>
        </div>
      </div>
      <div class="container pb-5">
        <div class="row justify-content-center pt-5 mt-md-2">
          <div class="col-lg-9">
            <!-- Post meta-->
            <div class="d-flex flex-wrap justify-content-between align-items-center pb-4 mt-n1">
              <div class="d-flex align-items-center fs-sm mb-2"><a class="blog-entry-meta-link" href="#">
                  <i class="far fa-smile"></i> ${quevo.mem_id }</a><span class="blog-entry-meta-divider"></span><a class="blog-entry-meta-link" href="#">${quevo.que_rdate }</a></div>
              <div class="fs-sm mb-2"><a class="blog-entry-meta-link text-nowrap" href="#comments" data-scroll><i class="far fa-comment-dots"></i>${total }</a></div>
            </div>
            <!-- Post content-->
            <p>${quevo.que_content }</p>
            <!-- Gallery-->
            <div class="gallery row pb-2">
            	<c:choose>
					<c:when test="${quevo.que_photo eq null}">
					
					</c:when>
					<c:otherwise>
						<c:set var="rmfile" value="${fn:split(quevo.que_photo, ',')}" />
						<c:forEach var="file" items="${rmfile }">
							<img src="resources/uploadFile/${file }" />
				              <div class="col-sm-4">
				              <a class="gallery-item rounded-3 mb-grid-gutter" href="resources/uploadFile/${file }" data-bs-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;Gallery image caption #2&lt;/h6&gt;">
				              <img src="resources/uploadFile/${file }">
				              <span class="gallery-item-caption"></span>
				              </a>
				              </div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
            </div>
            <!-- Post tags + sharing-->
            <div class="d-flex flex-wrap justify-content-between pt-2 pb-4 mb-1">
              <div class="mt-3 me-3">
              <c:set var="keyword" value="${fn:split(quevo.que_keyword, ',')}" />
				<c:forEach var="e" items="${keyword }">
					<a class="btn-tag me-2 mb-2" href="questionSearch?key=${e}">#${e}</a>
				</c:forEach>
              <!-- <a class="btn-tag mb-2" href="#">#printed tshirts</a> -->
              </div>
              <div class="mt-3">
              <span class="d-inline-block align-middle text-muted fs-sm me-3 mt-1 mb-2">Share post:</span>
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
            </div>
            <!-- Post navigation-->
            <nav class="entry-navigation" aria-label="Post navigation"><a class="entry-navigation-link" href="questionDetail?que_num=${quevo.que_num -1}" data-bs-toggle="popover" data-bs-placement="top" data-bs-trigger="hover" data-bs-html="true" data-bs-content="&lt;div class=&quot;d-flex align-items-center&quot;&gt;&lt;img src=&quot;img/blog/navigation/01.jpg&quot; width=&quot;60&quot; class=&quot;rounded&quot; alt=&quot;Post thumb&quot;&gt;&lt;div class=&quot;ps-3&quot;&gt;&lt;h6 class=&quot;fs-sm fw-semibold mb-0&quot;&gt;How to choose perfect shoes for running&lt;/h6&gt;&lt;span class=&quot;d-block fs-xs text-muted&quot;&gt;by Susan Mayer&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;"><i class="fas fa-chevron-left"></i><span class="d-none d-sm-inline">Prev post</span></a><a class="entry-navigation-link" href="questionList"><span class="d-none d-sm-inline">All posts</span></a><a class="entry-navigation-link" href="questionDetail?que_num=${quevo.que_num +1}" data-bs-toggle="popover" data-bs-placement="top" data-bs-trigger="hover" data-bs-html="true" data-bs-content="&lt;div class=&quot;d-flex align-items-center&quot;&gt;&lt;img src=&quot;img/blog/navigation/02.jpg&quot; width=&quot;60&quot; class=&quot;rounded&quot; alt=&quot;Post thumb&quot;&gt;&lt;div class=&quot;ps-3&quot;&gt;&lt;h6  class=&quot;fs-sm fw-semibold mb-0&quot;&gt;Factors behind smart watches popularity&lt;/h6&gt;&lt;span class=&quot;d-block fs-xs text-muted&quot;&gt;by Logan Coleman&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;"><span class="d-none d-sm-inline">Next post</span><i class="fas fa-chevron-right"></i></a></nav>
              <div class="card border-0 shadow mt-2 mb-4">
                <div class="card-body">
                  <div class="d-flex align-items-start"><i class="far fa-grin-beam"></i> ${quevo.mem_id }
                    <form action="addans" method="post" class="bd_wrt cmt_wrt clear" enctype="multipart/form-data">
						<input type="hidden" id="que_num" name="que_num" value="${quevo.que_num }"> 
						<input type="hidden" id="sessionID" name="sessionID" value="${sessionScope.sessionID }">		
						<div class="simple_wrt">	
						<div class="text">	
						<textarea id="content" name="content" cols="50" rows="4" style="background: rgb(255, 255, 255); overflow: hidden; min-height: 4em; height: 72px; width: 600px; margin: 0px 11px 0px 3px;" placeholder="댓글을 남겨주세요!"></textarea>
						<input type="submit" value="등록" class="bd_btn keyup_alt">
						</div>		
						</div>
						<div class="filebox bs3-primary preview-image">
			              <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
			
			              <label for="input_file">업로드</label> 
			              <input type="file" id="input_file" name="mfile" class="upload-hidden"> 
			            </div>
						</form>
                  </div>
                </div>
              </div>
            <!-- Comments-->
            <div class="pt-2 mt-5" id="comments">
              <h2 class="h4">Comments<span class="badge bg-secondary fs-sm text-body align-middle ms-2">${total }</span></h2>
              <!-- comment-->
              <c:forEach var="e" items="${list }">
           		<div class="d-flex align-items-start py-4">
           		<i class="far fa-smile-wink"></i>
	              <div class="ps-3">
	                <div class="d-flex justify-content-between align-items-center mb-2">
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
				</c:forEach>
				<!--
              <div class="d-flex align-items-start py-4 border-bottom"><img class="rounded-circle" src="resources/images/no-image-icon.JPG" width="50" alt="Laura Willson">
                <div class="ps-3">
                  <div class="d-flex justify-content-between align-items-center mb-2">
                    <h6 class="fs-md mb-0">${e.ans_id }</h6>
                     	대댓글 기능 일단 지움
                    	<a class="nav-link-style fs-sm fw-medium" href="#"><i class="ci-reply me-2"></i>Reply</a>
                  </div>
                  <p class="fs-md mb-1">${e.ans_content }</p><span class="fs-ms text-muted"><i class="ci-time align-middle me-2"></i>${e.ans_rdate }</span>
                  <!-- comment reply-->
                  <!-- 
                  <div class="d-flex align-items-start border-top pt-4 mt-4"><img class="rounded-circle" src="img/testimonials/03.jpg" width="50" alt="Michael Davis">
                    <div class="ps-3">
                      <div class="d-flex justify-content-between align-items-center mb-2">
                        <h6 class="fs-md mb-0">Michael Davis</h6>
                      </div>
                      <p class="fs-md mb-1">Egestas sed sed risus pretium quam vulputate dignissim. A diam sollicitudin tempor id eu nisl. Ut porttitor leo a diam. Bibendum at varius vel pharetra vel turpis nunc.</p><span class="fs-ms text-muted"><i class="ci-time align-middle me-2"></i>Sep 13, 2019</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          -->
          <%@include file="detailpageProcess.jsp"%>
        </div>
      </div>
    </main>
    </section>
  </body>
  
   <!-- Vendor scrits: js libraries and plugins-->
    <script src="resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="resources/vendor/tiny-slider/dist/min/tiny-slider.js"></script>
    <script src="resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="resources/vendor/lightgallery.js/dist/js/lightgallery.min.js"></script>
    <script src="resources/vendor/lg-fullscreen.js/dist/lg-fullscreen.min.js"></script>
    <script src="resources/vendor/lg-zoom.js/dist/lg-zoom.min.js"></script>
    <!-- Main theme script-->
    <script src="resources/js/theme.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script>
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
</html>