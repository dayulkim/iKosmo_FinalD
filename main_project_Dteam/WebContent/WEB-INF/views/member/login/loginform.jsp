<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
</head>
<body>
<table>
<tr><td>
아이디 <input type="text" id="mem_id" name="mem_id" placeholder="아이디" required="required"><br/>
비밀번호 <input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호" required="required">
<div id="target" style="color :red"></div>
<input type="button" id="loginBtn" name="loginBtn" value="로그인하기" onclick="login()">
</td></tr>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="resources/js/scripts.js"></script>
<script src="resources/js/https.js"></script>
<script type="text/javascript">
function login() {
	myRequest();
	var idv = document.getElementById("mem_id").value;
	var pwdv = document.getElementById("mem_pwd").value;
	var param = "mem_id="+idv;
		param += "&mem_pwd="+pwdv;
	xhr.onreadystatechange= res;
	xhr.open("post","loginprocess");
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.send(param);
}
function res() {
	if(xhr.readyState ===4){
		if(xhr.status ===200){
			var txt =xhr.responseText;
			if(txt=="아이디 혹은 비밀번호가 잘못되었습니다.") {
				document.getElementById("target").innerHTML=txt;
				document.getElementById("mem_id").focus();
			} else {
				alert(txt);
				location="/sweethome/";
			}
		} else {
			console.log("실패");
		}
	}
}
</script>
</html>