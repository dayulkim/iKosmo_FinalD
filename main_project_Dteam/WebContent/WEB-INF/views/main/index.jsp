<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/main/main.css">
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
            	<div class="row">
            		<!-- ȫ�� ��� ���� -->
            		<div class="col-md-9">
        			 	<div class="owl-carousel owl-theme owl-banner">
				            <div class="item">
			              		<img src="resources/assets/img/demo/demo1.jpg"/>
				            </div>
				            <div class="item">
			            		<img src="resources/assets/img/demo/demo2.jpg"/>
				            </div>
				            <div class="item">
			              		<img src="resources/assets/img/demo/demo3.jpg"/>
				            </div>
				            <div class="item">
			              		<img src="resources/assets/img/demo/demo4.jpg"/>
				            </div>
			          	</div>
            		</div>
            		<!-- �α� �˻��� ���� -->
            		<div class="col-md-3">
            			<table class=" table table-hover table-condensed" style="font-size: 12px; height:90%; margin-top: 5%; margin-bottom:5%;">
            				<thead>
            					<tr><th colspan="2" style="text-align: left;"><h6>�ǽð� �α� �˻���</h6></th></tr>
            				</thead>
            				<tbody>
            					<c:forEach var="slogvo" items="${top10Search }" varStatus="i">
            						<tr style="vertical-align: middle;">
            							<td style="width: 25%"><em>${i.count }</em></td>
            							<td style="width: 75%" onclick="location.href='srchRes?key=${slogvo.slog_word }'">${slogvo.slog_word }</td>
            						</tr>
            					</c:forEach>
            				</tbody>
            			</table>
            		</div>
            	</div>

            </div>
        </header>

        <!-- �α� Ű���� ��ǰ -->
        <section class="page-section bg-light" id="keyword-section">
           <div class="container">
              <h4 class="section-heading text-uppercase" style="margin-bottom:2rem;">�α� Ű����</h4>
              <div class="row">
                 <c:forEach var="i" begin="1" end="4" step="1" varStatus="status"> <!-- �ݺ��� -->
                    <div class="col-md-3">
                           <div style="position: relative; width: 100%; padding-bottom: 70%; overflow: hidden;  border-radius: 1rem;">
                              <a href="" id="keyword_a_${i}">
                                <img class="img-fluid main_pro_thumb keyword-item" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162546070347891451.jpg?gif=1&w=640&h=640&c=c&webp=1"/>
                                <div class="text-center" style="position: absolute; top: 50%; left: 50%; transform: translate( -50%, -50% );">
                                   <h5 class="keyword-item" id="keyword_h5_${i}"></h5>
                                </div>
                             </a>
                         </div>
                      </div>
                   </c:forEach>
                </div>
           </div>
        </section>
        
        <!-- ����Ʈ ��ǰ ���� -->
        <section class="page-section main-best-item">
            <div class="container">
                <h4 class="section-heading text-uppercase" style="margin-bottom:2rem;">����Ʈ</h4>
                <!-- �� �޴� ���� -->
                <ul class="nav nav-tabs" style="margin-bottom: 2rem;" role="tablist">
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a active"  id="furniture-tab" data-bs-toggle="tab" data-bs-target="#furniture" role="tab" aria-controls="furniture" aria-selected="true">����</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#fabric" role="tab" aria-selected="false" data-bs-toggle="tab">�к긯</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#deco" role="tab" aria-selected="false" data-bs-toggle="tab">Ȩ����/����</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#elect" role="tab" aria-selected="false" data-bs-toggle="tab">����</a>
				  </li>
 				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#clean" role="tab" aria-selected="false" data-bs-toggle="tab">����/����</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#living" role="tab" aria-selected="false" data-bs-toggle="tab">��Ȱ</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#kitchen" role="tab" aria-selected="false" data-bs-toggle="tab">�ֹ�</a>
				  </li>
  				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#necessity" role="tab" aria-selected="false" data-bs-toggle="tab">����ǰ</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#diy" role="tab" aria-selected="false" data-bs-toggle="tab">DIY/����</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#service" role="tab" aria-selected="false" data-bs-toggle="tab">�ð�/����</a>
				  </li>
  				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#pet" role="tab" aria-selected="false" data-bs-toggle="tab">�ݷ�����</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#camp" role="tab" aria-selected="false" data-bs-toggle="tab">ķ��</a>
				  </li>
				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#train" role="tab" aria-selected="false" data-bs-toggle="tab">ȨƮ���̴�</a>
				  </li>
  				  <li class="nav-item" role="presentation">
				    <a class="nav-link main-best-li-a" data-bs-target="#kids" role="tab" aria-selected="false" data-bs-toggle="tab">����/�Ƶ�</a>
				  </li>
				</ul>
				<!-- ����Ʈ ������ �� ������ ���� -->
				<div class="tab-content">
				<!-- ���� ī�װ� ���� ���� -->
                <div class="tab-pane active" id="furniture" role="tabpanel" aria-labelledby="furniture-tab"> 
               		<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
                	<!-- ����Ʈ ��ǰ ���� ������-->
                        <div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162425849265128705.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>  
                    </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->       
                </div> <!-- ���� ī�װ� ���� �� -->
   				<!-- �к긯 ī�װ� ���� ���� -->
                <div class="tab-pane" id="fabric" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162546070347891451.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- �к긯 ī�װ� ���� �� -->
                <!-- Ȩ����/���� ī�װ� ���� ���� -->
                <div class="tab-pane" id="deco" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/161067890612870477.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- Ȩ����/���� ī�װ� ���� �� -->
                <!-- ���� ī�װ� ���� ���� -->
                <div class="tab-pane" id="elect" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162573632997246373.png?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ���� ī�װ� ���� �� -->
                <!-- ����/���� ī�װ� ���� ���� -->
                <div class="tab-pane" id="clean" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162570734656859146.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ����/���� ī�װ� ���� �� -->
                <!-- ��Ȱ ī�װ� ���� ���� -->
                <div class="tab-pane" id="living" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162518683719338204.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ��Ȱ ī�װ� ���� �� -->
                <!-- �ֹ� ī�װ� ���� ���� -->
                <div class="tab-pane" id="kitchen" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/162630891896015873.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- �ֹ� ī�װ� ���� �� -->
                <!-- ����ǰ ī�װ� ���� ���� -->
                <div class="tab-pane" id="necessity" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/162633306430826775.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ����ǰ ī�װ� ���� �� -->
                <!-- DIY/���� ī�װ� ���� ���� -->
                <div class="tab-pane" id="diy" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161535907813043549.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- DIY/���� ī�װ� ���� �� -->
                <!-- �ð�/���� ī�װ� ���� ���� -->
                <div class="tab-pane" id="service" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161829372185871751.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- �ð�/���� ī�װ� ���� �� -->
                <!-- �ݷ����� ī�װ� ���� ���� -->
                <div class="tab-pane" id="pet" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162632703889991820.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- �ݷ����� ī�װ� ���� �� -->
                <!-- ķ�� ī�װ� ���� ���� -->
                <div class="tab-pane" id="camp" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162028786001036364.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ķ�� ī�װ� ���� �� -->
                <!-- ȨƮ���̴� ī�װ� ���� ���� -->
                <div class="tab-pane" id="train" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162250784733684758.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ȨƮ���̴� ī�װ� ���� �� -->
                <!-- ����/�Ƶ� ī�װ� ���� ���� -->
                <div class="tab-pane" id="kids" role="tabpanel">
                	<div class="row">
                	<c:forEach var="i" begin="0" end="3" step="1" varStatus="status"> <!-- �ݺ��� -->
						<!-- ����Ʈ ��ǰ ���� ������ -->
                		<div class="col-md-3 main-item" style="padding: 2rem;">
                            <a href="#mainModal4">
                                <div style="position: relative; width: 100%; padding-bottom: 100%; overflow: hidden;">
                                	<div class="rank-badge bg-blue text-white position-absolute">${status.count }</div>
                               		<img class="img-fluid main_pro_thumb" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/161423989750732950.jpg?gif=1&w=640&h=640&c=c&webp=1" style="position: absolute; border-radius: 1rem;" alt="..." />
                                </div>
                            </a>
                            <div class="main-caption">
                            	<a href="" style="text-decoration: none">
                            		<p class="main-caption-seller">��Ŀ����</p>
                                	<p class="main-caption-name">����Ʈ ǮĿ�� �к긯 �߼� ���� �Ⱓ����Ư�� (3��~5��)</p>
                                	<span class="main-caption-discount">30%</span>
                                	<span class="main-caption-price">30,000��</span>
                                </a>
                            </div>
                        </div><!-- ����Ʈ ��ǰ ���� ������ ���� �� -->
                    </c:forEach> 
                    </div>       
                </div> <!-- ����/�Ƶ� ī�װ� ���� �� -->
                </div> <!-- �� ������ ���� �� -->
            </div>
        </section>        

        <!-- owlCarousel JS-->
        <script src="resources/js/owlCarousel/owl.carousel.js"></script>
        <script src="resources/js/owlCarousel/owl.autoplay.js"></script>
        <script>
        $(document).ready(function() {
          $.ajaxSetup({cache: false}); 
          $.ajax({
             url: 'http://192.168.1.104:8099/housewarming/loadKeywordJsonp?callback', 
              type:'GET',
              dataType:'jsonp',
              jsonp:'callback',
              success: function(data){
                  console.log(data.columns);
                  console.log('***********************************')
                  console.log(data.data);
                  var keyword_list = data.data;
                 for (var i=1; i<5; i++) {
                    // a href �±׿� ��� �־��ֱ�
                    console.log(keyword_list[i-1][0])
                    var a_id = "#keyword_a_"+i
                    var h5_id = "#keyword_h5_"+i
                   $(a_id).attr('href','srchRes?key='+keyword_list[i-1][0])
                   $(h5_id).text('#'+data.data[i-1][0])
                   // 
                 }
              },
              error:function(data){
                 console.log("error>>"+data)
              }
          })
        });
        
        
	        var owl = $('.owl-banner');
	        owl.owlCarousel({
	            items:1,
	            loop:true,
	            margin:10,
	            autoplay:true,
	            autoplayTimeout:3000,
	            autoplayHoverPause:true
	        });
	        
	        var owl2 = $('.owl_group_buying');
	        owl2.owlCarousel({
	            items:4,
	            loop:true,
	            margin:10,
	            navigation: true,
	            autoplayTimeout:3000,
	            autoplayHoverPause:true
	        });
	        
	        var owl_best_item = $('.owl_best_hwarm');
	        owl_best_hwarm.owlCarousel({
	            items:4,
	            loop:true,
	            margin: 10,
	            navigation: true,
	            autoplayTimeout:3000,
	            autoplayHoverPause:true
	        });
        </script>

