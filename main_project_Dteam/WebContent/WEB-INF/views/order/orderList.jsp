<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>�ֹ���ȣ</th>
											<th>��ǰ��</th>
											<th>����</th>
											<th>���ż���</th>
											<th>�����ݾ�</th>
											<th>������</th>
											<th>��ۻ���</th>
											<th>��ǰ����</th>
											<th>���侲��</th>
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
												<td>�����~~~~~~~~12312312</td>
												<td><button class="productBtn">��ǰ��������</button></td>
												<td><button class="reviewBtn">���侲������</button></td>
												<td><button class="btn" id="review-add-btn">�����ۼ�</button></td>
											</tr>
										</c:forEach>
										<tr>
											<td>1</td>
											<td>[35%����] �Ƹ��� 4�� õ������ �Ұ��� ���� +���� �߰�...</td>
											<td>56,000��</td>
											<td>���ż���</td>
											<td>�����ݾ�</td>
											<td>2021-06-28</td>
											<td>��ۿϷ�</td>
											<td><button class="productBtn">��ǰ��������</button></td>
											<td><button class="reviewBtn">���侲������</button></td>
										</tr>
									</tbody>
								</table>
</div>