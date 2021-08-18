<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>주문번호</th>
											<th>상품명</th>
											<th>가격</th>
											<th>구매수량</th>
											<th>결제금액</th>
											<th>구매일</th>
											<th>배송상태</th>
											<th>상품보기</th>
											<th>리뷰쓰기</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${ordvo}">
											<tr>
												<td>${list.orderListVO.ord_num }</td>
												<td>${list.pro_name }</td>
												<td>${list.pro_dprice }</td>
												<td>${list.orderListVO.ord_qty }</td>
												<td>${list.pro_dprice * list.orderListVO.ord_qty }</td>
												<td>${list.orderListVO.ord_date }</td>
												<td>배송중~~~~~~~~12312312</td>
												<td><button class="productBtn">상품보러가기</button></td>
												<td><button class="reviewBtn">리뷰쓰러가기</button></td>
												<td><button class="btn" id="review-add-btn">리뷰작성</button></td>
											</tr>
										</c:forEach>
										<tr>
											<td>1</td>
											<td>[35%할인] 아르테 4인 천연면피 소가죽 소파 +스툴 추가...</td>
											<td>56,000원</td>
											<td>구매수량</td>
											<td>결제금액</td>
											<td>2021-06-28</td>
											<td>배송완료</td>
											<td><button class="productBtn">상품보러가기</button></td>
											<td><button class="reviewBtn">리뷰쓰러가기</button></td>
										</tr>
									</tbody>
								</table>
</div>