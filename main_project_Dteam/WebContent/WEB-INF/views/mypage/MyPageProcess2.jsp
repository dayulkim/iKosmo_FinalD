<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div style="display: block; text-align: center; font-size: 18px;">   
      <!-- 이전페이지  <  -->   
      <c:if test="${paging2.startPage != 1 }">
         <a href="myqna?ansnowPage=${paging2.startPage - 1 }&anscntPerPage=${paging2.cntPerPage}">&lt;</a>
      </c:if>
      <c:forEach begin="${paging2.startPage }" end="${paging2.endPage }" var="p">
         <c:choose>
            <c:when test="${p == paging2.nowPage }">
               <b>${p }</b> <%--현제 페이지 일경우 링크 해제  --%>
            </c:when>
            <c:when test="${p != paging2.nowPage }">
               <%-- 다른페이지 링크  --%>
               <a href="myqna?ansnowPage=${p }&anscntPerPage=${paging2.cntPerPage}">${p }</a>
            </c:when>
         </c:choose>
      </c:forEach>
      <!--  다음페이지 > -->
      <c:if test="${paging2.endPage != paging2.lastPage}">
         <a href="myqna?ansnowPage=${paging2.endPage+1 }&anscntPerPage=${paging2.cntPerPage}">&gt;</a>
      </c:if>
   </div>