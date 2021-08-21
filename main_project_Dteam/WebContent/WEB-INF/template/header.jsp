<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<a class="navbar-brand" href="/main_project_Dteam"><img
			src="resources/assets/img/logo_s.jpg" alt="����������" /></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			Menu <i class="fas fa-bars ms-1"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
				<li class="nav-item"><a class="nav-link" href="store">�����</a></li>
				<li class="nav-item"><a class="nav-link" href="community">������</a></li>
				<li class="nav-item"><a class="nav-link" href="questionList">������
						�亯</a></li>
				<c:choose>
					<c:when test="${sessionScope.sessionID != null}">
						<li class="nav-item"><a class="nav-link" href="mypage">����������</a></li>
					</c:when>
				</c:choose>
			</ul>
			<input type="text" name="word" id="word" class="nav-search-box"
				placeholder="���հ˻�" onkeydown="startSuggest();">
			<div id="view" class="layout-navigation-search__list element"></div>
			<img id="srchBtn" src="//cdn.ggumim.co.kr/storage/20190819234645GI8IRuYjml.png" class="nav-search-button">
			<c:choose>
				<c:when test="${sessionScope.sessionID == null}">
					<div class="login-out-btn">
						<a href="login" class="login-out-a">�α���</a>
					</div>
				</c:when>
				<c:when test="${sessionScope.sessionID != null}">
                    <span style="font-family: NANUMSQUARE; font-size: 0.95rem; color: #777777; margin-left: 1rem;"></span>
					<div class="login-out-btn">
						<a href="logout" class="login-out-a">�α׾ƿ�</a>
					</div>
				</c:when>
			</c:choose>
		</div>
	</div>
</nav>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>
	$(document).ready(function(){
		$('#srchBtn').on('click', function(){
			var key = $('#word').val();
			console.log("key ::"+key);
			location.href = 'srchRes?key='+key;
		});
	});
	
	var lastkey = ''; //����Ű
	var check = false;//�˻� üũ ����
	var loopkey = false; //��������

	function startSuggest() {

		console.log("key push!");
		if (check === false) { //���� �˻��� ��� 0.5��� �� sendKeyword() ȣ��
			setTimeout("sendKeyword();", 500);
			loopkey = true;
		}
		check = true;
	}
	function sendKeyword() {//Ű���带 �޾Ƽ� �Ķ���͸� AJAX�� �����ϴ� �Լ�
		if (loopkey === false) {
			return;
		}
		var key = word.value;
		if (key === '' || key === ' ') { //���� ���ų� ������ ���
			lastkey = '';
			document.getElementById("view").style.display = 'none';
		} else if (key !== lastkey) {// �˻����� �ٸ� ��� ������ �����Ѵ�. 
			lastkey = key;
		
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


				viewTable();
			} else {
				document.getElementById("view").style.display = 'none';
			}
		}
	}
	var category = null;
	function viewTable() { 
		var categoryName={"0":"����","1":"���/��ǰ","2":"�ֹ��ǰ","3":"�к긯","4":"����","5":"�ݷ�����","6":"����","7":"��Ȱ��ǰ",
				"8":"�ǳ��","9":"����/����","10":"����/�Ƶ�","11":"����/DIY","12":"����ǰ"}
		var vD = document.getElementById("view");
		var htmlTxt = "<ul style='padding-right:16px;padding-left:16px;' >";

		let jsonObjBody = null;
		for (let i = 0; i < jsonObj.length; i++) {

			category = jsonObj[i].split("/", 1);

	
			htmlTxt += "<li  style='cursor:pointer;padding:4px;list-style:none;' ";
			htmlTxt += "onmouseover='this.style.background=\"#f2f2f2\"' ";
			htmlTxt += "onmouseout='this.style.background=\"white\"' ";
			htmlTxt += "onclick='select("
					+ i
					+ ")'>"
					+ "<img src='resources/review/img/category_" + category
					+ ".jpg' width='30;'>" 
					+"&nbsp;" + categoryName[category]
			htmlTxt += "</li>"
		}
		htmlTxt += "</ul>";
		vD.innerHTML = htmlTxt;
		vD.style.display = "block";
	}

	function select(index) { //����Ʈ �߿��� ������ �ܾ ���ʵ� �� ��� �� ������ �ʱ�ȭ

		sendCategory = jsonObj[index].split("/", 1);

		let keyword = word.value;
		location.href = "srchRes?&key="+ keyword
		//detailreviewform�˻����â���� �����Ͻø� �ǿ�

		// 		�˻��� �Ʒ� �׸� Ŭ���������) sendī�װ��� ī�װ� ���� ���� �Ѿ�ű��� Ű����� �̻���� �˻�â�� �ۼ��س� �˻���
		// 		��Ʈ�ѷ��� �Ķ���� �ް� �۾��Ͻø� �ǽǰſ���

	}
</script>
