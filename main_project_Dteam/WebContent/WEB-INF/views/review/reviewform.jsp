<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
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
	width: 30px;
	height: 60px;
	cursor: pointer;
}

.star_left {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
		no-repeat 0 0;
	background-size: 60px;
	margin-right: -3px;
}

.star_right {
	background: url(http://gahyun.wooga.kr/main/img/testImg/star.png)
		no-repeat -30px 0;
	background-size: 60px;
	margin-left: -3px;
}

.star.on {
	background-image:
		url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
}
</style>
<div class="top-element"></div>

<div id="body" align="center">

	<form action="insertReview" method="post" enctype="multipart/form-data">
		<input type="hidden" id="mnum" name="mnum" value="${mnum }">
		<div id="reviewForm">
			<table>

				<tr>
					<td><input type="text" placeholder="제목을 입력하세요" id="rtitle"
						name="rtitle"
						class="u-border-black u-border-no-left u-border-no-right u-border-no-top u-input-1"
						required="required"></td>
				</tr>

				<tr>
					<td><textarea placeholder="내용을 입력하세요" id="rcontent"
							name="rcontent"
							class=" u-border-black u-border-no-left u-border-no-right u-border-no-top   u-input-2"
							required="required"></textarea></td>
				</tr>

				<tr>
					<td><input type="number" id="code" min="0"
						placeholder="파일업로드 " step="1" onchange="addFile()">
						<div id="uploadtarget"></div>
						<hr></td>
				</tr>

				<tr>
					<th>
						<div class="star-box">

							<div id="star_target">
								<p>평점</p>
							</div>
							<input type="hidden" id="rating" name="rating"> <span
								class="star star_left" title="1"></span> <span
								class="star star_right" title="2"></span> <span
								class="star star_left" title="3"></span> <span
								class="star star_right" title="4"></span> <span
								class="star star_left" title="5"></span> <span
								class="star star_right" title="6"></span> <span
								class="star star_left" title="7"></span> <span
								class="star star_right" title="8"></span> <span
								class="star star_left" title="9"></span> <span
								class="star star_right" title="10"></span>

							<hr>
						</div>
					</th>
				</tr>
				<tr>
					<th>
						<div class="star-box1">

							<div id="star_target">
								<p>평점</p>
							</div>
							<input type="hidden" id="rating" name="rating"> <span
								class="star star_left" title="1"></span> <span
								class="star star_right" title="2"></span> <span
								class="star star_left" title="3"></span> <span
								class="star star_right" title="4"></span> <span
								class="star star_left" title="5"></span> <span
								class="star star_right" title="6"></span> <span
								class="star star_left" title="7"></span> <span
								class="star star_right" title="8"></span> <span
								class="star star_left" title="9"></span> <span
								class="star star_right" title="10"></span>

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


<script>

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
window.onload = function() {
	var total = 1;
	
	// star-box 클래스를 집합노드로 반환한다.
	var links = document.querySelectorAll('.star-box span');
	console.log("links :" + links);
	console.log("typeof : " + typeof(links));
	
	var starCnt = ""; // 별점
	for(const link of links){
		link.addEventListener('mouseover',function(event){
			console.log("link:"+link);
			starCnt=this.title;
			console.log("starCnt :"+starCnt);
			document.getElementById("star_target").innerHTML="<p> 평점: "+starCnt+"점</p>";
			//기존의 적용된 스타일을 삭제한다
			for(var e of links){
				e.classList.remove('on');
			}
			//선택한 별 만큼 채운다.
			for(var i=0;i<starCnt;i++){
				console.log(links[i]);
				console.log("starCnt :"+starCnt);
				addClass(links[i],"on");
			}
			document.getElementById("rating").value = starCnt;	
		});
	}

}
</script>
