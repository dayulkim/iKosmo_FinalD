<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href="resources/css/question/question.css" rel="stylesheet" />
<!-- Body-->
<!-- ȸ�� Ÿ��Ʋ ����-->
<div class="pt-4" style="margin-top: 8rem; background-color: #F2F3F4;">
	<div class="container justify-content-center py-2 py-lg-3">
		<div class="row">
			<div class="col-lg-12 order-lg-1 pe-lg-4 text-center text-lg-start">
				<h1 class="h3 mb-2" style="font-family: NANUMSQUARE_ACL;"
					align="center">������ �亯</h1>
				<p align="center">�ٸ��� Ȩ��! ���׸��� ����鿡�� ������ �޾ƺ�����</p>
			</div>
		</div>
		<!-- �˻��� -->
		<div class="row mb-3 mt-4 justify-content-center">
			<div class="col-lg-2">
				<select class="form-select" id="searching" name="search">
					<option value="0">Ű����</option>
					<option value="1">���� + ����</option>
				</select>
			</div>
			<div class="col-lg-7">
				<input class="form-control" type="text" id="key" name="key"
					placeholder="����/Ÿ��Ʋ, Ű���带 �˻��غ�����!" required>
			</div>
		</div>
		<!-- ���� �˻��� Ű���� -->
		<div class="row justify-content-center">
			<div class="col-lg-9 widget">
			  <a href="#" class="btn-tag me-2 mb-2 btn-light">#���𵨸�/����</a>
			  <a href="#" class="btn-tag me-2 mb-2 btn-light">#�������׸���</a>
			</div>
		</div>
		<c:choose>
			<c:when test="${mkeylist eq null}">
				<c:forEach var="i" items="${keylist}">
					<a class="que_keyword" href="naquestionList?key=${i }">#${i }</a> &nbsp;
				</c:forEach>	
			</c:when>
			<c:otherwise>
				<c:forEach var="i" items="${mkeylist}">
					<a class="que_keyword" href="naquestionList?key=${i }">#${i }</a> &nbsp;
				</c:forEach>	
			</c:otherwise>
		</c:choose>
		
		<!-- Ű���� �˻� -->
		<div class="row justify-content-center mb-4">
			<div class="col-lg-9 accordion accordion-flush border-bottom"
				id="accordionFlushExample">
				<!-- Item -->
				<div class="accordion-item">
					<h2 class="accordion-header" id="flush-headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
							aria-expanded="true" aria-controls="flush-collapseOne">+
							Ű���� �˻�</button>
					</h2>
					<div class="accordion-collapse collapse"
						id="flush-collapseOne" aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th scope="row" style="width: 10%">�Ϲ�</th>
											<td>
												<a class="que_keyword" href="naquestionList?key=���𵨸�/����">#���𵨸�/����</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=����">#����</a> &nbsp;
												<a class="que_keyword" href="naquestionList?key=��ü��õ">#��ü��õ</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=�������׸���">#�������׸���</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=��ȥ">#��ȥ</a>&nbsp;
												<a class="que_keyword" href="naquestionList?key=����">#����</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=��������õ">#��������õ</a> &nbsp; 
											</td>
										</tr>
										<tr>
											<th scope="row" style="width: 10%">����</th>
											<td>
												<a class="que_keyword" href="naquestionList?key=������ġ/�̵�">#������ġ/�̵�</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=����/��ũ��">#����/��ũ��</a> &nbsp;
												<a class="que_keyword" href="naquestionList?key=�����">#�����</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=����">#����</a> &nbsp;
												<a class="que_keyword" href="naquestionList?key=��Ź">#��Ź</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=ħ��">#ħ��</a> &nbsp;
												<a class="que_keyword" href="naquestionList?key=������">#������</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=TV">#TV</a> &nbsp;
												<a class="que_keyword" href="naquestionList?key=����">#����</a>&nbsp;
												<a class="que_keyword" href="naquestionList?key=��Ÿ����">#��Ÿ����</a> &nbsp;
											</td>
										</tr>
										<tr>
											<th scope="row" style="width: 10%">����</th>
											<td>
												<a class="que_keyword" href="naquestionList?key=�ܵ�����">#�ܵ�����</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=����Ʈ">#����Ʈ</a> 
												<a class="que_keyword" href="naquestionList?key=��">#��</a> &nbsp; 
												<a class="que_keyword" href="naquestionList?key=����">#���� </a> &nbsp;
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ��� ���� ���� -->
<div class="mt-5" style="background-color: #fff;">
	<div class="container">
		<!-- ����, �亯 ��� ���� ��ư, �����ϱ� ��ư ���� -->
		<div class="row d-flex justify-content-between">
			<div class="col-lg-2" style="margin-left: 3rem;">
				<select class="form-select" id="searching" name="search">
					<option value="">����</option>
					<option value="0">�ֽż�</option>
					<option value="1">��ȸ����</option>
				</select>
			</div>
			<div  class="col-lg-3" style="margin-right: 3rem;">
				<!-- Normal outline button -->
				<button type="button" class="btn btn-info">�亯 ��� ����</button>
				<button type="button" class="btn btn-info">�����ϱ�</button>
			</div>
		</div>
		<!-- ���� Ŭ���� �� ���� -->
		<!-- ���� ��� ���� -->
		<div class="row d-flex justify-content-center align-items-center mt-0">
		<section class="row col-lg-10 d-flex justify-content-between align-items-center border-bottom">
			<c:forEach begin="1" end="5">
				<!-- ���� Item-->
	            <div class=" d-flex mb-4 pb-3 pb-sm-2 col-lg-7 align-items-center">
	              <div class="d-block d-sm-flex align-items-start text-center text-sm-start ">
	              	<a class="d-block flex-shrink-0 mx-auto me-sm-4" style="width: 10rem;">
	              		<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159002759911888401.jpg?gif=1&w=640&h=640&c=c">
	              	</a>
	                <div class="pt-2">
	                  <h3 class="product-title mb-4"><a href="shop-single-v1.html">���� ����</a></h3>
	                  <div>
	                  	<a class="fs-sm text-accent" href="#">#�ؽ��±�</a>
	                  	<a class="fs-sm text-accent" href="#">#�ؽ��±�</a>
	                  	<a class="fs-sm text-accent" href="#">#�ؽ��±�</a>
	                  </div>
	                  <div class="fs-6 mt-1">���� �׽�Ʈ �� �׸� ���۰���?</div>
	                  <div class="fs-sm mt-1">2021-08-18 00:31:42&nbsp; �� &nbsp;��ȸ�� 3</div>
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-3">
	            	<div class="d-flex justify-content-end align-items-center">
	            		<img src="resources/uploadFile/profile/iu.jpg" class="img-thumbnail rounded-circle" style="width: 3rem;">
	            		<div class="d-sm-flex justify-content-end">
	            		&nbsp;&nbsp;iu_leejieun
	            		</div>
	            	</div>
	            	<div class="d-flex justify-content-end mt-3">
	            		<span class="badge bg-success badge-shadow lead p-2">�亯 �����</span>
	            	</div>
	            </div>
	            <hr class="col-lg-12">
            </c:forEach>
		</section>
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