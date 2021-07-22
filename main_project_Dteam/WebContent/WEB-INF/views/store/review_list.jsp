
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#review-table {
	width: 35em;
	height: auto;
	text-align: center;
}

.font-small {
	font-size: 0.4em;
}
</style>
<div class="top-element"></div>
<div align="center">

	<img alt="" src="resources/review/img/star.png" width="200">
	<form action="reviewList" method="post" id="formTest">
		<input type="hidden" name="pro_num" value="${paging.pro_num}">
		
 <select id="sortType1" name="sortType1"
			onchange="document.getElementById('formTest').submit()">
			<option value="0">최신순</option>
			<option value="1">별점순</option>

		</select>

	</form>

	<c:forEach var="list" items="${reviewList}">
		<table id="review-table">
			<tr>
				<td rowspan="3"><img alt=""
					src="resources/review/reviewImages/${list.rev_photo }" width="200"></td>

				<td>
					<p>내용 : ${list.rev_content }</p>
				</td>
			</tr>


			<tr>

				<td><span style="text-align: left; padding-left: 24px;"
					class="font-small"> 별점: <img alt=""
						src="resources/review/img/${list.rev_star }.png" width="100">
				</span><span style="text-align: right;" class="font-small">배송기간평: <img
						alt="" src="resources/review/img/${list.rev_period }.png" width="100"></span></td>

			</tr>
			<tr>

				<td><span style="text-align: left;" class="font-small">
						색상평:<img alt="" src="resources/review/img/${list.rev_color}.png"
						width="100">
				</span><span class="font-small" style="text-align: right;"> 등록일:
						${list.rev_rdate }</span></td>
			</tr>

			<tr>
				<td colspan="3"><hr></td>
			</tr>

		</table>

	</c:forEach>
	<%@include file="reviewPageProcess.jsp"%>
</div>



<script>
$(function () {
});
if(${paging.sortType1}===1){
	$('#sortType1').val(1);    }



</script>

