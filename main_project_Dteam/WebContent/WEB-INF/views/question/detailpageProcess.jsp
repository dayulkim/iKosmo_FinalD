<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div style="display: block; text-align: center;">	
		<!-- ����������  <  -->	
		<c:if test="${paging.startPage != 1 }">
			<a href="questionDetail?que_num=${quevo.que_num }&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b> <%--���� ������ �ϰ�� ��ũ ����  --%>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<%-- �ٸ������� ��ũ  --%>
					<a href="questionDetail?que_num=${quevo.que_num }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<!--  ���������� > -->
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="questionDetail?que_num=${quevo.que_num }&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>