<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />
        <!-- ���� ���� -->
        <div class="container" style="margin-top: 10rem;">
            <div class="row">
                <div id="content" class="col-lg-8">
                    <!-- Post content-->
                    <article>
                        <!-- Post header-->
                        <header class="mb-4">
                        	<!-- �����̱� ��ȣ -->
                        	<input type="hidden" id="hou_num" value="${hwarm.hou_num }">
                            <!-- �����̱� ����-->
                            <h1 class="fw-bolder mb-1">${hwarm.hou_name }</h1>
							<!-- ������ ���� -->
							<div class="card bg-light" style="height: 7rem; margin-top: 2.2rem;">
								<table class="hwarm_info_table">
									<tr class="hwarm_info_table">
										<td width="25%"><i class="fas fa-home"></i> ��������:&nbsp;&nbsp;${hwarm.hou_type }</td>
										<td width="25%"><i class="fas fa-ruler-combined"></i> ���:&nbsp;&nbsp;${hwarm.hou_space }��</td>
										<td width="25%"><i class="fas fa-users"></i> �۾����:&nbsp;&nbsp;${hwarm.hou_how }</td>
										<td width="25%"><i class="fas fa-wrench"></i> �о�:&nbsp;&nbsp;${hwarm.hou_sector }</td>
									</tr>
									<tr>
										<td width="25%"><i class="fab fa-skype"></i> ��Ÿ��:&nbsp;&nbsp;${hwarm.hou_style }</td>
										<td width="25%"><i class="far fa-calendar-alt"></i> �Ⱓ:&nbsp;&nbsp;${hwarm.hou_period }��</td>
										<td width="25%"><i class="fas fa-won-sign"></i> ����:&nbsp;&nbsp;${hwarm.hou_pay }����</td>
										<td width="25%"><i class="fas fa-palette"></i> �÷���:&nbsp;&nbsp;<div style="background-color: ${hwarm.hou_tone }; height: 0.9rem; width: 2rem; display: inline-block;"></div></td>
									</tr>
								</table>
							</div>
                        </header>
                        <!-- ���� ���� -->
        	            <section class="mb-5" style="padding: 2rem;">
	                        <c:forEach var="e" items="${hdetail }" varStatus="i">
                        		<!-- �����̱� ���� -->
                        		<p class="fs-5 mb-4" style="padding-top: 4rem;">${e.hwd_content }</p>
                        		<!-- �����̱� ���� -->
	                         	<figure class="mb-4"><img class="img-fluid rounded" src="resources/uploadFile/hwarm/${e.hwd_photo }" alt="..." style="width:100%"/></figure>
	                         	<!-- �±׵� ��ǰ ���� -->
	                         	<c:forEach var="pro_thumb" items="${e.hwd_tag_photo }" varStatus="i">
	                         		<c:if test="${pro_thumb ne 'none'}">
	                         			<a href="">
	                         				<img class="img-fluid rounded tagged_pro_thumb" src="resources/assets/img/product/${pro_thumb }" alt="..." style="width:20%;"/>
	                         			</a>
	                         		</c:if>
	                         	</c:forEach>
	                        </c:forEach>
                        </section>
                    </article>
                    <!-- ��� ���� -->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <!-- Comment form-->
                                <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                <!-- Comment with nested comments-->
                                <div class="d-flex mb-4">
                                    <!-- Parent comment-->
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Commenter Name</div>
                                        If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                        <!-- Child comment 1-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                            </div>
                                        </div>
                                        <!-- Child comment 2-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                When you put money directly to a problem, it makes a good headline.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single comment-->
                                <div class="d-flex">
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Commenter Name</div>
                                        When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <!-- ���̵� ���� -->
                <div class="sidebar" style="margin-top: 5.2rem;">
                    <!-- Search widget-->
                    <div class="card mb-4" style="width: 15rem;">
                        <div class="card-header" style="vertical-align: middle;">
                        	<!-- ����: ȸ�� ������ �̹��� -->
                        	<div class="card-header-left" style="width: 30%; float: left">
                        		<img src="resources/uploadFile/profile/${hwarm.mem_profile }" style="width: 4rem; border-radius: 10rem; float:left;">
                        	</div>
                        	<!-- ������: ȸ�����̵�� ����� -->
                        	<div class="card-header-right" style="width: 70%; float: right;">
                        		<p style="line-height: 40%; font-size: 1.5rem; margin-left: 0.8rem; margin-top:1rem;">${hwarm.mem_id }</p>
                        		<p style="line-height: 100%; font-size: 0.8rem; margin-left: 0.8rem;">${hwarm.hou_rdate } </p>
                        	</div>
                       	</div>
                       	<!-- ��ũ��, ���ƿ�, ���� ��ư -->
                        <div class="card-body" style="text-align: center;">
                       		<button href=""  class="hdetail-btn" id="hdetail-scrap-btn"><i class="far fa-bookmark"></i></button>
                       		<button href="" class="hdetail-btn" id="hdetail-like-btn"><i class="far fa-heart"></i></button>
                       		<button href="" class="hdetail-btn" id="hdetail-share-btn"><i class="far fa-share-square"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
        // ���� �޼��忡�� ���������� ����ϴ� ������ ��ȣ
        var hou_num = $('#hou_num').val();
        
     	// DOM �ε��� �Ϸ�Ǹ� �ش� ��ȸ���� �α��� ����, ���ƿ�/�Ⱦ�並 ���� ���¸� �޾ƿͼ� ��Ÿ���� �����Ѵ�.
        $(document).ready(function() {
        	 // �����̱��� ��ȣ
        	$.ajaxSetup({cache: false}); // ajax������ ĳ�ð� �����̹Ƿ� ���� ĳ�ø� ������
        	$.ajax({
        		url:"currHwarmStatus?hou_num="+hou_num,
        		// �����ϸ� data�� �޾ƿ��� �����ϸ� error�� ������ �ݹ��Լ�.
        		type: 'get',
        		success: function(result) {
        			console.log(result);
        			if(result.login=='login') { // �α��ε� ������ ���� �Ʒ� ���� ����===========================
        				var like = JSON.parse(result.like);
        				var scrap = JSON.parse(result.scrap);
        				if(like==1) { // ��ȸ�ڰ� �̹� ���ƿ並 ������ ���̶�� -------------------------
        					$('#hdetail-like-btn').html('<i class="fas fa-heart"></i>'); // ä���� ���ƿ� ��ư���� ����
        				}
        				if(scrap==1) { // ��ȸ�ڰ� �̹� ��ũ���ߴ� ���̶�� -------------------------
        					$('#hdetail-scrap-btn').html('<i class="fas fa-bookmark"></i>'); // ä���� ��ũ�� ��ư���� ����
        				}
        			}
        		},
        		error: function(e) {
        			console.log("error:"+e);
        		}
        	})

        });
     	
     	// ���ƿ� ��ư�� ������ Ajax�� RESTful API�� ���ƿ� �߰� �Ǵ� ���
      	$('#hdetail-like-btn').click(function(){
      		$.ajaxSetup({cache: false}); // ajax������ ĳ�ð� �����̹Ƿ� ���� ĳ�ø� ������
      		$.ajax({
      			url:"clickHwarmLike?hou_num="+hou_num,
      			type: 'get',
      			// �����ϸ� jsondata�� �޾ƿ´�.
      			success: function(result) {
      				console.log(result);
      				if(result.login=='unlogin') { // �α��� �� �� ������ ��� ===========================
      					alert('�α��� �� ���ƿ並 ������ �� �ֽ��ϴ�.');
      				} else if (result.login=='login') { // �α��� ������ ��� =========================
          				if(result.status==1) { // ���ƿ並 �߰��ߴٸ�
          					$('#hdetail-like-btn').html('<i class="fas fa-heart"></i>'); // ä���� ���ƿ� ��ư���� ����
          				} else { // ���ƿ並 ����� ���
          					$('#hdetail-like-btn').html('<i class="far fa-heart"></i>'); // ����� ���ƿ� ��ư���� ����
          				}
      				}
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
      	});
     	
     	// ��ũ�� ��ư�� ������ Ajax�� RESTful API�� ��ũ���Ͽ� �߰� �Ǵ� ���
      	$('#hdetail-scrap-btn').click(function(){
      		$.ajaxSetup({cache: false}); // ajax������ ĳ�ð� �����̹Ƿ� ���� ĳ�ø� ������
      		$.ajax({
      			url:"clickHwarmScrap?hou_num="+hou_num,
      			type: 'get',
      			// �����ϸ� jsondata�� �޾ƿ´�.
      			success: function(result) {
      				console.log(result);
      				if(result.login=='unlogin') { // �α��� �� �� ������ ��� ===========================
      					alert('�α��� �� ���ƿ並 ������ �� �ֽ��ϴ�.');
      				} else if (result.login=='login') { // �α��� ������ ��� =========================
          				if(result.status==1) { // ��ũ�� �߰��ߴٸ�
          					$('#hdetail-scrap-btn').html('<i class="fas fa-bookmark"></i>'); // ä���� ��ũ�� ��ư���� ����
          				} else { // ��ũ�� ����� ���
          					$('#hdetail-scrap-btn').html('<i class="far fa-bookmark"></i>'); // ����� ��ũ�� ��ư���� ����
          				}
      				}
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
      	});

        </script>