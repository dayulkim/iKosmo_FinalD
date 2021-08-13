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
                                <!-- ��� �Է�â -->
                                <form class="mb-4">
                                	<textarea id="comment_textarea" class="form-control" rows="3" placeholder="����� ���ܺ�����." style="resize: none;"></textarea>
                                </form>
                                <button id="comm_input_btn" style="width: 100%; border-radius: 1rem; border: none; height: 3rem; background-color: #b2d8d8; margin-bottom: 2rem;">���</button> 
                                <!-- ��� ��� -->
                                <div id="comment_list" style="word-wrap: break-word;">
                                	<c:forEach var="comment" items="${hcomment }">
                                		<c:if test="${comment.depth_num == 0}">
	                                		<!-- �θ� ��� -->
			                                <div class="parent_comment d-flex" id="${comment.comm_num }" style="margin-top: 2rem;">
			                                    <div class="flex-shrink-0"><img class="rounded-circle" style="width: 3rem;" src="resources/uploadFile/profile/${comment.mem_profile }" alt="..." /></div>
			                                    <div class="ms-3">
			                                        <div class="fw-bold">
			                                        	<span>${comment.mem_id }
			                                        		<span class="float-end">
																	&nbsp;&nbsp;<span><a class="reply" style="color: #428bca; text-decoration: none;"><i class="fas fa-reply"></i> Reply</a></span>
															</span>
			                                        	</span>
			                                        </div>
			                                        ${comment.comm_content }
			                                    </div>
			                                </div>
		                                </c:if>
		                                <c:if test="${comment.depth_num == 1}">
		                                	<!-- �ڽ� ��� -->
		                        	        <div class="child_comment" style="margin-left: 4rem;">
		                                        <div class="d-flex mt-4">
		                                            <div class="flex-shrink-0"><img class="rounded-circle" style="width: 3rem;" src="resources/uploadFile/profile/${comment.mem_profile }" alt="..." /></div>
		                                            <div class="ms-3">
		                                                <div class="fw-bold">${comment.mem_id }</div><!-- �ڽ� ��� �ۼ��� ���̵� -->
		                                               ${comment.comm_content }
		                                            </div>
		                                        </div>
		                                    </div>
		                                </c:if>
                                	</c:forEach>
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
     	
     	// ��� ��� ��ư
     	$('#comm_input_btn').click(function(){
     		comment = $('#comment_textarea').val();
     		console.log("���: "+comment);
     		$.ajaxSetup({cache: false}); // ajax������ ĳ�ð� �����̹Ƿ� ���� ĳ�ø� ������
      		$.ajax({
      			url:"insertHouseComment",
      			data: {hou_num:hou_num, comment:encodeURIComponent(comment), depth_num:0},
	            type:'POST',
      			// �����ϸ� jsondata�� �޾ƿ´�.
      			success: function(result) {
      				console.log(result);
      				var comment_html = "";
      				comment_html += "<div class=\"parent_comment d-flex\" id=\""+parseInt(result.comm_num)+"\" style=\"margin-top: 2rem;\">"
      				comment_html += "<div class=\"flex-shrink-0\">"
   					comment_html += "<img class=\"rounded-circle\" src=\"resources/uploadFile/profile/"+result.profile+"\" style=\"width: 3rem;\"/></div>" 
      				comment_html += "<div class=\"ms-3\">"
    				comment_html += "<div class=\"fw-bold\"><span>"+result.mem_id // �θ� ��� �ۼ��� ���̵�
    				comment_html += "<span class=\"float-end\">&nbsp;&nbsp;<span><a class=\"reply\" style=\"color: #428bca; text-decoration: none;\">"
    				comment_html += "<i class=\"fas fa-reply\"></i> Reply</a></span></span></span></div>"
    				comment_html += comment // �θ� ��� ����
    				comment_html += "</div></div>" 		
					$('#comment_list').append(comment_html); // ���ο� ��� ���̱�
    				$('#comment_textarea').val(''); // textarea ���� 
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
     	});
     	
     	// ��� reply ��ư�� ������ �� ��� �Է�â ����
     	$(document).on("click", ".reply", function(){
     		var reply_html = '<div class="input-group mb-3" style="margin-top: 1rem;">'
     		reply_html += '<input type="text" class="form-control">';
     		reply_html += '<button class="btn btn-outline-secondary reply_btn" type="button" style="border-radius: 0rem; border: 0.5px solid #999999;">���</button></div>';
     		$(this).parent().parent().parent().parent().parent().parent().after(reply_html);
     		
     	});
     	
     	// reply ��� ��ư�� ������ �ڽ� ��� ����ϱ�
     	$(document).on("click", ".reply_btn", function(){
			reply = $(this).siblings('input[type=text]').val(); // ��� ���� �޾ƿ���
			index = $('.parent_comment').index($(this).parent().prev('div')); // ���簡 �� ��° �θ� ������� �ε��� �ľ�
			last_index = $('.parent_comment').index($('.parent_comment').last()); // ���� ������ �θ� ����� �ε��� 
			console.log(index + ':' +last_index)
			par_comm_numm = $(this).parent().prev('div').attr('id'); // �θ� ����� comm_num
			console.log(par_comm_numm);
			reply_box = $(this).parent(); // ��� �ڽ�
			$.ajaxSetup({cache: false}); // ajax������ ĳ�ð� �����̹Ƿ� ���� ĳ�ø� ������
      		$.ajax({
      			url:"insertHouseComment",
      			data: {hou_num:hou_num, comment:encodeURIComponent(reply), depth_num:1, par_comm_numm: par_comm_numm},
	            type:'POST',
      			// �����ϸ� jsondata�� �޾ƿ´�.
      			success: function(result) {
      				console.log(result);
      				var comment_html = "<div class=\"child_comment\" style=\"margin-left: 4rem;\">";
      				comment_html += "<div class=\"d-flex mt-4\">";
      				comment_html += "<div class=\"flex-shrink-0\">"; 
    				comment_html += "<img class=\"rounded-circle\" style=\"width: 3rem;\" src=\"resources/uploadFile/profile/"+result.profile+"\"/></div>";
    				comment_html += "<div class=\"ms-3\"><div class=\"fw-bold\">"+result.mem_id+"</div>";
    				comment_html += reply
    				comment_html += "</div></div></div>"
    				if (index==last_index) {
    					$('#comment_list').append(comment_html); // ������ �θ� ��� �ڿ� �ڽ� ��� �߰�
    				} else {
    					$('.parent_comment').eq(index+1).before(comment_html); // ���� �θ� ��� ��� �տ� �ڽ� ��� �߰�
    				}
   					reply_box.remove(); // ��� ����� �Ǹ� ��� �ڽ� �ݱ�
      			},
      			error: function(e) {
      				console.log("error:"+e);
      			}
      		})
     	});


        </script>