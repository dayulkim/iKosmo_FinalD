<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="resources/product/css/style.css"
	type="text/css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
<style type="text/css">
/* ���ƴ� ��� ProductDetail Style ����  */
.tabs {
	margin: 0;
	padding: 0;
}

.tabs li {
	list-style-type: none;
	display: inline-block;
	background: #c7c7c7;
	padding: 3px 10px;
	color: #fff;
	cursor: pointer;
}

.tabs li:hover {
	color: #fff;
	background: #5294de;
}

.tabs li.active {
	color: #fff;
	background: #5294de;
}

.panel {
	display: none;
	background: #fff;
	border: 1px solid #c7c7c7;
	padding: 30px;
}

.panel.active {
	display: block;
}
/* ���ƴ� ��� ProductDetail Style �� */

/* �翵�� ��� Review Style ����  */
.review-table {
	width: 35em;
	height: auto;
	text-align: center;
}

.font-small {
	font-size: 0.4em;
}
/* �翵�� ��� Review Style ��  */
</style>
<div class="top-element"></div>

<div id="page">
	<div id="contents">
		<div id="product">
			<div class="section">
				<ul>
					<li><a href="product.html"><img
							src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d3.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d3.jpg" alt="thumbnail"></a></li>
					<li><a href="product.html"><img
							src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
				</ul>
				<div>
					<img src="resources/product/images/d2.jpg" alt="view">
				</div>
			</div>
			<div class="section">
				<p>
					<b>${provo.pro_name }<!-- ��ǰ�� --></b><br> <br> �ǸŰ�
					&nbsp&nbsp&nbsp&nbsp
					<del>${provo.pro_price }</del>
					&nbsp ${provo.pro_sellprice }
					<!-- ��ǰ���� -->
					&nbsp (${provo.pro_discount }% OFF)<br> <br> ������ü
					&nbsp&nbsp&nbsp&nbsp (��)������ ���� ��<br> <br> ������
					&nbsp&nbsp&nbsp&nbsp ���ѹα�<br> <br> ��ۺ�
					&nbsp&nbsp&nbsp&nbsp ${provo.pro_delivery }�� (50,000�� �̻� ���� �� ����)<br>
					<br> ������ &nbsp&nbsp&nbsp&nbsp ��ü����<br> <br> ��ǰ�����
					&nbsp&nbsp&nbsp&nbsp ${provo.pro_rdate }<br> <br> �Ǹ���
					������ȣ &nbsp&nbsp&nbsp&nbsp ${provo.sel_num }
					<!-- �Ǹ��� ������ȣ ��¾��ϰ� ���ѱ�⸸ Ȯ�� -->
				</p>
				<form action="index.html" method="post">
					<select>
						<option>����� �����ϼ���.</option>
					</select> <select>
						<option>������ �����ϼ���.</option>
					</select> <input type="submit" value="��ũ���ϱ�" class="btn-cart"> <input
						type="submit" value="�����ϱ�">
				</form>
			</div>
		</div>
	</div>
	<div id="product">
		<div id="contents">
			<ul class="tabs">
				<li class="active" data-panel="panel1">��ǰ����</li>
				<li data-panel="panel2">����</li>
				<li data-panel="panel3">����</li>
				<li data-panel="panel4">���/ȯ��</li>
				<li data-panel="panel5">��õ��ǰ</li>
			</ul>
			<div id="panel1" class="panel active">
				��ǰ���� �̹��� <br /> <img src="${provo.pro_detail }" alt="�� �̹���"
					width="50%" height="50%" align="center" border="0"> <br />
			</div>
			<div id="panel2" class="panel">
				<div align="center" id="testcenter">

					<!-- 					<form action="productDetail" method="post" id="formTest"> -->
					<%-- 						<input type="hidden" name="pro_num" value="${paging.pro_num}"> --%>

					<!-- 					<input type="hidden" name="sortType1" id="sortType1" 	value="aa()">  -->
					<select id="sortType1" name="sortType1" onchange="test()">
						<option value="0">�ֽż�</option>
						<option value="1">������</option>

					</select>




					<!-- 					</form> -->

					<c:forEach var="list" items="${reviewList}">
						<table id="review-table">
							<tr>
								<td rowspan="3"><img alt=""
									src="resources/review/reviewImages/${list.rev_photo }"
									width="200"></td>

								<td>
									<p>���� : ${list.rev_content }</p>
								</td>
							</tr>


							<tr>

								<td><span style="text-align: left; padding-left: 24px;"
									class="font-small"> ����: <img alt=""
										src="resources/review/img/${list.rev_star }.png" width="100">
								</span><span style="text-align: right;" class="font-small">��۱Ⱓ��:
										<img alt="" src="resources/review/img/${list.rev_period }.png"
										width="100">
								</span></td>

							</tr>
							<tr>


								<td><span style="text-align: left;" class="font-small">
										������:<img alt=""
										src="resources/review/img/${list.rev_color}.png" width="100">
								</span><span class="font-small" style="text-align: right;"> �����:
										${list.rev_rdate }</span></td>
							</tr>

							<tr>
								<td colspan="3"><hr></td>
							</tr>

						</table>

					</c:forEach>
					<%@include file="reviewPageProcess.jsp"%>




				</div>
			</div>
			<div id="panel3" class="panel">
				<h6>���� (�Ǹ��� ����)</h6>
				<br />
				<div class="container">
					<div class="text-center py-5">
						<table style="text-align: left;" border="1">
							<tr>
								<td>��ü�� :</td>
								<td>&nbsp;&nbsp;${selvo.sel_name}</td>
							</tr>
							<tr>
								<td>������ȭ :</td>
								<td>&nbsp;&nbsp;${selvo.sel_tel}</td>
							</tr>
							<tr>
								<td>�ּ� :</td>
								<td>&nbsp;&nbsp;${selvo.sel_addr}</td>
							</tr>
							<tr>
								<td>��� :</td>
								<td>&nbsp;&nbsp;${selvo.sel_grade}</td>
							</tr>
						</table>

					</div>
					<input type="hidden" id="selname" value="${selvo.sel_name}">
					<input type="hidden" id="addr" value="${selvo.sel_addr}">
					<div id="map" style="width: 500px; height: 400px;"></div>
					<br>
				</div>
			</div>
			<div id="panel4" class="panel">
				<h6>��� �� ȯ�ҿ� ���� ����</h6>
				<br />��ۺ�� ${provo.pro_delivery }���̸�, 50,000�� �̻� ���� �� �����Դϴ�.<br />
				���� ��۱Ⱓ�� ${provo.pro_period }�� �Դϴ�. <br /> ȯ�ҿ� ���� ������ �����ڿ��� �����ּ���.
				<br /> <br />
				<table style="text-align: left;" border="1">
					<tr>
						<td>��ü�� :</td>
						<td>&nbsp;&nbsp;${selvo.sel_name}</td>
					</tr>
					<tr>
						<td>������ȭ :</td>
						<td>&nbsp;&nbsp;${selvo.sel_tel}</td>
					</tr>
					<tr>
						<td>�ּ� :</td>
						<td>&nbsp;&nbsp;${selvo.sel_addr}</td>
					</tr>
				</table>
			</div>
			<div id="panel5" class="panel">
				<div class="footer">
					<ul class="items">
						<li><a href="product.html"> <img
								src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
									68,930�� &nbsp 15% OFF</span> �þĿ �����̺� �ٴ��� �����̺� ���
						</a></li>
						<li><a href="product.html"> <img
								src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
									68,930�� &nbsp 15% OFF</span> ���̾� ��е� 60�� ���� ���۽̱� �� �����̺Ҽ�Ʈ
						</a></li>
						<li><a href="product.html"> <img
								src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
									68,930�� &nbsp 15% OFF</span> �볪�� ��� �þĿ ���� �����ħ��
						</a></li>
						<li><a href="product.html"> <img
								src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
									68,930�� &nbsp 15% OFF</span> �ع� �þĿ ���� �����̺� �׷���
						</a></li>
					</ul>
				</div>
			</div>

		</div>
	</div>

	<script type="text/javascript">
		// ���ƴ� ��� Detail
		$(document).ready(function() {

			$(".tabs li").on("click", function(e) {
				var $contents = $(this).closest("#contents");
				$contents.find(".tabs li.active").removeClass("active");
				$(this).addClass("active");
				$contents.find(".panel.active").hide();
				$contents.find(".panel.active").removeClass("active");
				var panelToShow = $(this).data("panel");
				$("#" + panelToShow).show();
				$("#" + panelToShow).addClass("active");
			});

		});

		// �翵�� ��� Review
		function test() {
			let sort = $('#sortType1').val();
			$('#testcenter').load(
					"productDetail?pro_num=${paging.pro_num}&sortType1=" + sort
							+ " #testcenter", function() {
						$("#sortType1").val(sort);
					});

		};

		// ������ ��� Seller Map ���� -Ajax�� ���� �ۼ�
		$.ajax({
			type : "GET", // HTTP ��û���
			url : url, // �ش� url
			data : data,
			dataType : dataType, // data Ÿ��
			success : function() { // HTTP ��û ���� �� ������ ����
				alert("�Ǹ��� ���� map ��� ����");
			},
			error : function() { // HTTP ��û ���� �� ������ ����
				alert("�Ǹ��� ���� map ��� ����");
			}
		})
	</script>
	<!-- kakaomap api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ed41aaad31a6786708d7abba81ccc02d&libraries=services"></script>
	<script>
		// ������ ��� īī������ API
		var container = document.getElementById('map'); //���� ǥ�� div

		var options = {
			center : new kakao.maps.LatLng(36.300442, 127.574917), //������ �߽���ǥ
			level : 3
		//������ Ȯ�� ����
		};

		var map = new kakao.maps.Map(container, options);

		var geocoder = new kakao.maps.services.Geocoder();

		var addr = document.getElementById('addr').value;
		var selname = document.getElementById('selname').value;

		geocoder
				.addressSearch(
						addr,
						function(result, status) {
							// ���������� �˻��� �Ϸ������ 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// ��������� ���� ��ġ�� ��Ŀ�� ǥ��
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// ����������� ��ҿ� ���� ������ ǥ��		        
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : "<div style='width:100px;margin:auto;text-align:center;font-size:15px;'>"
													+ selname + '</div>'
										});
								infowindow.open(map, marker);

								// ������ �߽��� ��������� ���� ��ġ�� �̵�
								map.setCenter(coords);
							}
						});
	</script>