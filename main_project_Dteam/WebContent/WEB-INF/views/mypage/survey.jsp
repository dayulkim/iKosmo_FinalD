<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Body-->

<!-- ���������� ��� ��� -->
<div class="page-title-overlap pt-4"
	style="margin-top: 8rem; background-color: #F2F3F4;">
	<div class="container d-lg-flex justify-content-between py-2 py-lg-3">
		<div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
			<nav aria-label="breadcrumb">
				<ol
					class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-start">
					<li class="breadcrumb-item"><a class="text-nowrap"
						href="index.html"><i class="fas fa-address-card opacity-60"></i>&nbsp;&nbsp;����������</a></li>
				</ol>
			</nav>
		</div>
		<div class="order-lg-1 pe-lg-4 text-center text-lg-start">
			<h1 class="h3 mb-0" style="font-family: NanumGothic-Bold;">����������</h1>
		</div>
	</div>
</div>
<div class="container pb-5 mb-2 mb-md-4">
	<div class="row">

		<!-- Sidebar-->
		<aside class="col-lg-4 pt-4 pt-lg-0 pe-xl-5">
			<div class="bg-white rounded-3 shadow-lg pt-1 mb-5 mb-lg-0">
				<div
					class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
					<div class="d-md-flex align-items-center">
						<div
							class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0"
							style="width: 3rem;">
							<img class="rounded-circle" src="${memvo.mem_profile}"
								alt="${memvo.mem_id}">
						</div>
						<div class="ps-md-3">
							<h3 class="fs-base mb-0">${memvo.mem_name}</h3>
							<span class="text-accent fs-sm">${memvo.mem_id}</span>
						</div>
					</div>
					<a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0"
						href="#account-menu" data-bs-toggle="collapse"
						aria-expanded="false"><i class="fas fa-user-circle"></i>&nbsp;&nbsp;����������
						�޴�</a>
				</div>
				<div class="d-lg-block collapse" id="account-menu">
					<div class="bg-secondary px-4 py-3">
						<h3 class="fs-sm mb-0 text-muted">MY����</h3>
					</div>
					<ul class="list-unstyled mb-0">
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="mypage"><i class="fas fa-info-circle opacity-60"></i>&nbsp;&nbsp;�⺻����</a></li>
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="survey"><i class="fas fa-poll opacity-60"></i>&nbsp;&nbsp;�߰�����</a></li>
					</ul>
					<div class="bg-secondary px-4 py-3">
						<h3 class="fs-sm mb-0 text-muted">MY����</h3>
					</div>
					<ul class="list-unstyled mb-0">
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="cart"><i class="fas fa-shopping-cart opacity-60"></i>&nbsp;&nbsp;��ٱ���</a></li>
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="orders"><i class="far fa-credit-card opacity-60"></i>&nbsp;&nbsp;���ų���</a></li>
					</ul>
					<div class="bg-secondary px-4 py-3">
						<h3 class="fs-sm mb-0 text-muted">MYĿ�´�Ƽ</h3>
					</div>
					<ul class="list-unstyled mb-0">
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="scrapbook"><i class="fas fa-bookmark opacity-60"></i>&nbsp;&nbsp;��ũ����</a></li>
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="myqna"><i class="fas fa-question-circle opacity-60"></i>&nbsp;&nbsp;����
								������ �亯</a></li>
					</ul>
					<div class="bg-secondary px-4 py-3">
						<h3 class="fs-sm mb-0 text-muted">MYģ��</h3>
					</div>
					<ul class="list-unstyled mb-0">
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="friends_queue"><i class="fas fa-user-clock opacity-60"></i>&nbsp;&nbsp;ģ��
								��� ���</a></li>
						<li class="border-bottom mb-0"><a
							class="nav-link-style d-flex align-items-center px-4 py-3"
							href="friends_list"><i class="fas fa-user-friends opacity-60"></i>&nbsp;&nbsp;����
								ģ�� ���</a></li>
					</ul>
				</div>
			</div>
		</aside>

		<!-- �߰����� ���� ����  -->
		<section class="col-lg-8">
<c:forEach var="house_info" items="${house_info }" varStatus="i" >
			<!-- �߰����� ���ڵ�� ���� -->
			<div class="accordion" id="accordionExample">

				<!-- ���ڵ�� ������ 1 ���� : ���� ��� �� 1 -->
				
					<div class="accordion-item">
						<!-- ���� ��� �� �̸� -->

						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne${i.index }"
								aria-expanded="true" aria-controls="collapseOne">
								<i class="fas fa-home opacity-60"></i>&nbsp;&nbsp;���� ���� ����� 
								&nbsp;&nbsp;&nbsp;<span class="badge rounded-pill bg-success">Main</span>
							</button>
						</h2>
						<!-- ���ڵ�� ������ 1 ����: ���� ��� �� 1�� �� ���� -->

						<div class="accordion-collapse collapse show" id="collapseOne${i.index }"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<!-- Description list alignment -->
								<dl class="row">
									<c:if test="${house_info.hinfo_type!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">��������</dt>
										<dd class="col-sm-9">${house_info.hinfo_type}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_size!=null }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">���</dt>
										<dd class="col-sm-9">${house_info.hinfo_size}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_style!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">��Ÿ��</dt>
										<dd class="col-sm-9">${house_info.hinfo_style}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_with!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">��������</dt>
										<dd class="col-sm-9">${house_info.hinfo_with}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_tend!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">���ٹ̱� ����</dt>
										<dd class="col-sm-9">${house_info.hinfo_tend}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_buytend!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">���� ����</dt>
										<dd class="col-sm-9">${house_info.hinfo_buytend}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_activity!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">�� Ȱ��</dt>
										<dd class="col-sm-9">${house_info.hinfo_activity}</dd>
									</c:if>
									<c:if test="${house_info.hinfo_favour!='0' }">
										<dt class="col-sm-3 fw-bold"
											style="font-family: NANUMSQUAREROUNDR">��ȣ��</dt>
										<dd class="col-sm-9">${house_info.hinfo_favour}</dd>
									</c:if>
								</dl>
							</div>
							<button class="btn btn-accent mt-3 mt-sm-0 hinf_del-btn"
								value="${house_info.hinfo_num }" style="text-align: right;">����</button>

						</div>
		
			</div>
			
	</div>
		</c:forEach>


	<!-- �߰����� �Է� ��ư  -->
	<div class="col-12">
		<div class="d-flex flex-wrap justify-content-end align-items-end mt-4">
			<button class="btn btn-accent mt-3 mt-sm-0 house_info_add-btn"
				href="#survey_modal" data-bs-toggle="modal" type="button">�߰�����
				�Է�</button>
		</div>
	</div>

	</section>
</div>
</div>
</main>


<!-- �߰� ���� �Է� Modal -->
<div class="modal" tabindex="-1" role="dialog" id="survey_modal">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">�߰����� �Է�</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>

			<div class="modal-body tab-content py-4">
				<form action="houseinfoinsert" method="post">
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_type">�ְ�����</label> <select
								id="hinfo_type" name="hinfo_type" class="form-select">
								<option value="0">�ְ�����</option>
								<option value="����">����</option>
								<option value="���ǽ���">���ǽ���</option>
								<option value="����&����">����&����</option>
								<option value="����Ʈ">����Ʈ</option>
								<option value="�ܵ�����">�ܵ�����</option>
								<option value="��������">��������</option>
								<option value="�������">�������</option>
								<option value="�繫����">�繫����</option>
							</select>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_size">���</label>
							<div class="input-group">
								<input id="hinfo_size" name="hinfo_size" type="number"
									class="form-control"> <span class="input-group-text">��</span>
							</div>
						</div>
					</div>

					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_style">��Ÿ��</label> <select
								class="form-select" id="hinfo_style" name="hinfo_style">
								<option value="0">��Ÿ��</option>
								<option value="���">���</option>
								<option value="�̴ϸ�&����">�̴ϸ�&����</option>
								<option value="���߷�&������">���߷�&������</option>
								<option value="��Ƽ��&��Ʈ��">��Ƽ��&��Ʈ��</option>
								<option value="Ŭ����&��ƽ">Ŭ����&��ƽ</option>
								<option value="����ġ&���ι潺">����ġ&���ι潺</option>
								<option value="����&�θ�ƽ">����&�θ�ƽ</option>
								<option value="�δ���Ʈ����">�δ���Ʈ����</option>
								<option value="�ѱ�&�ƽþ�">�ѱ�&�ƽþ�</option>
								<option value="����ũ&�ͽ���ġ">����ũ&�ͽ���ġ</option>
							</select>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_with">��������</label>
							<div id="family">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-1" name="hinfo_with" value="�̱۶�����"> <label
										class="form-check-label" for="with-check-1">�̱۶�����</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-2" name="hinfo_with" value="��ȥ�κ�"> <label
										class="form-check-label" for="with-check-2">��ȥ�κ�</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-3" name="hinfo_with" value="�Ʊ�"> <label
										class="form-check-label" for="with-check-3">�Ʊ�</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-4" name="hinfo_with" value="���� �ڳ�"> <label
										class="form-check-label" for="with-check-4">���� �ڳ�</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-5" name="hinfo_with" value="���� �ڳ�"> <label
										class="form-check-label" for="with-check-5">���� �ڳ�</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-6" name="hinfo_with" value="�θ��"> <label
										class="form-check-label" for="with-check-6">�θ��</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="with-check-7" name="hinfo_with" value="�ݷ�����"> <label
										class="form-check-label" for="with-check-7">�ݷ�����</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_tend">�� �ٹ̱� ����</label> <select
								class="form-select" id="hinfo_tend" name="hinfo_tend">
								<option value="0">�� �ٹ̱� ����</option>
								<option value="�̴ϸָ���">�̴ϸָ���</option>
								<option value="�ǿ�����">�ǿ�����</option>
								<option value="�ƽøָ���">�ƽøָ���</option>
							</select>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_buytend">���� ����</label> <select
								class="form-select" id="hinfo_activity" name="hinfo_buytend">
								<option value="0">���� ����</option>
								<option value="������">������ �߽�</option>
								<option value="������">������ �߽�</option>
								<option value="�귣��">�귣�� �߽�</option>
								<option value="����Ƽ">����Ƽ �߽�</option>
								<option value="Ʈ����">Ʈ���� �߽�</option>
							</select>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_activity">������ �ַ� �ϴ�
								Ȱ��</label>
							<div id="activity">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="activity-check-1" name="hinfo_activity" value="�ܼ�����">
									<label class="form-check-label" for="activity-check-1">�ܼ�����</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="activity-check-2" name="hinfo_activity" value="Ȩ�׼�(�&��ŷ)">
									<label class="form-check-label" for="activity-check-2">Ȩ�׼�(�&��ŷ)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="activity-check-3" name="hinfo_activity" value="Ȩ��ũ(����&�繫)">
									<label class="form-check-label" for="activity-check-3">Ȩ��ũ(����&�繫)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="activity-check-4" name="hinfo_activity"
										value="��ȭ��Ȱ(��û&����)"> <label class="form-check-label"
										for="activity-check-4">��ȭ��Ȱ(��û&����)</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="mb-3">
							<label class="form-label" for="hinfo_favour">��ȣ��</label>
							<div id="activity">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="favour-check-1" name="hinfo_favour" value="����"> <label
										class="form-check-label" for="favour-check-1">����</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="favour-check-2" name="hinfo_favour" value="������"> <label
										class="form-check-label" for="favour-check-2">������</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="favour-check-3" name="hinfo_favour" value="������"> <label
										class="form-check-label" for="favour-check-3">������</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										id="favour-check-4" name="hinfo_favour" value="����"> <label
										class="form-check-label" for="favour-check-4">����</label>
								</div>
							</div>
						</div>
					</div>
					<input type="submit" class="btn btn-primary d-block w-100"
						value="�����ϱ�">
				</form>
			</div>

		</div>
	</div>
</div>







<!-- Back To Top Button-->
<a class="btn-scroll-top" href="#top" data-scroll><span
	class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
	class="btn-scroll-top-icon ci-arrow-up"> </i></a>
<!-- Vendor scrits: js libraries and plugins-->

<script src="resources/vendor/simplebar/dist/simplebar.min.js"></script>
<script src="resources/vendor/tiny-slider/dist/min/tiny-slider.js"></script>
<script
	src="resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="resources/js/theme.min.js"></script>
<script>
	$('.hinf_del-btn').click(function() {
		var hinfo_num = $(this).val();
		location.href = "houseinfo_del?hinfo_num=" + hinfo_num
	});
</script>