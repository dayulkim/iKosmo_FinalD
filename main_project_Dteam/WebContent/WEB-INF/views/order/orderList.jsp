<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="top-element"></div>
<div>
	<table>
		<tr>
			<td>�ֹ���ȣ</td>
			<td>��ǰ��</td>
			<td>��ǰ����</td>
			<td>��ǰ����</td>
			<td>�����ݾ�</td>
			<td>�ֹ�����</td>
		</tr>
			<c:forEach var="list" items="${ordvo}">
			<tr>
				<td>${list.orderListVO.ord_num }</td>
				<td>${list.pro_name }</td>
				<td>${list.pro_sellprice }</td>
				<td>${list.orderListVO.ord_qty }</td>
				<td>${list.pro_sellprice * list.orderListVO.ord_qty }</td>
				<td>${list.orderListVO.ord_date }</td>
				</tr>
			</c:forEach>
		

	</table>
</div>