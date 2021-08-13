<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">
<style>
.layer_title {
	text-align: center;
}

#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 99;
	background-color: #000000;
	display: none;
}

.layerpop {
	overflow: auto;
	position: absolute;
	display: none;
	z-index: 100;
	border: 2px solid #ccc;
	background: #fff;
}

.layerpop_area .layer_title {
	padding: 10px 10px 10px 10px;
	border: 0px solid #aaaaaa;
	background: #f1f1f1;
	color: #3eb0ce;
	font-size: 1.3em;
	font-weight: bold;
	line-height: 24px;
}

.layerpop_area .layerpop_close {
	width: 30px;
	display: block;
	position: absolute;
	top: 10px;
	right: 10px;
}

.layerpop_area .content {
	width: 95%;
	margin: 2%;
	color: #828282;
}

</style>
<!-- Favicon -->
<link href="resources/planb/img/favicon.ico" rel="icon">

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
<link href="resources/planb/lib/slick/slick.css" rel="stylesheet">
<link href="resources/planb/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/planb/css/style.css" rel="stylesheet">
</head>

<body>


	<!-- Bottom Bar Start -->
	<div class="bottom-bar">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="search">
						<input type="text" placeholder="Search">
						<button>
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<div class="col-md-4">
					<div class="user">
						<a href="wishlist.html" class="btn wishlist"> <i
							class="fa fa-heart"></i> <span>(0)</span>
						</a> <a href="cart.html" class="btn cart"> <i
							class="fa fa-shopping-cart"></i> <span>(0)</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bottom Bar End -->

	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		<div class="container-fluid">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Ȩ</a></li>
				<li class="breadcrumb-item"><a href="#">�����</a></li>
				<li class="breadcrumb-item active">����������</li>
			</ul>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- My Account Start -->
	<div class="my-account">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="nav flex-column nav-pills" role="tablist"
						aria-orientation="vertical">
						<a class="nav-link active" id="dashboard-nav" data-toggle="pill"
							href="#dashboard-tab" role="tab"><i class="fa fa-user"></i>&nbsp;��
							���� ����</a> <a class="nav-link" id="address-nav" data-toggle="pill"
							href="#address-tab" role="tab"><i
							class="fa fa-map-marker-alt"></i>&nbsp;���� ������</a> <a class="nav-link"
							id="account-nav" data-toggle="pill" href="#account-tab"
							role="tab"><i class="fa fa-tachometer-alt"></i>&nbsp;���� ����/�亯</a>
						<a class="nav-link" id="orders-nav" data-toggle="pill"
							href="#orders-tab" role="tab"><i class="fa fa-shopping-bag"></i>&nbsp;���ų���</a>
						<a class="nav-link" id="payment-nav" data-toggle="pill"
							href="#payment-tab" role="tab"><i class="fa fa-credit-card"></i>&nbsp;����
							������</a> <a class="nav-link" href="logout"><i
							class="fa fa-sign-out-alt"></i>�α׾ƿ�</a>

					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="dashboard-tab"
							role="tabpanel" aria-labelledby="dashboard-nav">
							<h4>�� ����</h4>
							<div class="row">
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="�̸�">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="�г���">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="�޴���ȭ">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="�̸���">
								</div>
								<div class="col-md-12">
									<input class="form-control" type="text" placeholder="�ּ�">
								</div>
								<div class="col-md-12">
									<button class="btn">�� ���� �����ϱ�</button>
									<br> <br>
								</div>
							</div>
							<h4>��й�ȣ ����</h4>
							<div class="row">
								<div class="col-md-12">
									<input class="form-control" type="password"
										placeholder="���� ��й�ȣ">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" placeholder="������ ��й�ȣ">
								</div>
								<br>
								<div class="col-md-6">
									<input class="form-control" type="text"
										placeholder="������ ��й�ȣ ���Է�">
								</div>
								<div class="col-md-12">
									<button class="btn">��й�ȣ ����</button>
								</div>
							</div>
							<br> <br>
							<h4>�� �߰� ����</h4>
							<div class="row">
								<div class="col-md-12"></div>
								<div id="houseInfo_target">
									<button class="house_info_add-btn">�߰�</button>
									<c:forEach var="house_info" items="${house_info }">
										<p>
											<c:if test="${house_info.hinfo_type!='0' }">
									�� : ${house_info.hinfo_type}
									</c:if>
											<c:if test="${house_info.hinfo_size!='0' }">
									   &nbsp;${house_info.hinfo_size}
									</c:if>
											<c:if test="${house_info.hinfo_with!='0' }">
									�Բ� : ${house_info.hinfo_with}
									</c:if>
											<c:if test="${house_info.hinfo_tend!='0' }">
									���� : ${house_info.hinfo_tend}
									</c:if>
										</p>
										<p>
											<c:if test="${house_info.hinfo_favour!='0' }">
									��ȣ�� : ${house_info.hinfo_type}
									</c:if>
											<c:if test="${house_info.hinfo_buytend!='0' }">
									���ż��� : ${house_info.hinfo_buytend}
									</c:if>
											<c:if test="${house_info.hinfo_style!='0' }">
									��Ÿ�� : ${house_info.hinfo_style}
									</c:if>
											<c:if test="${house_info.hinfo_activity!='0' }">
									�� Ȱ�� : ${house_info.hinfo_activity}
									</c:if>


											<button class="house_info_del-btn"		value="${house_info.hinfo_num }">����</button>
										</p>
										<hr>

									</c:forEach>
								</div>
								<div class="col-md-6"></div>
								<br>
								<div class="col-md-6"></div>
								<div class="col-md-12"></div>
							</div>
						</div>
						<div class="tab-pane fade" id="orders-tab" role="tabpanel"
							aria-labelledby="orders-nav">
							<div class="table-responsive">
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
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${ordvo}">
											<tr>
												<td>${list.orderListVO.ord_num }</td>
												<td>${list.pro_name }</td>
												<td>${list.pro_sellprice }</td>
												<td>${list.orderListVO.ord_qty }</td>
												<td>${list.pro_sellprice * list.orderListVO.ord_qty }</td>
												<td>${list.orderListVO.ord_date }</td>
												<td>��ۿϷ�???????</td>
												<td><button class="btn">��ǰ��������</button></td>
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
											<td><button class="btn">��ǰ��������</button></td>
										</tr>
										<tr>
											<td>2</td>
											<td>[35%����] �Ƹ��� 4�� õ������ �Ұ��� ���� +���� �߰�...</td>
											<td>56,000��</td>
											<td>���ż���</td>
											<td>�����ݾ�</td>
											<td>2021-06-28</td>
											<td>��ۿϷ�</td>
											<td><button class="btn">��ǰ��������</button></td>
										</tr>
										<tr>
											<td>3</td>
											<td>[35%����] �Ƹ��� 4�� õ������ �Ұ��� ���� +���� �߰�...</td>
											<td>56,000��</td>
											<td>���ż���</td>
											<td>�����ݾ�</td>
											<td>2021-06-28</td>
											<td>��ۿϷ�</td>
											<td><button class="btn">��ǰ��������</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="payment-tab" role="tabpanel"
							aria-labelledby="payment-nav">
							<h4>���� ������</h4>
							<p>���� ����� �־��ּ���.</p>
						</div>
						<div class="tab-pane fade" id="address-tab" role="tabpanel"
							aria-labelledby="address-nav">
							<h4>[�� ������]</h4>
							<div class="row">
								<div class="col-md-6">
									<h5>�Ÿ��α�~ �����̸� ���� �帲�Ͽ콺!</h5>
									<p>�����: 2021-07-17</p>
									<p>30�� �ʹ� 1�� �����Դϴ�. ȭ�� ����� �ٹ��� �� ���� 10���� �� �Ű��׿�. ���� �ʿ� 25��
										����Ʈ(��3, ȭ2)�� �Ÿ��ؼ� ���׸��� ��ü�� ���� �ʰ� �ݼ�����....</p>
									<button class="btn">������Ʈ</button>
								</div>
								<div class="col-md-6">
									<h5>������, ����Ͽ콺�� �޲ٸ�</h5>
									<p>�����: 2021-07-17</p>
									<p>30�� �ʹ� 1�� �����Դϴ�. ȭ�� ����� �ٹ��� �� ���� 10���� �� �Ű��׿�. ���� �ʿ� 25��
										����Ʈ(��3, ȭ2)�� �Ÿ��ؼ� ���׸��� ��ü�� ���� �ʰ� �ݼ�����....</p>
									<button class="btn">������Ʈ</button>
								</div>
								<div class="col-md-6">
									<h5>������ ���� �ߴ� ȭ�л��� �̱��Ͽ콺, �������׸���</h5>
									<p>�����: 2021-07-17</p>
									<p>30�� �ʹ� 1�� �����Դϴ�. ȭ�� ����� �ٹ��� �� ���� 10���� �� �Ű��׿�. ���� �ʿ� 25��
										����Ʈ(��3, ȭ2)�� �Ÿ��ؼ� ���׸��� ��ü�� ���� �ʰ� �ݼ�����....</p>
									<button class="btn">������Ʈ</button>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="account-tab" role="tabpanel"
							aria-labelledby="account-nav">
							<h4>�� ������ �亯</h4>
							<p>�� ������ �亯 ����� �־��ּ���.</p>

							<div id="MyquestionList">
								<table>
									<c:forEach var="e" items="${list }" varStatus="i">
										<tr>
											<th rowspan="4" style="padding-top: 30px;"><c:choose>
													<c:when test="${imgList[i.index] eq 'noImage'}">
														<img src="resources/images/no-image-icon.JPG"
															style="width: 120px; height: 100px; padding-right: 20px;">
													</c:when>
													<c:otherwise>
														<img src="resources/uploadFile/${imgList[i.index] }"
															style="width: 120px; height: 100px; padding-right: 20px;">
													</c:otherwise>
												</c:choose></th>
											<td style="padding-top: 30px;">
												<h3>
													<a href="questionDetail?que_num=${e.que_num }">
														${e.que_title } </a>
												</h3>
											</td>
										</tr>
										<tr>
											<td><c:set var="keyword"
													value="${fn:split(e.que_keyword, ',')}" /> <c:forEach
													var="i" items="${keyword }">
													<a href="questionSearch?key=${i}">#${i} </a>
												</c:forEach></td>
										</tr>
										<tr>
											<td>
												<p>${e.que_content }</p>
											</td>
										</tr>
										<tr>
											<td class="td-right-align"><span class="regdate">${e.que_rdate }</span>
												<span class="author"> / ${e.mem_id }</span></td>
										</tr>
										<!-- �߰����� ���빰�� �߻��� 
										
										<tr>
											<td>
											</td>
										</tr>
										
										-->
									</c:forEach>
								</table>
							</div>

							<div style="height: 80px; padding-top: 20px;">
								<%@include file="MyPageProcess.jsp"%>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="mask"></div>

	<!--Popup Start -->
	<div id="layerbox" class="layerpop" style="width: 55%; height: 80%;">
		<article class="layerpop_area">


			<a href="javascript:popupClose();" class="layerpop_close"
				id="layerbox_close"><img alt="" src="resources/review/img/x.png"></a><br>
			<div class="content">
				<div id="body" align="center">

					<form action="houseinfoinsert" method="post">
						<div>
							<div>
								<ul>
									<li>���� ����</li>
									<li><input type="radio" name="hinfo_type" value="����&���ǽ���">����&���ǽ���
										<input type="radio" name="hinfo_type" value="����Ʈ">����Ʈ
										<input type="radio" name="hinfo_type" value="����&����">����&����
										<input type="radio" name="hinfo_type" value="�ܵ�����">�ܵ�����</li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>���� ũ��</li>
									<li><input type="radio" name="hinfo_size" value="10��̸�">10��̸�
										<input type="radio" name="hinfo_size" value="10���">10���
										<input type="radio" name="hinfo_size" value="20���">20���
										<input type="radio" name="hinfo_size" value="30���">30���
										<input type="radio" name="hinfo_size" value="40�� �̻�">40��
										�̻�
									<li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>������</li>
									<li><input type="checkbox" id="hinfo_with"
										name="hinfo_with" value="�̱۶�����">�̱۶����� <input
										type="checkbox" id="hinfo_with" name="hinfo_with" value="��ȥ�κ�">��ȥ�κ�
										<input type="checkbox" id="hinfo_with" name="hinfo_with"
										value="�Ʊ�">�Ʊ� <input type="checkbox" id="hinfo_with"
										name="hinfo_with" value="���� �ڳ�">���� �ڳ� <input
										type="checkbox" id="hinfo_with" name="hinfo_with"
										value="���� �ڳ�">���� �ڳ� <input type="checkbox"
										id="hinfo_with" name="hinfo_with" value="�θ��">�θ�� <input
										type="checkbox" id="hinfo_with" name="hinfo_with" value="�ݷ�����">�ݷ�����
									
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>����</li>
									<li><input type="radio" name="hinfo_tend" value="�̴ϸָ���">�̴ϸָ���
										<input type="radio" name="hinfo_tend" value="�ǿ�����">�ǿ�����
										<input type="radio" name="hinfo_tend" value="�ƽøָ���">�ƽøָ���

									
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>��ȣ��</li>
									<li><input type="checkbox" name="hinfo_favour" value="����">����
										<input type="checkbox" name="hinfo_favour" value="������">������
										<input type="checkbox" name="hinfo_favour" value="������">������<input
										type="checkbox" name="hinfo_favour" value="����">����
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>���ż���</li>
									<li><input type="checkbox" name="hinfo_buytend"
										value="�귣��">�귣�� <input type="checkbox"
										name="hinfo_buytend" value="Ʈ����">Ʈ���� <input
										type="checkbox" name="hinfo_buytend" value="����Ƽ">����Ƽ<input
										type="checkbox" name="hinfo_buytend" value="������">������
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>��Ÿ��</li>
									<li><input type="checkbox" name="hinfo_style" value="���">���
										<input type="checkbox" name="hinfo_style" value="�̴ϸ�&����">�̴ϸ�&����
										<input type="checkbox" name="hinfo_style" value="���߷�&������">���߷�&������<input
										type="checkbox" name="hinfo_style" value="��Ƽ��&��Ʈ��">��Ƽ��&��Ʈ��<input
										type="checkbox" name="hinfo_style" value="Ŭ����&��ƽ">Ŭ����&��ƽ
										<input type="checkbox" name="hinfo_style" value="����ġ&���ι潺">����ġ&���ι潺</li>
									<li><input type="checkbox" name="hinfo_style"
										value="����&�θ�ƽ">����&�θ�ƽ <input type="checkbox"
										name="hinfo_style" value="�δ���Ʈ����">�δ���Ʈ����<input
										type="checkbox" name="hinfo_style" value="�ѱ�&�ƽþ�">�ѱ�&�ƽþ�<input
										type="checkbox" name="hinfo_style" value="����ũ&�ͽ���ġ">����ũ&�ͽ���ġ
										<input type="checkbox" name="hinfo_style" value="��Ÿ">��Ÿ</li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>��Ȱ��</li>
									<li><input type="checkbox" name="hinfo_activity"
										value="�ܼ�����">�ܼ����� <input type="checkbox"
										name="hinfo_activity" value="Ȩ�׼�(�,��ŷ)">Ȩ�׼�(�,��ŷ)<input
										type="checkbox" name="hinfo_activity" value="Ȩ��ũ(����,�繫)">Ȩ��ũ(����,�繫)
										<input type="checkbox" name="hinfo_activity"
										value="��ȭ��Ȱ(��û,����)">Ȩ��ȭ(��û,����)
								</ul>
								<hr>
							</div>
							<div>

								<hr>
							</div>
							<input type="submit" value="�Ϸ�">
						</div>
					</form>
				</div>
			</div>
		</article>
	</div>
	<!-- My Account End -->

	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="resources/planb/lib/easing/easing.min.js"></script>
	<script src="resources/planb/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/planb/js/main.js"></script>
	<script>
		$('.house_info_del-btn').click(function() {
			var hinfo_num = $(this).val();
			location.href = "houseinfo_del?hinfo_num=" + hinfo_num
		});
		$('.house_info_add-btn').click(function() {
			popupOpen();
			wrapWindowByMask();
		});
		
		
		

		function wrapWindowByMask() {
			//ȭ���� ���̿� �ʺ� ���Ѵ�.
			var maskHeight = $(document).height();
			var maskWidth = $(window).width();

			//���������� ũ�� 
			console.log("document ������:" + $(document).width() + "*"
					+ $(document).height());
			//���������� ������ �������� ������ ũ��
			console.log("window ������:" + $(window).width() + "*"
					+ $(window).height());

			//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
			$('#mask').css({
				'width' : maskWidth,
				'height' : maskHeight
			});
			//�ִϸ��̼� ȿ��
			$('#mask').fadeTo("slow", 0.5);
		}
		function popupOpen() {
			$('.layerpop').css("position", "absolute");

			//���� ����� ���̾ �ٿ�� ���� ��ġ ��� 
			$('.layerpop').css(
					"top",
					(($(window).height() - $('.layerpop').outerHeight()) / 2)
							+ $(window).scrollTop());
			$('.layerpop').css(
					"left",
					(($(window).width() - $('.layerpop').outerWidth()) / 2)
							+ $(window).scrollLeft());
			// 			$('.layerpop').draggable();
			$('#layerbox').show();
		}
		function popupClose() {
			$('#layerbox').hide();
			$('#mask').hide();
		}

	</script>


</body>
</html>