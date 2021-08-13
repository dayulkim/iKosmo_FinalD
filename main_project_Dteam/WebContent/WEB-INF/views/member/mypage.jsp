<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>����������</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

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
							href="orderList" role="tab"><i class="fa fa-shopping-bag"></i>&nbsp;���ų��� href="orderList"#orders-tab</a>
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
						</div>
						<div class="tab-pane fade" id="orders-tab" role="tabpanel"
							aria-labelledby="orders-nav">
							<div class="table-responsive">
								<%@include file="../order/orderList.jsp" %>
								<%@include file="MyPageProcess.jsp" %>
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
											<th rowspan="4" style="padding-top: 30px;">
												<c:choose>
													<c:when test="${imgList[i.index] eq 'noImage'}">
														<img src="resources/images/no-image-icon.JPG" style="width: 120px; height: 100px; padding-right: 20px;">
													</c:when>
													<c:otherwise>
														<img src="resources/uploadFile/${imgList[i.index] }" style="width: 120px; height: 100px; padding-right: 20px;">
													</c:otherwise>
												</c:choose>
											</th>
											<td style="padding-top: 30px;">
												<h3>
													<a href="questionDetail?que_num=${e.que_num }">
													${e.que_title }
													</a>
												</h3> 
											</td>
										</tr>
										<tr>
											<td>
												<c:set var="keyword" value="${fn:split(e.que_keyword, ',')}"/>
													<c:forEach var="i" items="${keyword }">
														<a href="questionSearch?key=${i}">#${i}  </a>	
													</c:forEach>
											</td>
										</tr>
										<tr>
											<td>
												<p>${e.que_content }</p>
											</td>
										</tr>
										<tr>
											<td class="td-right-align">
												<span class="regdate">${e.que_rdate }</span>	
												<span class="author"> / ${e.mem_id }</span>	
											</td>
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
							<%@include file="MyPageProcess.jsp" %>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
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
</body>
</html>