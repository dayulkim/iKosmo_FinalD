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
			<li>���� ����</li>
			<li><input type="radio" name="hinfo_type" value="1">����&���ǽ���
				<input type="radio" name="hinfo_type" value="2">����Ʈ <input
				type="radio" name="hinfo_type" value="3">����&���� <input
				type="radio" name="hinfo_type" value="4">�ܵ����� <input
				type="radio" name="hinfo_type" value="5">�繫���� <input
				type="radio" name="hinfo_type" value="6">������� <input
				type="radio" name="hinfo_type" value="7">��Ÿ</li>
		</ul>
		<ul>
			<li>���� ũ��</li>
			<li><input type="radio" name="hinfo_size" value="1">10��
				�̸� <input type="radio" name="hinfo_size" value="2">10��� <input
				type="radio" name="hinfo_size" value="3">20��� <input
				type="radio" name="hinfo_size" value="4">30��� <input
				type="radio" name="hinfo_size" value="5">40�� �̻�
		</ul>
		<ul>
			<li>������</li>
			<li><input type="checkbox" name="hinfo_with" value="1">�̱۶�����
				<input type="checkbox" name="hinfo_with" value="2">��ȥ�κ� <input
				type="checkbox" name="hinfo_with" value="3">�Ʊ�<input
				type="checkbox" name="hinfo_with" value="4">���� �ڳ� <input
				type="checkbox" name="hinfo_with" value="5">���� �ڳ�<input
				type="checkbox" name="hinfo_with" value="6">�θ�� <input
				type="checkbox" name="hinfo_with" value="7">�ݷ����� <input
				type="checkbox" name="hinfo_with" value="8">�ݷ�����
		</ul>
		<ul>
			<li>����</li>
			<li><input type="radio" name="hinfo_tend" value="1">�̴ϸָ���
				�̸� <input type="radio" name="hinfo_tend" value="2">�ǿ����� <input
				type="radio" name="hinfo_tend" value="3">�ƽøָ��� <input
				type="radio" name="hinfo_tend" value="4">��Ÿ
		</ul>
		<ul>
			<li>��ȣ��</li>
			<li><input type="checkbox" name="hinfo_favour" value="1">����
				<input type="checkbox" name="hinfo_favour" value="2">������ <input
				type="checkbox" name="hinfo_favour" value="3">������<input
				type="checkbox" name="hinfo_favour" value="4">���� <input
				type="checkbox" name="hinfo_favour" value="5">��Ÿ
		</ul>
		<ul>
			<li>���ż���</li>
			<li><input type="checkbox" name="hinfo_buytend" value="1">�귣��
				<input type="checkbox" name="hinfo_buytend" value="2">Ʈ���� <input
				type="checkbox" name="hinfo_buytend" value="3">����Ƽ<input
				type="checkbox" name="hinfo_buytend" value="4">������<input
				type="checkbox" name="hinfo_buytend" value="5">��Ÿ
		</ul>
		<ul>
			<li>��Ÿ��</li>
			<li><input type="checkbox" name="hinfo_style" value="1">���
				<input type="checkbox" name="hinfo_style" value="2">�̴ϸ�&���� <input
				type="checkbox" name="hinfo_style" value="3">���߷�&������<input
				type="checkbox" name="hinfo_style" value="4">��Ƽ��&��Ʈ��<input
				type="checkbox" name="hinfo_style" value="5">Ŭ����&��ƽ <input
				type="checkbox" name="hinfo_style" value="6">����ġ&���ι潺</li>
			<li><input type="checkbox" name="hinfo_style" value="7">����&�θ�ƽ
				<input type="checkbox" name="hinfo_style" value="8">�δ���Ʈ����<input
				type="checkbox" name="hinfo_style" value="9">�ѱ�&�ƽþ�<input
				type="checkbox" name="hinfo_style" value="10">����ũ&�ͽ���ġ <input
				type="checkbox" name="hinfo_style" value="11">��Ÿ</li>
		</ul>
		<ul>
			<li>��Ȱ��</li>
			<li><input type="checkbox" name="hinfo_activity" value="1">����
				<input type="checkbox" name="hinfo_activity" value="2">�۾� <input
				type="checkbox" name="hinfo_activity" value="3">�丮<input
				type="checkbox" name="hinfo_activity" value="4">�<input
				type="checkbox" name="hinfo_activity" value="5">���� <input
				type="checkbox" name="hinfo_activity" value="6">��ȭ��Ȱ(��û,����)
				<input type="checkbox" name="hinfo_activity" value="6">��Ÿ
		</ul>
		<ul>
			<li>�뵵</li>
			<li><input type="checkbox" name="hinfo_purpose" value="1">�ܼ�����
				<input type="checkbox" name="hinfo_purpose" value="2">ȨȰ�� <input
				type="checkbox" name="hinfo_purpose" value="3">�丮<input
				type="checkbox" name="hinfo_purpose" value="4">�<input
				type="checkbox" name="hinfo_purpose" value="5">����
		</ul>
		<input type="submit" value="�Ϸ�">
	</form>


</body>
</html>