<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div style="display: block; text-align: center; font-size: 18px;">   
      <!-- ����������  <  -->   
      <c:if test="${paging2.startPage != 1 }">
         <a href="myqna?ansnowPage=${paging2.startPage - 1 }&anscntPerPage=${paging2.cntPerPage}">&lt;</a>
      </c:if>
      <c:forEach begin="${paging2.startPage }" end="${paging2.endPage }" var="p">
         <c:choose>
            <c:when test="${p == paging2.nowPage }">
               <b>${p }</b> <%--���� ������ �ϰ�� ��ũ ����  --%>
            </c:when>
            <c:when test="${p != paging2.nowPage }">
               <%-- �ٸ������� ��ũ  --%>
               <a href="myqna?ansnowPage=${p }&anscntPerPage=${paging2.cntPerPage}">${p }</a>
            </c:when>
         </c:choose>
      </c:forEach>
      <!--  ���������� > -->
      <c:if test="${paging2.endPage != paging2.lastPage}">
         <a href="myqna?ansnowPage=${paging2.endPage+1 }&anscntPerPage=${paging2.cntPerPage}">&gt;</a>
      </c:if>
   </div>