<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<style>
/
* 파일업로드 css  재윤님 파일 업로드여러분이 사용하시면 css에 올려두어도 될거같습니다* /
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
	clip: rect(0, 0, 0, 0);
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

@media ( min-width : 768px) {
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
/* 파일 업로드 css  */
.layer_title-review {
	text-align: center;
}

#mask-review {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 99;
	background-color: #000000;
	display: none;
}

.layerpop-review {
	overflow: auto;
	position: absolute;
	display: none;
	z-index: 100;
	border: 2px solid #ccc;
	background: #fff;
}

.layerpop_area-review .layer_title-review {
	padding: 10px 10px 10px 10px;
	border: 0px solid #aaaaaa;
	background: #f1f1f1;
	color: #3eb0ce;
	font-size: 1.3em;
	font-weight: bold;
	line-height: 24px;
}

.layerpop_area-review .layerpop_close-review {
	width: 30px;
	display: block;
	position: absolute;
	top: 10px;
	right: 10px;
}

.layerpop_area-review .content-review {
	width: 95%;
	margin: 2%;
	color: #828282;
}
/*  폼 css */
[class*="u-border-"].u-border-no-top {
	border-top-width: 0;
	border-top-style: none;
}

[class*="u-border-"].u-border-no-right {
	border-right-width: 0;
	border-right-style: none;
}

[class*="u-border-"].u-border-no-left {
	border-left-width: 0;
	border-left-style: none;
}

.u-form-control-hidden {
	display: none !important;
}

#reviewForm checkbox {
	font-family: 'NanumGothic-Regular';
	font-size: 16px;
}

#reviewForm p {
	font-family: 'NanumGothic-Regular';
	font-size: 16px;
}

#reviewForm table tr td>input.u-input-1 {
	height: 50px;
	width: 500px;
	font-size: 15px;
	font-family: 'NanumGothic-Regular';
}

#reviewForm table tr td>textarea.u-input-2 {
	height: 250px;
	width: 500px;
	resize: none;
	font-size: 15px;
	font-family: 'NanumGothic-Regular';
}

#reviewForm input+label {
	display: inline-block;
	position: relative;
	padding-left: 10px;
	font-size: 13px;
	font-family: 'NanumGothic-Regular';
}

.star {
	display: inline-block;
	width: 60px;
	height: 60px;
	cursor: pointer;
}

.star_one {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
		no-repeat 0 0;
	background-size: 60px;
	margin-right: -3px;
}

.star.on {
	background-image:
		url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

	<!-- 팝업뜰때 배경 -->
	<div id="mask-review"></div>

	<!--Popup Start -->
	<div id="layerbox-review" class="layerpop-review" style="width: 55%; height: 80%;">
		<article class="layerpop_area-review">
			<div class="layer_title-review">상품평</div>

			<a href="#" class="layerpop_close-review"
				id="layerbox_close-review"><img alt="" src="resources/review/img/x.png"></a><br>
			<div class="content-review">
				<div id="body-review" align="center">

					<form action="reviewinsert" method="post"
						enctype="multipart/form-data">
						<input type="hidden" id="pro_num" name="pro_num" value="">

						<div id="reviewForm">
							<table>

								<tr>
									<td><textarea placeholder="내용을 입력하세요" id="rev_content"
											name="rev_content"
											class=" u-border-black u-border-no-left u-border-no-right u-border-no-top   u-input-2"
											required="required"></textarea></td>
								</tr>

								<tr>
									<td><div class="filebox bs3-primary preview-image">
											<input class="upload-name" value="파일선택" disabled="disabled"
												style="width: 200px;"> <label for="mfile">업로드</label>
											<input type="file" id="mfile" name="mfile"
												class="upload-hidden">
										</div>
										<hr></td>
								</tr>

								<tr>
									<th>
										<div class="star-box0">

											<div id="star_target0">
												<p>전체 평점</p>
											</div>

											<input type="hidden" id="rev_star" name="rev_star">
											<div class="span0" align="center"
												onclick="autoFinder('전체 평점')">
												<span class="star star_one" title="1"></span> <span
													class="star star_one" title="2"></span> <span
													class="star star_one" title="3"></span> <span
													class="star star_one" title="4"></span> <span
													class="star star_one" title="5"></span>
											</div>
											<hr>
										</div>
									</th>
								</tr>
								<tr>
									<th>
										<div class="star-box1">

											<div id="star_target1">
												<p>색상 평점</p>
											</div>
											<input type="hidden" id="rev_color" name="rev_color">
											<div class="span1" align="center"
												onclick="autoFinder('색상 평점')">
												<span class="star star_one" title="1"></span> <span
													class="star star_one" title="2"></span> <span
													class="star star_one" title="3"></span> <span
													class="star star_one" title="4"></span> <span
													class="star star_one" title="5"></span>
											</div>
											<hr>
										</div>

									</th>
								</tr>
								<tr>
									<th>
										<div class="star-box2">

											<div id="star_target2">
												<p>배송 평점</p>
											</div>
											<input type="hidden" id="rev_period" name="rev_period">
											<div class="span1" align="center"
												onclick=" autoFinder('배송 평점')">
												<span class="star star_one" title="1"></span> <span
													class="star star_one" title="2"></span> <span
													class="star star_one" title="3"></span> <span
													class="star star_one" title="4"></span> <span
													class="star star_one" title="5"></span>
											</div>
											<hr>
										</div>

									</th>
								</tr>





								<tr>
									<th colspan="2"><br> <input type="submit" value="작성">
										<input type="reset" value="취소"></th>
								</tr>
							</table>

						</div>
					</form>
				</div>

			</div>
		</article>
	</div>
	<script>
	$('#review-add-btn').click(function() {
		var num = $(this).val();
		$('#pro_num').val(num);
		popupOpenReview();
		wrapWindowByMaskReview();
	});
	$('#layerbox_close-review').click(function() {
		$('#layerbox-review').hide();
		$('#mask-review').hide();
	});
		// 	LayerPopUp 스크립트구역--------------------------------------------------------------------------
		function wrapWindowByMaskReview() {
			//화면의 높이와 너비를 구한다.
			var maskHeight = $(document).height();
			var maskWidth = $(window).width();

			//문서영역의 크기 
			console.log("document 사이즈:" + $(document).width() + "*"
					+ $(document).height());
			//브라우저에서 문서가 보여지는 영역의 크기
			console.log("window 사이즈:" + $(window).width() + "*"
					+ $(window).height());

			//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
			$('#mask-review').css({
				'width' : maskWidth,
				'height' : maskHeight
			});
			//애니메이션 효과
			$('#mask-review').fadeTo("slow", 0.5);
		}
		function popupOpenReview() {
			$('.layerpop-review').css("position", "absolute");

			//영역 가운에데 레이어를 뛰우기 위해 위치 계산 
			$('.layerpop-review').css(
					"top",
					(($(window).height() - $('.layerpop-review').outerHeight()) / 2)
							+ $(window).scrollTop());
			$('.layerpop-review').css(
					"left",
					(($(window).width() - $('.layerpop-review').outerWidth()) / 2)
							+ $(window).scrollLeft());
			// 			$('.layerpop').draggable();
			$('#layerbox-review').show();
		}



		//	 	LayerPopUp 스크립트구역--------------------------------------------------------------------------

		
		
		//별점----------------------------------------------------------------------------------------------------
function autoFinder(category) {

		var divs = document.querySelectorAll('div');
		divs.forEach(function(div) {
			div.addEventListener('click', function(event) {
								event.stopPropagation();
			});
			let defined=event.currentTarget  //최하위 div  (클릭하는 span의 바로위  부모div)
			let star_score=event.target.title   //span타겟 점수
			let star_box=defined.parentNode//클릭한 span 의 위의 모든 부모 div
			let star_target=star_box.children[0].id
			if(event.target.className.match("star_one")){
				starMaker(defined , star_score , star_box , star_target,category);
			}
// 			console.log("2:"+defined); //div span ->event.currentTarget 
// 			console.log("3:"+star_score); // span타겟 title 숫자(수치) ->event.target.title
// 			console.log("4:"+star_box); //star-box0 div (어느 위치의 별점 div인지)
// 			console.log("5:"+star_target); //star_target0 -div  평점div
// 			console.log("6:"+event.target.className); // span 클래스의 star star-one 지목

		});
		};
		function starMaker(defined , star_score , star_box , star_target , category) {
			
			
			 document.getElementById(star_target).innerHTML = "<p>"+category+" : "+star_score + "점</p>";
			 let rating = star_box.children[1].id;
			 console.log(rating)
			 //rev_period //rev_color//rev_star 히든으로 보내는 rating점수의 id
			 //	document.getElementById(rating).value = star_score;	
 		    for(let e of defined.children){ 
	 					e.classList.remove('on');
					}
			for(var i=0;i<star_score;i++){
						addClass(defined.children[i],"on");
					}
					document.getElementById(rating).value = star_score;	
		};

		function addClass(tag, className) {
			tag.className += " " + className;
		}
		
		//별점----------------------------------------------------------------------------------------------------
	</script>

	<script type="text/javascript">
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