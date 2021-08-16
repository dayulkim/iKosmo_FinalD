<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="resources/css/srchRes/styles.css"
	type="text/css">

<body>
<div class="top-element"></div>
<!-- �˻����  total ���� -->
<div>
<section class="page-section_srch bg-light" id="keyword-section">
	<div class="container">
		<div>
			<h4 class="section-heading text-uppercase"
				style="margin-bottom: 2rem; color: skyblue;">
				<label id="key" style="color: black;">" ${map.key} " �� ���� �˻���� :</label>&nbsp;&nbsp; ${map.total}&nbsp;��
			</h4>
		</div>
	</div>
</section>
<!-- �˻���� detail ���� -->
<section class="page-section" id="main-best-item">
	<div class="container">
		<!-- �� �޴� ���� -->
		<ul class="nav nav-tabs" style="margin-bottom: 2rem;" role="tablist">
			<li class="nav-item" role="presentation"><a
				class="nav-link active" id="furniture-tab" data-bs-toggle="tab"
				data-bs-target="#furniture" role="tab" aria-controls="furniture"
				aria-selected="true" style="color: #555555; padding: 0.5rem 0.7rem;">�����</a>
			</li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="fabric-tab" data-bs-toggle="tab" data-bs-target="#fabric"
				role="tab" aria-controls="fabric" aria-selected="false"
				style="color: #555555; padding: 0.5rem 0.7rem;">������</a>
			</li>
			<li class="nav-item" role="presentation"><a class="nav-link"
				id="question-tab" data-bs-toggle="tab" data-bs-target="#question"
				role="tab" aria-controls="question" aria-selected="false"
				style="color: #555555; padding: 0.5rem 0.7rem;">�������亯</a>
			</li>

		</ul>
		<!-- ����Ʈ ������ �� ������ ���� -->
		<div class="tab-content">
			<!-- ����� ī�װ� ���� ���� -->
			<div class="tab-pane active" id="furniture" role="tabpanel"
				aria-labelledby="furniture-tab">
				<div class="row">
					<c:forEach var="e" items="${proList}" varStatus="status">
						<!-- �ݺ��� -->
						<!-- ��ǰ ���� ������ ����-->
						<div class="col-md-3 main-item" style="padding: 1rem 2rem 1.5rem 2rem;">
							<a href="detail?pro_num=${e.pro_num}">
								<div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
									<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
									<img class="img-fluid main_pro_thumb"
										src="${e.pro_thumb}"
										style="position: absolute; border-radius: 1rem;" alt="..." />
								</div>
							</a>
							<div class="main-caption">
								<a href="" style="text-decoration: none">
									<p class="main-caption-seller">${e.seller.sel_name}&nbsp;
									<img src="resources/assets/img/store/grade${e.seller.sel_grade}.jpg" alt="" style="width: 15px; height: 15px;"></p>
									<p class="main-caption-name">${e.pro_name }</p> 
								</a>
									<span class="main-caption-discount">${e.pro_discount}%</span> 
									<span class="main-caption-price">${e.pro_dprice }&nbsp;��</span>							
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- ��ǰ ���� ������ ���� �� -->
			</div>
			<!-- ����� ī�װ� ���� �� -->
			<!-- ������ ī�װ� ���� ���� -->
			<div class="tab-pane" id="fabric" role="tabpanel"
				aria-labelledby="fabric-tab">
				<div class="row">
					<c:forEach var="e" items="${houList}" varStatus="status">
						<!-- �ݺ��� -->
						<!-- ������ ���� ������ -->
						<div class="col-md-3 main-item" style="padding: 2rem;">
							<a href="hwarm_detail?hou_num=${e.hou_num}">
								<div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
									<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
									<img class="img-fluid main_pro_thumb"
										src="${e.hou_thumb}"
										style="position: absolute; border-radius: 1rem;" alt="..." />
								</div>
							</a>
							<div class="main-caption">
								<a href="" style="text-decoration: none">
									<p class="main-caption-name">${e.hou_name }</p>
									<p class="main-caption-seller">${e.memvo.mem_nickname}</p> 
									<span class="main-caption-discount">��ũ�� :&nbsp;${e.hou_scrap}</span> 
									<span class="main-caption-price">��ȸ :&nbsp;${e.hou_hit}</span>
								</a>
							</div>
						</div>
						<!-- ������ ���� ������ ���� �� -->
					</c:forEach>
				</div>
			</div>
			<!-- ������ ī�װ� ���� �� -->
			<!-- �������亯 ī�װ� ���� ���� -->
			<div class="tab-pane" id="question" role="tabpanel"
				aria-labelledby="question-tab">
				<c:forEach var="e" items="${queList}" varStatus="status">
					<!-- �ݺ��� -->
					<!-- ������ ���� ������ -->
					<div class="card mb-3" style="max-width: 90%;">
						<div class="row g-0">
							<div class="col-md-4-srch-review-img">
								<img src="${e.que_photo}" alt="...">
							</div>							
							<div class="col-md-8">
								<div class="card-body">
									<a id="card_href" href="questionDetail?que_num=${e.que_num}">
									<h5 class="card-title">${e.que_title}</h5>
									<p class="card-text_1">${e.que_content}</p>
									</a>
									<p class="card-text">									
										<small class="text-muted">${e.mem_id}</small>&nbsp;&nbsp;
										<small class="text-muted">�亯&nbsp;${e.que_ans}</small>&nbsp;&nbsp;
										<small class="text-muted">��ȸ��&nbsp;${e.que_hit}</small>
									</p>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
			<!-- �������亯 ī�װ� ���� �� -->
		</div>
		<!-- �� ������ ���� �� -->
	</div>
</section>
<a id="MOVE_TOP_BTN" href="#"><img src='https://icon-library.com/images/back-to-top-icon-png/back-to-top-icon-png-8.jpg' style='width:50px; height:auto;'></a>
</div>


<!-- owlCarousel JS-->
<script src="resources/js/owlCarousel/owl.carousel.js"></script>
<script src="resources/js/owlCarousel/owl.autoplay.js"></script>
<script>
	var owl = $('.owl-banner');
	owl.owlCarousel({
		items : 1,
		loop : true,
		margin : 10,
		autoplay : true,
		autoplayTimeout : 3000,
		autoplayHoverPause : true
	});

	var owl2 = $('.owl_group_buying');
	owl2.owlCarousel({
		items : 4,
		loop : true,
		margin : 10,
		navigation : true,
		autoplayTimeout : 3000,
		autoplayHoverPause : true
	});

	var owl_best_item = $('.owl_best_item');
	owl_best_item.owlCarousel({
		items : 4,
		loop : true,
		margin : 10,
		navigation : true,
		autoplayTimeout : 3000,
		autoplayHoverPause : true
	});

	$('.carousel .carousel-item').each(function() {
		var next = $(this).next();
		if (!next.length) {
			next = $(this).siblings(':first');
		}
		next.children(':first-child').clone().appendTo($(this));

		for (var i = 0; i < 2; i++) {
			next = next.next();
			if (!next.length) {
				next = $(this).siblings(':first');
			}

			next.children(':first-child').clone().appendTo($(this));
		}
	});
</script>
<!-- ž��ư -->
<script>
		$(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop() > 250) {
					$('#MOVE_TOP_BTN').fadeIn();
				} else {
					$('#MOVE_TOP_BTN').fadeOut();
				}
			});

			$("#MOVE_TOP_BTN").click(function() {
				$('html, body').animate({
					scrollTop : 0
				}, 150);
				return false;
			});
		});
</script>
<!-- �輼�� ����ǥ�� ���ڸ� �� �޸� ���  -->
<script type="text/javascript">
	$('.main-caption-price').each(function() {
		var price = $(this).text()
		$(this).text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));	
	});
</script>


