<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

<body><br><br><br><br><br><br>


	<!-- Bottom Bar Start -->
	<div class="bottom-bar">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-md-3"></div>
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
						<a class="nav-link" id="friends-nav" data-toggle="pill"
							href="#friends-tab" role="tab"><i class="fa fa-shopping-bag"></i>&nbsp;ģ�����</a>
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
								<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>��ȣ</th>
											<th>��ǰ��</th>
											<th>������</th>
											<th>����</th>
											<th>��ۻ���</th>
											<th>��ǰ����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>[35%����] �Ƹ��� 4�� õ������ �Ұ��� ���� +���� �߰�...</td>
											<td>2021-06-28</td>
											<td>56,000��</td>
											<td>��ۿϷ�</td>
											<td><button class="btn">��ǰ��������</button></td>
										</tr>
										<tr>
											<td>2</td>
											<td>[35%����] �Ƹ��� 4�� õ������ �Ұ��� ���� +���� �߰�...</td>
											<td>2021-06-28</td>
											<td>56,000��</td>
											<td>��ۿϷ�</td>
											<td><button class="btn">��ǰ��������</button></td>
										</tr>
										<tr>
											<td>3</td>
											<td>[35%����] �Ƹ��� 4�� õ������ �Ұ��� ���� +���� �߰�...</td>
											<td>2021-06-28</td>
											<td>56,000��</td>
											<td>��ۿϷ�</td>
											<td><button class="btn">��ǰ��������</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- ģ����� �׽�Ʈ -->
						<div class="tab-pane fade" id="friends-tab" role="tabpanel"
							aria-labelledby="friends-nav">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>��ȣ</th>
											<th>�̸�</th>
											<th>�г���</th>
											<th>��û��</th>
											<th>������</th>
											<th>����</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="e" items="${frilist}" varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td>${e.memvo.mem_name}</td>
											<td>${e.memvo.mem_nickname}</td>
											<td>${e.req_date}</td>
											<td>${e.acc_date}</td>
											<td><button class="btn">ģ������</button></td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- ģ����� �׽�Ʈ end -->
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
