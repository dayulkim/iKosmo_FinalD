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
                        <li class="nav-item"><a class="nav-link" href="store">�����</a></li>
                        <li class="nav-item"><a class="nav-link" href="community">������</a></li>
                        <li class="nav-item"><a class="nav-link" href="">������ �亯</a></li>
                        <li class="nav-item"><a class="nav-link" href="mypage">����������</a></li>                        
                    </ul>
<!--                     <input type="text" class="nav-search-box" placeholder="���հ˻�"> -->
					<input type="text" name="word" id="word" class="nav-search-box"
						placeholder="���հ˻�" onkeydown="startSuggest();">
					<div id="view" class="layout-navigation-search__list element"></div>
                    <a href=""><img src="//cdn.ggumim.co.kr/storage/20190819234645GI8IRuYjml.png" class="nav-search-button"></a>
                    <div class="login-out-btn"><a href="" class="login-out-a">�α���</a></div>
                </div>
            </div>
        </nav>
        
<script>
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
	function viewTable() { //callback ���� json �����͸� ui�� ǥ��
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
					+ ".png' width='50;'>"+category+"�� ī�װ� �������ÿ���"  
			htmlTxt += "</li>"
		}
		htmlTxt += "</ul>";
		vD.innerHTML = htmlTxt;
		vD.style.display = "block";
	}

	function select(index) { //����Ʈ �߿��� ������ �ܾ ���ʵ� �� ��� �� ������ �ʱ�ȭ

		sendCategory = jsonObj[index].split("/", 1);
		console.log(sendCategory);
		let keyword = word.value;
		location.href = "detailreviewform?category=" + sendCategory
				+ "&keyword=" + keyword
		//detailreviewform�˻����â���� �����Ͻø� �ǿ�

		// 		�˻��� �Ʒ� �׸� Ŭ���������) sendī�װ��� ī�װ� ���� ���� �Ѿ�ű��� Ű����� �̻���� �˻�â�� �ۼ��س� �˻���
		// 		��Ʈ�ѷ��� �Ķ���� �ް� �۾��Ͻø� �ǽǰſ���

	}
</script>
        