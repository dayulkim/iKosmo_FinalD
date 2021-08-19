<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
              <div class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
                <div class="d-md-flex align-items-center">
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 3rem;"><img class="rounded-circle" src="${memvo.mem_profile}" alt="${memvo.mem_id}"></div>
                  <div class="ps-md-3">
                    <h3 class="fs-base mb-0">${memvo.mem_name}</h3><span class="text-accent fs-sm">${memvo.mem_id}</span>
                  </div>
                </div><a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0" href="#account-menu" data-bs-toggle="collapse" aria-expanded="false"><i class="fas fa-user-circle"></i>&nbsp;&nbsp;���������� �޴�</a>
              </div>
              <div class="d-lg-block collapse" id="account-menu">
              	<div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY����</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="mypage"><i class="fas fa-info-circle opacity-60"></i>&nbsp;&nbsp;�⺻����</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="survey"><i class="fas fa-poll opacity-60"></i>&nbsp;&nbsp;�߰�����</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY����</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="cart"><i class="fas fa-shopping-cart opacity-60"></i>&nbsp;&nbsp;��ٱ���</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="orders"><i class="far fa-credit-card opacity-60"></i>&nbsp;&nbsp;���ų���</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MYĿ�´�Ƽ</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="scrapbook"><i class="fas fa-bookmark opacity-60"></i>&nbsp;&nbsp;��ũ����</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="myqna"><i class="fas fa-question-circle opacity-60"></i>&nbsp;&nbsp;���� ������ �亯</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MYģ��</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_queue"><i class="fas fa-user-clock opacity-60"></i>&nbsp;&nbsp;ģ�� ��� ���</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_list"><i class="fas fa-user-friends opacity-60"></i>&nbsp;&nbsp;���� ģ�� ���</a></li>
                </ul>
              </div>
            </div>
          </aside>

		<!-- �߰����� ���� ����  -->
		<section class="col-lg-8">

			<!-- �߰����� ���ڵ�� ���� -->
			<div class="accordion" id="accordionExample">

				<!-- ���ڵ�� ������ 1 ���� : ���� ��� �� 1 -->
				<div class="accordion-item">
					<!-- ���� ��� �� �̸� -->
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							<i class="fas fa-home opacity-60"></i>&nbsp;&nbsp;���� ���� �����
							&nbsp;&nbsp;&nbsp;<span class="badge rounded-pill bg-success">Main</span>
						</button>
					</h2>
					<!-- ���ڵ�� ������ 1 ����: ���� ��� �� 1�� �� ���� -->
					<div class="accordion-collapse collapse show" id="collapseOne"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<!-- Description list alignment -->
							<dl class="row">
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">��������</dt>
								<dd class="col-sm-9">����</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">���</dt>
								<dd class="col-sm-9">23��</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">��Ÿ��</dt>
								<dd class="col-sm-9">�δ���Ʈ����</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">��������</dt>
								<dd class="col-sm-9">�̱۶�����</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">���ٹ̱� ����</dt>
								<dd class="col-sm-9">�̴ϸָ���</dd>
								<dt class="col-sm-3 fw-bold"
									style="font-family: NANUMSQUAREROUNDR">��������</dt>
								<dd class="col-sm-9">����</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>

			<!-- �߰����� �Է� ��ư  -->
			<div class="col-12">
				<div
					class="d-flex flex-wrap justify-content-end align-items-end mt-4">
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
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="hou_type">�ְ�����</label> <select
							id="hou_type" name="hou_type" class="form-select">
							<option value="0">�ְ�����</option>
							<option value="1">����</option>
							<option value="2">���ǽ���</option>
							<option value="3">����&����</option>
							<option value="4">����Ʈ</option>
							<option value="5">�ܵ�����</option>
							<option value="6">��������</option>
							<option value="7">�������</option>
							<option value="8">�繫����</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">���</label>
						<div class="input-group">
							<input id="hou_space" name="hou_space" type="number"
								class="form-control"> <span class="input-group-text">��</span>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">��Ÿ��</label> <select
							class="form-select" id="checkout-country">
							<option value="0">��Ÿ��</option>
							<option value="1">���</option>
							<option value="2">�̴ϸ�&����</option>
							<option value="3">���߷�&������</option>
							<option value="4">��Ƽ��&��Ʈ��</option>
							<option value="5">Ŭ����&��ƽ</option>
							<option value="6">����ġ&���ι潺</option>
							<option value="7">����&�θ�ƽ</option>
							<option value="8">�δ���Ʈ����</option>
							<option value="9">�ѱ�&�ƽþ�</option>
							<option value="10">����ũ&�ͽ���ġ</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">��������</label> <select
							class="form-select" id="checkout-country">
							<option value="0">��������</option>
							<option value="1">�̱۶�����</option>
							<option value="2">��ȥ/�κΰ� ��� ��</option>
							<option value="3">�ڳడ �ִ� ��</option>
							<option value="4">�θ�԰� �Բ� ��� ��</option>
							<option value="5">�����Ʈ�� �Բ� ��� ��</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="animal">�ݷ����� ����</label>
						<div id="animal">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="ex-radio-4"
									name="radio2" checked> <label class="form-check-label"
									for="ex-radio-4">����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="ex-radio-5"
									name="radio2"> <label class="form-check-label"
									for="ex-radio-5">����</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">�� �ٹ̱� ����</label>
						<select class="form-select" id="checkout-country">
							<option value="0">�� �ٹ̱� ����</option>
							<option value="1">�̴ϸָ���</option>
							<option value="2">�ǿ�����</option>
							<option value="3">�ƽøָ���</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="checkout-country">���� ����</label> <select
							class="form-select" id="checkout-country">
							<option value="0">���� ����</option>
							<option value="1">������ �߽�</option>
							<option value="2">������ �߽�</option>
							<option value="3">�귣�� �߽�</option>
							<option value="4">����Ƽ �߽�</option>
							<option value="5">Ʈ���� �߽�</option>
						</select>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mb-3">
						<label class="form-label" for="activity">������ �ַ� �ϴ� Ȱ��</label>
						<div id="activity">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-4">
								<label class="form-check-label" for="ex-check-4">����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">��</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">�丮</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">Ȩī��</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" id="ex-check-5">
								<label class="form-check-label" for="ex-check-5">��ȭ��Ȱ</label>
							</div>
						</div>
					</div>
				</div>
				<!-- �߰����� �����ϱ� ��ư -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary d-block w-100">�����ϱ�</button>
				</div>
			</div>
		</div>
	</div>
</div>






<!-- Back To Top Button-->
<a class="btn-scroll-top" href="#top" data-scroll><span
	class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
	class="btn-scroll-top-icon ci-arrow-up"> </i></a>
<!-- Vendor scrits: js libraries and plugins-->
<script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="vendor/simplebar/dist/simplebar.min.js"></script>
<script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
<script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="js/theme.min.js"></script>