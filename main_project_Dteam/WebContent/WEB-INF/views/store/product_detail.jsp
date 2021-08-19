<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>��ǰ �󼼺���</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

<!-- Favicon -->
<link href="resources/assets/img/store/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="resources/lib/slick/slick.css" rel="stylesheet">
<link href="resources/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/store/style.css" rel="stylesheet">
<link href="resources/css/store/main.css" rel="stylesheet">
<!-- �� ��� ���� -->
<style type="text/css">
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

#unit {
	float: left;
}
</style>
<!-- �� ��� �� -->
</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Product Detail Start -->
	<div class="product-detail"
		style="margin-left: auto; margin-right: auto;">
		<div class="container-fluid"
			style="margin-left: auto; margin-right: auto;">
			<div class="row">
				<div class="col-lg-8" style="margin-left: auto; margin-right: auto;">
					<div class="product-detail-top">
						<div class="row">
							<div style="width: 50%">
								<div class="product-slider-single normal-slider">
									<img src="${provo.pro_thumb}" alt="Product Image">
									<c:forEach var="i" items="${plist}">
										<img src="${i}" alt="Product Image">
									</c:forEach>
								</div>
								<div class="product-slider-single-nav normal-slider">
									<div class="slider-nav-img">

										<img src="${provo.pro_thumb}" alt="Product Image">

									</div>
									<c:forEach var="i" items="${plist}">
										<div class="slider-nav-img">
											<img src="${i}" alt="Product Image">
										</div>
									</c:forEach>

								</div>
							</div>
							<div class="product-content"
								style="padding: 0; width: 50%; padding-left: 2rem;">
								<div class="title">
									<br>
									<c:set var="num0" value="0" />
									<c:set var="num1" value="1" />
									<c:set var="num2" value="2" />
									<c:set var="num3" value="3" />
									<c:set var="num4" value="4" />
									<c:set var="num5" value="5" />
									<c:set var="num6" value="6" />
									<c:set var="num7" value="7" />
									<c:set var="num8" value="8" />
									<c:set var="num9" value="9" />
									<c:set var="num10" value="10" />
									<c:set var="num11" value="11" />
									<c:set var="num12" value="12" />
									<c:set var="num13" value="13" />
									<c:choose>
										<c:when test="${provo.pro_category eq num0 }">
											<p>�з� &nbsp; :&nbsp;���� &nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num1 }">
											<p>�з� &nbsp; :&nbsp;�к긯 &nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num2 }">
											<p>�з� &nbsp; :&nbsp;Ȩ����/���� &nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num3 }">
											<p>�з� &nbsp; :&nbsp;����&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num4 }">
											<p>�з� &nbsp; :&nbsp;����/����&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num5 }">
											<p>�з� &nbsp; :&nbsp;��Ȱ&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num6 }">
											<p>�з� &nbsp; :&nbsp;�ֹ�&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num7 }">
											<p>�з� &nbsp; :&nbsp;����ǰ&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num8 }">
											<p>�з� &nbsp; :&nbsp;DIY/����&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num9 }">
											<p>�з� &nbsp; :&nbsp;�ð�/����&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num10 }">
											<p>�з� &nbsp; :&nbsp;�ݷ�����&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num11 }">
											<p>�з� &nbsp; :&nbsp;ķ��&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num12 }">
											<p>�з� &nbsp; :&nbsp;ȨƮ���̴�&nbsp;></p>
										</c:when>
										<c:when test="${provo.pro_category eq num13 }">
											<p>�з� &nbsp; : &nbsp;����/�Ƶ�&nbsp;></p>
										</c:when>
									</c:choose>

								</div>
								<h3>${provo.pro_name}</h3>
								<div id="star_result">
									<c:forEach var="i" begin="1" end="5" step="1">
										<c:choose>
											<c:when test="${i <= pro_star }">
												<i class="fa fa-star" style="color: #F15F5F"></i>
											</c:when>
											<c:otherwise>
												<i class="fa fa-star"></i>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>
								<br>
								<div class="price">
									�Ǹž�ü: ${provo.seller.sel_name} &nbsp; (���: <img
										src="resources/assets/img/store/grade${provo.seller.sel_grade}.jpg"
										alt="" style="width: 12.5px; height: 13px;">)
								</div>
								<div class="price">
									����: &nbsp; (${provo.pro_discount}% OFF) &nbsp;
									${provo.pro_dprice}�� &nbsp;
									<del>${provo.pro_price}��</del>
								</div>
								<div class="price">��ۺ�:&nbsp; ${provo.pro_delivery}��</div>
								<div class="price">���� ��۱Ⱓ:&nbsp;
									�ִ�&nbsp;${provo.pro_delivery}��</div>
								<div class="quantity">
									����:&nbsp;
									<div class="qty">
										<button class="btn-minus">
											&nbsp;<i class="fa fa-minus"></i>
										</button>
										<input id="ord_qty" name="ord_qty" type="text" value="1">
										<button class="btn-plus">
											&nbsp;<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
								<br>
								<div class="action">
									<button type="button" class="btn btn-outline-info">
										<i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;��ٱ���
									</button>
									<button type="button" id="confirmbtn"
										class="btn btn-outline-info">
										<i class="fa fa-shopping-bag"></i>&nbsp;&nbsp;��� ����
									</button>
									<input type="hidden" id="pro_num" value="${provo.pro_num}">
									<button type="button" class="btn btn-outline-info">
										<i class="fas fa-bookmark"></i>&nbsp;&nbsp;��ũ��
									</button>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>

			<!-- �� ���� -->
			<div id="product"
				style="width: 70%; margin-left: auto; margin-right: auto;">
				<div id="contents">
					<ul class="tabs">
						<li class="active" data-panel="panel1">��ǰ����</li>
						<li data-panel="panel2">����</li>
						<li data-panel="panel3" id="sellertab">����</li>
						<li data-panel="panel4">���/ȯ��</li>
						<li data-panel="panel5">��õ��ǰ</li>
					</ul>
					<div id="panel1" class="panel active">
						<c:forEach var="i" items="${dlist}">
							<img src="${i}" alt="�� �̹���"
								style="margin-left: auto; margin-right: auto;">
							<br />
						</c:forEach>
					</div>
					<div id="panel2" class="panel">
						<div style="width: 90px" align="right">
							<select>
								<option selected>��ϼ�</option>
								<option>��õ��</option>
							</select>
						</div>
						<hr>
						<c:forEach var="list" items="${rList}">
							<div>
								<img src="resources/assets/img/store/${list.member.mem_profile}"
									style="width: 2.6rem; border-radius: 10rem; float: left; margin-top: 8px; margin-right: 14px; margin-left: 12px">
							</div>
							<div style="line-height: 200%; font-size: 12px">
								by ${list.member.mem_id} &nbsp;<span>(${list.rev_rdate})</span>
							</div>
							<div id="star_result" style="font-size: 10px; margin-bottom: 5px">
								<c:forEach varStatus="i" begin="1" end="5" step="1">
									<c:choose>
										<c:when test="${i.count <= list.rev_star }">
											<i class="fa fa-star" style="color: #F15F5F"></i>
										</c:when>
										<c:otherwise>
											<i class="fa fa-star"></i>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>
							<div style="font-size: 12px">
								[���]
								<c:if test="${list.rev_period eq 0}">
									<span>������</span>
								</c:if>
								<c:if test="${list.rev_period eq 1}">
									<span>�����ؿ�</span>
								</c:if>
								<c:if test="${list.rev_period eq 2}">
									<span>�����</span>
								</c:if>
								&nbsp;&nbsp; [Į��]
								<c:if test="${list.rev_color eq 0}">
									<span>ȭ�麸�� ��ο���</span>
								</c:if>
								<c:if test="${list.rev_color eq 1}">
									<span>ȭ��� ���ƿ�</span>
								</c:if>
								<c:if test="${list.rev_color eq 2}">
									<span>ȭ�麸�� ��ƿ�</span>
								</c:if>
							</div>
							<br>
							<p style="font-size: 13px">${list.rev_content}</p>
							<img src="resources/assets/img/store/${list.rev_photo}"
								style="width: 90px; border-radius: 5px; margin-bottom: 8px; margin-right: 12px; margin-left: 12px">
							<p style="font-size: 13px">1���� ����� �ֽ��ϴ�.</p>
							<hr>
						</c:forEach>

					</div>

					<div id="panel3" class="panel">
						<h5 align="left">Contact Details...</h5>
						<hr>
						<div class="row">
							<div class="col-5">
								<div id="unit">
									<i class="fa fa-child" style="color: #F15F5F"></i>
								</div>
								<div>
									&nbsp;&nbsp;our company<br>
									<font color="#000000">${selvo.sel_name}</font>
								</div>
								<hr style="width: 400px" size="11px">
								<div id="unit">
									<i class="fa fa-phone" style="color: #F15F5F"></i>
								</div>
								<div>
									&nbsp;&nbsp;call us<br>
									<font color="#000000">${selvo.sel_tel}</font>
								</div>
								<hr style="width: 400px" size="11px">
								<div id="unit">
									<i class="fa fa-envelope" style="color: #F15F5F"></i>
								</div>
								<div>
									&nbsp;&nbsp;email us<br>
									<font color="#000000">hotline@gmail.com</font>
								</div>
								<hr style="width: 400px" size="11px">
								<div id="unit">
									<i class="fa fa-microchip" style="color: #F15F5F"></i>
								</div>
								<div>
									&nbsp;&nbsp;our grade<br>
									<font color="#000000">${selvo.sel_grade}&nbsp;���</font>
								</div>
								<hr style="width: 400px" size="11px">
								<div id="unit">
									<i class="fa fa-map-marker" style="color: #F15F5F"></i>
								</div>
								<div>
									&nbsp;&nbsp;find us<br>
									<font color="#000000">${selvo.sel_addr}</font>
								</div>
								<br> <input type="hidden" id="selname"
									value="${selvo.sel_name}"> <input type="hidden"
									id="addr" value="${selvo.sel_addr}">
							</div>
							<div class="col-5">
								<div id="map"
									style="width: 500px; height: 400px; margin-top: 1rem; margin-left: 1rem;"></div>
								<hr style="width: 400px" size="11px">
							</div>
						</div>
					</div>
					<div id="panel4" class="panel">
						<h6>��� �� ȯ�ҿ� ���� ����</h6>
						<br />��ۺ�� ${provo.pro_delivery }���̸�, 50,000�� �̻� ���� �� �����Դϴ�.<br />
						���� ��۱Ⱓ�� ${provo.pro_period }�� �Դϴ�. <br /> ȯ�ҿ� ���� ������ �����ڿ���
						�����ּ���. <br /> <br />
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
						<div id="recommendProduct"></div>

						<!-- �� �� -->
					</div>
				</div>
			</div>
		</div>
		<!-- Back to Top -->

		<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

		<!-- JavaScript Libraries -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
		<script src="resources/lib/easing/easing.min.js"></script>
		<script src="resources/lib/slick/slick.min.js"></script>

		<!-- Template Javascript -->
		<script src="resources/js/store/main.js"></script>
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
						"productDetail?pro_num=${paging.pro_num}&sortType1="
								+ sort + " #testcenter", function() {
							$("#sortType1").val(sort);
						});
			};

			// �ű�ö : ��ñ��� ��ư�� ������ �� �����ϱ� �������� �Ѿ���� ��

			$('#confirmbtn').click(
					function() {
						var ord_qty = $('#ord_qty').val();
						var pro_num = $('#pro_num').val();
						location.href = "confirm?fromCart=0&pro_num=" + pro_num
								+ "&ord_qty=" + ord_qty;
					});
		</script>
		<!-- kakaomap api -->
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ed41aaad31a6786708d7abba81ccc02d&libraries=services"></script>
		<script>
			$('#sellertab')
					.on(
							"click",
							function() {
								var container = document.getElementById('map'); //���� ǥ�� div
								$('#map')
										.attr('style',
												'width:500px; height:350px; display:block;');
								var options = {
									center : new kakao.maps.LatLng(36.300442,
											127.574917), //������ �߽���ǥ
									level : 3
								//������ Ȯ�� ����
								};

								var map = new kakao.maps.Map(container, options);

								var geocoder = new kakao.maps.services.Geocoder();

								var addr = document.getElementById('addr').value;
								console.log("addr : " + addr)
								var selname = document
										.getElementById('selname').value;

								geocoder
										.addressSearch(
												addr,
												function(result, status) {
													// ���������� �˻��� �Ϸ������ 
													if (status === kakao.maps.services.Status.OK) {

														var coords = new kakao.maps.LatLng(
																result[0].y,
																result[0].x);

														// ��������� ���� ��ġ�� ��Ŀ�� ǥ��
														var marker = new kakao.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														// ����������� ��ҿ� ���� ������ ǥ��              
														var infowindow = new kakao.maps.InfoWindow(
																{
																	content : "<div style='width:100px;margin:auto;text-align:center;font-size:15px;'>"
																			+ selname
																			+ '</div>',
																	disableAutoPan : true
																});
														infowindow.open(map,
																marker);

														// ������ �߽��� ��������� ���� ��ġ�� �̵�
														var markerPosition = marker
																.getPosition();
														map.relayout();
														map
																.setCenter(markerPosition);

													}
												});
							});
		</script>