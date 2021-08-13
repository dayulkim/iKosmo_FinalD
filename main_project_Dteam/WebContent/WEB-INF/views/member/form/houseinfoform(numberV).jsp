<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="houseinfoinsert" method="post">
		<ul>
			<li>집의 형식</li>
			<li><input type="radio" name="hinfo_type" value="1">원룸&오피스텔
				<input type="radio" name="hinfo_type" value="2">아파트 <input
				type="radio" name="hinfo_type" value="3">빌라&연립 <input
				type="radio" name="hinfo_type" value="4">단독주택 <input
				type="radio" name="hinfo_type" value="5">사무공간 <input
				type="radio" name="hinfo_type" value="6">상업공간 <input
				type="radio" name="hinfo_type" value="7">기타</li>
		</ul>
		<ul>
			<li>집의 크기</li>
			<li><input type="radio" name="hinfo_size" value="1">10평
				미만 <input type="radio" name="hinfo_size" value="2">10평대 <input
				type="radio" name="hinfo_size" value="3">20평대 <input
				type="radio" name="hinfo_size" value="4">30평대 <input
				type="radio" name="hinfo_size" value="5">40평 이상
		</ul>
		<ul>
			<li>구성원</li>
			<li><input type="checkbox" name="hinfo_with" value="1">싱글라이프
				<input type="checkbox" name="hinfo_with" value="2">신혼부부 <input
				type="checkbox" name="hinfo_with" value="3">아기<input
				type="checkbox" name="hinfo_with" value="4">취학 자녀 <input
				type="checkbox" name="hinfo_with" value="5">성인 자녀<input
				type="checkbox" name="hinfo_with" value="6">부모님 <input
				type="checkbox" name="hinfo_with" value="7">반려동물 <input
				type="checkbox" name="hinfo_with" value="8">반려동물
		</ul>
		<ul>
			<li>성향</li>
			<li><input type="radio" name="hinfo_tend" value="1">미니멀리즘
				미만 <input type="radio" name="hinfo_tend" value="2">실용주의 <input
				type="radio" name="hinfo_tend" value="3">맥시멀리즘 <input
				type="radio" name="hinfo_tend" value="4">기타
		</ul>
		<ul>
			<li>선호도</li>
			<li><input type="checkbox" name="hinfo_favour" value="1">색상
				<input type="checkbox" name="hinfo_favour" value="2">디자인 <input
				type="checkbox" name="hinfo_favour" value="3">내구성<input
				type="checkbox" name="hinfo_favour" value="4">안전 <input
				type="checkbox" name="hinfo_favour" value="5">기타
		</ul>
		<ul>
			<li>구매성향</li>
			<li><input type="checkbox" name="hinfo_buytend" value="1">브랜드
				<input type="checkbox" name="hinfo_buytend" value="2">트렌드 <input
				type="checkbox" name="hinfo_buytend" value="3">퀄리티<input
				type="checkbox" name="hinfo_buytend" value="4">가성비<input
				type="checkbox" name="hinfo_buytend" value="5">기타
		</ul>
		<ul>
			<li>스타일</li>
			<li><input type="checkbox" name="hinfo_style" value="1">모던
				<input type="checkbox" name="hinfo_style" value="2">미니멀&심플 <input
				type="checkbox" name="hinfo_style" value="3">내추럴&북유럽<input
				type="checkbox" name="hinfo_style" value="4">빈티지&레트로<input
				type="checkbox" name="hinfo_style" value="5">클래식&앤틱 <input
				type="checkbox" name="hinfo_style" value="6">프렌치&프로방스</li>
			<li><input type="checkbox" name="hinfo_style" value="7">러블리&로맨틱
				<input type="checkbox" name="hinfo_style" value="8">인더스트리얼<input
				type="checkbox" name="hinfo_style" value="9">한국&아시아<input
				type="checkbox" name="hinfo_style" value="10">유니크&믹스매치 <input
				type="checkbox" name="hinfo_style" value="11">기타</li>
		</ul>
		<ul>
			<li>주활동</li>
			<li><input type="checkbox" name="hinfo_activity" value="1">수면
				<input type="checkbox" name="hinfo_activity" value="2">작업 <input
				type="checkbox" name="hinfo_activity" value="3">요리<input
				type="checkbox" name="hinfo_activity" value="4">운동<input
				type="checkbox" name="hinfo_activity" value="5">공부 <input
				type="checkbox" name="hinfo_activity" value="6">문화생활(시청,게임)
				<input type="checkbox" name="hinfo_activity" value="6">기타
		</ul>
		<ul>
			<li>용도</li>
			<li><input type="checkbox" name="hinfo_purpose" value="1">단순거주
				<input type="checkbox" name="hinfo_purpose" value="2">홈활동 <input
				type="checkbox" name="hinfo_purpose" value="3">요리<input
				type="checkbox" name="hinfo_purpose" value="4">운동<input
				type="checkbox" name="hinfo_purpose" value="5">공부
		</ul>
		<input type="submit" value="완료">
	</form>


</body>
</html>