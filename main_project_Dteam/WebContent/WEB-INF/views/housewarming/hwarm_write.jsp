<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />

<!-- ========= body 시작 ========= -->

<div style="margin-bottom: 8rem;"></div> <!-- 상단 마진 부여 -->
<form name="insertHwarm" action="insertHwarm" method="post" enctype="multipart/form-data"><!-- form 영역 시작 -->

<!-- 집들이 제목 입력 -->
<div class="editor-title-section hwarm_title">
	<input id="hou_name" name="hou_name" type="text" placeholder="제목을 입력해주세요" style="width:100%">
</div>

<!-- 필수정보 입력 -->
<div class="editor-section">
	<div class="container container-sm">
		<div class="hwrite_collapse_header">
		<a class="hwrite_collapse_btn" data-bs-toggle="collapse" href="#hwrite_collapse" role="button" aria-expanded="false" aria-controls="hwrite_collapse">
			&#9999; 필수정보 입력
		</a>
		</div>
		<div class="collapse" id="hwrite_collapse"> <!-- collapse 시작 -->
			<!-- 설문 1: 주거형태 -->
			<div class="editor-form-group" style="margin-top: 1rem;">
				<div class="editor-form-group__label">
					<label for="hou_type">주거형태</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_type" name="hou_type" class="form-select" aria-label="Default select example">
					  <option selected>선택해주세요</option>
					  <option value="1">원룸</option>
					  <option value="2">투룸</option>
				</select>
				</div>
			</div>
			<!-- 설문 2: 평수 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_space">평수</label>
				</div>
				<div class="editor-form-group__content">
					<input type="text" id="hou_space" name="hou_space" class="form-control">
				</div>
			</div>
			<!-- 설문 3: 작업방식 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_how">작업방식</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_how" name="hou_how" class="form-select" aria-label="Default select example">
					  <option selected>선택해주세요</option>
					  <option value="1">셀프</option>
					  <option value="2">반셀프</option>
					  <option value="3">전문가</option>
				</select>
				</div>
			</div>
			<!-- 설문 4: 분야 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_sector">분야</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_sector" name="hou_sector" class="form-select" aria-label="Default select example">
					  <option selected>선택해주세요</option>
					  <option value="1">리모델링</option>
					  <option value="2">홈스타일링</option>
					  <option value="3">부분공사</option>
					  <option value="4">건축</option>
				</select>
				</div>
			</div>
			<!-- 설문 5: 스타일 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_style">스타일</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_style" name="hou_style" class="form-select" aria-label="Default select example">
					  <option selected>선택해주세요</option>
					  <option value="1">모던</option>
					  <option value="2">미니멀&심플</option>
					  <option value="3">내추럴&북유럽</option>
					  <option value="4">빈티지&레트로</option>
					  <option value="5">클래식&앤틱</option>
					  <option value="6">프렌치&프로방스</option>
					  <option value="7">러블리&로맨틱</option>
					  <option value="8">인더스트리얼</option>
					  <option value="9">한국&아시아</option>
					  <option value="10">유니크&믹스매치</option>
				</select>
				</div>
			</div>
			<!-- 설문 6: 작업기간 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_period">작업기간</label>
				</div>
				<div class="editor-form-group__content">
					<input type="text" id="hou_period" name="hou_period" class="form-control">
				</div>
			</div>
			<!-- 설문 7: 예산 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_pay">예산</label>
				</div>
				<div class="editor-form-group__content">
					<input type="text" id="hou_pay" name="hou_pay" class="form-control">
				</div>
			</div>
			<!-- 설문 8: 컬러톤 -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_tone">컬러톤</label>
				</div>
				<div class="editor-form-group__content">
					<div class="custom-radios">
					  <div>
					    <input type="radio" id="color-1" name="hou_tone" value="1" checked>
					    <label for="color-1">
					      <span style="background-color: #fff4e6">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
					  <div>
					    <input type="radio" id="color-2" name="hou_tone" value="2">
					    <label for="color-2">
					      <span style="background-color: #ffd3b6">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
					  <div>
					    <input type="radio" id="color-3" name="hou_tone" value="3">
					    <label for="color-3">
					      <span style="background-color: #e0a899">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					
					  <div>
					    <input type="radio" id="color-4" name="hou_tone" value="4">
					    <label for="color-4">
					      <span style="background-color: #604439">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
		  			  <div>
					    <input type="radio" id="color-5" name="hou_tone" value="5">
					    <label for="color-5">
					      <span style="background-color: #e74c3c">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
		
		  			  <div>
					    <input type="radio" id="color-6" name="hou_tone" value="6">
					    <label for="color-6">
					      <span style="background-color: #f0c75e">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>			  
					  
		  			  <div>
					    <input type="radio" id="color-7" name="hou_tone" value="7">
					    <label for="color-7">
					      <span style="background-color: #a0d6b4">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
		  			  <div>
					    <input type="radio" id="color-8" name="hou_tone" value="8">
					    <label for="color-8">
					      <span style="background-color: #4b86b4">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
		  			  <div>
					    <input type="radio" id="color-9" name="hou_tone" value="9">
					    <label for="color-9">
					      <span style="background-color: #505050">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
		
		  			  <div>
					    <input type="radio" id="color-10" name="hou_tone" value="10">
					    <label for="color-10">
					      <span style="background-color: #000000">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>			 	 
					</div>
				</div>
			</div>
		</div> <!-- collapse 끝 -->
	</div> <!-- container 끝 -->
</div> <!-- editor-top-section 끝 -->


<!-- 집들이 내용 입력 -->
<div class="hwarm-content"><!-- hwarm-content 시작 -->
	<div class="editor-section row">
		<!-- 이미지 업로드 부분 -->
		<div class="image-container col-md-6">
			<!-- 이미지 -->
		    <img style="width: 95%;" class="preview-image" src="resources/assets/img/file_dummy.png">
		    <!-- 파일 업로드 버튼 -->
		    <a class="upload-file-btn" onclick="$(this).parent().children('input').click()" style="background-color: #66b2b2;">
		    	<span class="upload-file-btn-span"><i class="fas fa-file-upload"></i></span>
		    	<span class="upload-file-btn-span">파일업로드</span>
		    </a>
		    <input type="file" class="imgfile" name="imgfile" style="display:none;">
		    <!-- 관련 제품 태그 버튼 -->
	   	    <a class="upload-file-btn tag-btn" style="background-color: #ff6f69;" onclick="javascript:openPopup(this);" target="_blank">
		    	<span class="upload-file-btn-span"><i class="fas fa-tags"></i></span>
		    	<span class="upload-file-btn-span">제품 태그</span>
		    </a>
		</div>
		<!-- 내용 입력 부분 -->
		<div class="col-md-6">
			<textarea class="hwd_content_list" name="hwd_content_list" rows="18" cols="42" placeholder="어떤 공간인가요? 사진에 대한 이야기를 해주세요."></textarea>
<!-- 			<input type="text" class="hwd_content" name="hwd_content" placeholder="어떤 공간인가요? 사진에 대한 이야기를 해주세요."> -->
		</div>
	</div>
	<input type="hidden" class="hwd_tag" name="hwd_tag" value="none">
</div> <!-- hwarm-content 끝 -->

<div class="editor-section row hwarm_title">
	<a href="javascript:appendHwamContent()" class="hwrite_collapse_btn"><i class="fas fa-plus"></i> 내용 추가하기</a>
</div>

<!-- 집들이글 발행하기 버튼 -->
<button type="submit" class="hwarm-submit-btn">발행하기</button>


</form> <!-- form -->
<div style="margin-bottom: 5rem;"></div> <!-- 하단 마진 부여 -->

<!-- ========== body 끝  ========== -->


<!-- ========= script 시작  ========= -->


<script>

window.name = "hwarm_write";


// 제품 태그 눌렀을 때 팝업창 띄워주는 스크립트
function openPopup(input){
	console.log(input);
	var hwarm = input.parentNode.parentNode.parentNode;
    var popup = window.open('popupImage', '제품 태그 팝업', 'width=1200px,height=650px,scrollbars=yes');
    var order = parseInt($('.tag-btn').index(input));
    console.log(order);
    var src = $('.preview-image').eq(order).attr("src");
    console.log(src);
	$.ajax({
		url:"popupImage",  
	}).done(function(result){
		result = result.replace("\"replaceThis\"",src)
		result = result.replace("\"boxOrderValue\"",order)
		popup.document.write(result);
	});
}

// 이미지 파일의 변화를 감지하는 스크립트
document.addEventListener('change',function(e){
	if(e.target.className == 'imgfile') {
		readImage(e.target)
	}
})

// 이미지를 업로드했을 때 읽어와서 미리보기 사진을 띄워주는 함수
function readImage(input) {
    // 인풋 태그에 파일이 있는 경우
    if(input.files && input.files[0]) {
        // 이미지 파일인지 검사 (생략)
        // FileReader 인스턴스 생성
        const reader = new FileReader()
        // 이미지가 로드가 된 경우
        reader.onload = e => {
//             const previewImage = document.getElementById("preview-image")
			const previewImage = input.parentNode.querySelectorAll('.preview-image')[0]
            previewImage.src = e.target.result
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0])
    }
}


// DOM이 생성되면 내용 작성 부분의 코드를 읽어옴
var html = '';
$(document).ready(function () {
	html = $('.hwarm-content').html();
});

// 추가하기 버튼을 누르면 내용 박스를 추가하는 코드
var order = 1;
function appendHwamContent() {		
	
// 	$('.hwarm-content').append(html.replace('"hwd_content_list[0]"', '"hwd_content_list['+order+']"'));
	$('.hwarm-content').append(html);
	order += 1;
}

function img_index(input) {
	console.log($('.preview-image').index(input));
}


</script>
<!-- ========== script 끝  ========== -->