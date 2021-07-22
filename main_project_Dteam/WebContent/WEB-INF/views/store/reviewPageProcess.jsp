<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div style="display: block; text-align: center;">
	<!-- ���������� -->
	<c:if test="${paging.startPage != 1 }">
		<a href="#testcenter"
			onclick="$('#testcenter').load('productDetail?nowPage=${paging.startPage-1 }&cntPerPage=${paging.cntPerPage}&pro_num=${paging.pro_num}&sortType1=${paging.sortType1 } #testcenter', function( ){			
					    $( '#sortType1' ).val(${paging.sortType1 } );
					});">&lt;</a>
	</c:if>
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
		var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage }">
				<b>${p }</b>
				<%--���� ������ �ϰ�� ��ũ ����  --%>
			</c:when>
			<c:when test="${p != paging.nowPage }">
				<%-- �ٸ������� ��ũ  --%>
				<a href=#testcenter
					onclick="$('#testcenter').load('productDetail?nowPage=${p }&cntPerPage=${paging.cntPerPage}&pro_num=${paging.pro_num}&sortType1=${paging.sortType1 } #testcenter', function( ){			
					    $( '#sortType1' ).val(${paging.sortType1 } );
					});">${p }</a>
			</c:when>
		</c:choose>
	</c:forEach>
	<!-- ���������� -->
	<c:if test="${paging.endPage != paging.lastPage}">
		<a href="#testcenter"
			onclick="$('#testcenter').load('productDetail?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&pro_num=${paging.pro_num}&sortType1=${paging.sortType1 } #testcenter' , function( ){			
					    $( '#sortType1' ).val(${paging.sortType1 } );
					});">&gt;</a>
	</c:if>
</div>
