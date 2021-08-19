<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div style="display: block; text-align: center; font-size: 18px;">   
      <!-- 이전페이지  <  -->   
      <c:if test="${paging.startPage != 1 }">
         <a href="myqna?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
      </c:if>
      <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
         <c:choose>
            <c:when test="${p == paging.nowPage }">
               <b>${p }</b> <%--현제 페이지 일경우 링크 해제  --%>
            </c:when>
            <c:when test="${p != paging.nowPage }">
               <%-- 다른페이지 링크  --%>
               <a href="myqna?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
            </c:when>
         </c:choose>
      </c:forEach>
      <!--  다음페이지 > -->
      <c:if test="${paging.endPage != paging.lastPage}">
         <a href="myqna?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
      </c:if>
   </div>