<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>joinform.jsp</title>
</head>
<body>
<h1>여기는 회원가입 페이지</h1>
<form method="post" action="joinprocess">
<table>
<tr>
<td>
<input type="text" id="mem_id" name="mem_id" placeholder="아이디" required="required">
<input type="button" id="id_check" name="id_check" value="중복확인" onclick="idchk()"><br/>
<div id="target"></div>
<input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호" required="required"><br/>
<input type="text" id="mem_name" name="mem_name" placeholder="이름" required="required"><br/>
<input type="text" id="mem_nickname" name="mem_nickname" placeholder="닉네임" required="required"><br/>
성별<input type="radio" id="mem_gender_m" name="mem_gender" value="male" required="required">남자
<input type="radio" id="mem_gender_f" name="mem_gender" value="female" required="required">여자<br/>
생년월일 <input type ="date" id="mem_birth" name="mem_birth" value="1971-01-01"><br/>
전화번호 <input type="text" id="mem_tel" name="mem_tel" placeholder="-빼고 입력하세요" required="required"><br/>
<input type="text" id="mem_addr" name="mem_addr" placeholder="주소" required="required">
</td>
</tr>
<tr><td>
<input type="submit" id="joinBtn" name="joinBtn" value="가입하기">
</td></tr>
</table>
</form>
</body>
<script src="resources/js/https.js"></script>  
<script>
function idchk() {
	myRequest();
	var idv = document.getElementById("mem_id").value;
	var param = "mem_id="+idv;
	xhr.onreadystatechange= res;
	xhr.open("post","idchk");
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.send(param);
}
function res(){
	if(xhr.readyState === 4){
		if(xhr.status === 200){
			var txt = xhr.responseText;
			document.getElementById("target").innerHTML=txt;
			} else {
		console.log("실패");
		}
	}
}
</script>  
</html>