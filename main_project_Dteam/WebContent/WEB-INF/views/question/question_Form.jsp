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
		
	#questionForm checkbox {
		font-family: 'NanumGothic-Regular';
		font-size: 16px;
	}

	#questionForm p{
		font-family: 'NanumGothic-Regular';
		font-size: 16px;
	}
	
	#questionForm table tr td>input.u-input-1 {
		height: 50px;
		width: 500px;
		font-size: 15px;
		font-family: 'NanumGothic-Regular';
	}
	
	#questionForm table tr td>textarea.u-input-3 {
		height: 250px;
		width: 500px;
		resize: none;
		font-size: 15px;
		font-family: 'NanumGothic-Regular';
	}
	
	#questionForm input + label {
		display: inline-block;
		position: relative;
		padding-left: 10px;
		font-size: 13px;
		font-family: 'NanumGothic-Regular';
	}
	
	.star{
	  display:inline-block;
	  width: 30px;height: 60px;
	  cursor: pointer;
	}
	.star_left{
	  background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat 0 0; 
	  background-size: 60px; 
	  margin-right: -3px;
	}
	.star_right{
	  background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat -30px 0; 
	  background-size: 60px; 
	  margin-left: -3px;
	}
	.star.on{
	  background-image: url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
	}

</style>
<%--=============================<div id="body"> 시작 =============================--%>
<section>
<br> <br>
<div id="body" align="center">

	<form action="insertQuestion" method="post" enctype="multipart/form-data">
		<div id="questionForm">
			<table>

				<tr>
					<td>
						<input type="text" placeholder="제목을 입력하세요" id="title"	name="title"
						class="u-border-black u-border-no-left u-border-no-right u-border-no-top u-input-1"
						required="required">
					</td>
				</tr>

				<tr>
					<td>
						<textarea placeholder="내용을 입력하세요" id="content" name="content"
						class=" u-border-black u-border-no-left u-border-no-right u-border-no-top   u-input-3"
						required="required"></textarea>
					</td>
				</tr>
				
				<tr>
					<td>
						<input type="number" id="code" min="0" placeholder="사진업로드 " step="1" onchange="addFile()">
						<div id="uploadtarget"></div>
						<hr>
					</td>
				</tr>

				<tr>
					<th>
						<p>키워드 선택</p>
					</th>
				</tr>
				<tr>
					<th>
						<p style="margin: 0;">일반</p>
						<input type="checkbox" id="kinds" name="kinds" value="리모델링/수리"><label>리모델링/수리</label> &nbsp; 
						<input type="checkbox" id="kinds" name="kinds" value="견적"><label>견적</label> &nbsp;
						<input type="checkbox" id="kinds" name="kinds" value="업체추천"><label>업체추천</label> &nbsp; 
						<input type="checkbox" id="kinds" name="kinds" value="셀프인테리어"><label>셀프인테리어</label> &nbsp; 
						<br>
						<input type="checkbox" id="kinds" name="kinds" value="신혼"><label>신혼</label>&nbsp;
						<input type="checkbox" id="kinds" name="kinds" value="리폼"><label>리폼</label> &nbsp; 
						<input type="checkbox" id="kinds" name="kinds" value="디자인추천"><label>디자인추천</label> &nbsp; 
						<hr>
					</th>
				</tr>
				<tr>
					<th>
						<p style="margin: 0;">가구</p>
						<input type="checkbox" id="furnitures" name="furnitures" value="가구배치/이동"><label>가구배치/이동</label> &nbsp; 
						<input type="checkbox" id="furnitures" name="furnitures" value="수전/싱크대"><label>수전/싱크대</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="냉장고"><label>냉장고</label> &nbsp; 
						<input type="checkbox" id="furnitures" name="furnitures" value="소파"><label>소파</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="식탁"><label>식탁</label> &nbsp; 
						<br>
						<input type="checkbox" id="furnitures" name="furnitures" value="침대"><label>침대</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="에어컨"><label>에어컨</label> &nbsp; 
						<input type="checkbox" id="furnitures" name="furnitures" value="TV"><label>TV</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="유리"><label>유리</label>&nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="기타가구"><label>기타가구</label> &nbsp; 
						<hr>
					</th>
				</tr>
				
				<tr>
					<th>
						<p style="margin: 0;">공간</p>
						<input type="checkbox" id="space" name="space" value="단독주택"><label>단독주택</label> &nbsp; 
						<input type="checkbox" id="space" name="space" value="아파트"><label>아파트</label> <br>
						<input type="checkbox" id="space" name="space" value="상가"><label>상가</label> &nbsp; 
						<input type="checkbox" id="space" name="space" value="원룸"><label>원룸 </label> &nbsp;
						<hr>
					</th>
				</tr>
				<tr>
					<th colspan="2">
						<br>
						<input type="submit" value="작성">
						<input type="reset" value="취소">
					</th>
				</tr>
			</table>
		</div>
	</form>
</div>
</section>

<br> <br> <br> <br> <br> <br> <br>

<%--=============================</div id="body"> 끝=============================--%>

<%--=============================<script> 시작 =============================--%>
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
</script>
<%--=============================<script> 끝 =============================--%>