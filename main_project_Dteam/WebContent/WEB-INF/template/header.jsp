<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
 <style>
.layout-navigation-search__list {
	position: absolute;
	top: 70%;
	max-height: 400px;
	margin-top: 4px;
	/* 	padding: 8px; */
	/* 	border: 1px solid #dbdbdb; */
	background-color: #fff;
	box-shadow: 0 4px 6px 0 rgb(82 91 97/ 18%);
	border-radius: 4px;
	overflow: auto;
	box-sizing: border-box;
	font-size: 0.8em;
}

.element {
	left: 68%;
	width: 22em;
}
</style>
   
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="resources/assets/img/logo_sweethome.png" alt="..." /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="store">스토어</a></li>
                        <li class="nav-item"><a class="nav-link" href="community">집들이</a></li>
                        <li class="nav-item"><a class="nav-link" href="">질문과 답변</a></li>
                        <li class="nav-item"><a class="nav-link" href="mypage">마이페이지</a></li>                        
                    </ul>
<!--                     <input type="text" class="nav-search-box" placeholder="통합검색"> -->
					<input type="text" name="word" id="word" class="nav-search-box"
						placeholder="통합검색" onkeydown="startSuggest();">
					<div id="view" class="layout-navigation-search__list element"></div>
                    <a href=""><img src="//cdn.ggumim.co.kr/storage/20190819234645GI8IRuYjml.png" class="nav-search-button"></a>
                    <div class="login-out-btn"><a href="" class="login-out-a">로그인</a></div>
                </div>
            </div>
        </nav>
        
<script>
	var lastkey = ''; //최종키
	var check = false;//검색 체크 상태
	var loopkey = false; //루프상태

	function startSuggest() {

		console.log("key push!");
		if (check === false) { //최초 검색일 경우 0.5대기 후 sendKeyword() 호출
			setTimeout("sendKeyword();", 500);
			loopkey = true;
		}
		check = true;
	}
	function sendKeyword() {//키워드를 받아서 파라미터를 AJAX로 전송하는 함수
		if (loopkey === false) {
			return;
		}
		var key = word.value;
		if (key === '' || key === ' ') { //값이 없거나 공백일 경우
			lastkey = '';
			document.getElementById("view").style.display = 'none';
		} else if (key !== lastkey) {// 검색값이 다를 경우 서버로 전송한다. 
			lastkey = key;
			console.log("param" + key);
			sendRequest("suggest?key=" + key, null, res, "get");
		}
		setTimeout("sendKeyword();", 300);
	}
	var jsonObj = null;
	function res() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
				var response = xhr.responseText;
				jsonObj = JSON.parse(response);

				console.log("-----------------");
				console.log(jsonObj);
				viewTable();
			} else {
				document.getElementById("view").style.display = 'none';
			}
		}
	}
	var category = null;
	function viewTable() { //callback 받은 json 데이터를 ui에 표시
		var vD = document.getElementById("view");
		var htmlTxt = "<ul style='padding-right:16px;padding-left:16px;' >";

		let jsonObjBody = null;
		for (let i = 0; i < jsonObj.length; i++) {

			category = jsonObj[i].split("/", 1);

			console.log(category)
			htmlTxt += "<li  style='cursor:pointer;padding:4px;list-style:none;' ";
			htmlTxt += "onmouseover='this.style.background=\"#f2f2f2\"' ";
			htmlTxt += "onmouseout='this.style.background=\"white\"' ";
			htmlTxt += "onclick='select("
					+ i
					+ ")'>"
					+ "<img src='resources/review/img/category_" + category
					+ ".png' width='50;'>"+category+"번 카테고리 사진나올예정"  
			htmlTxt += "</li>"
		}
		htmlTxt += "</ul>";
		vD.innerHTML = htmlTxt;
		vD.style.display = "block";
	}

	function select(index) { //리스트 중에서 선택한 단어를 폼필드 에 출력 및 나머지 초기화

		sendCategory = jsonObj[index].split("/", 1);
		console.log(sendCategory);
		let keyword = word.value;
		location.href = "detailreviewform?category=" + sendCategory
				+ "&keyword=" + keyword
		//detailreviewform검색결과창으로 변경하시면 되요

		// 		검색후 아래 그림 클릭했을경우) send카테고리가 카테고리 숫자 숫자 넘어갈거구요 키워드는 이사람이 검색창에 작성해논 검색어
		// 		컨트롤러에 파라미터 받고 작업하시면 되실거예요

	}
</script>
        