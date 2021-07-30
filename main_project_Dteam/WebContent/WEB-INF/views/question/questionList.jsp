<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
#searching, #searching1, #searching2, #searching3 { 
		width: 200px; /* ���ϴ� �ʺ��� */ 
		padding: .8em .5em; /* �������� ���� ���� */ 
		font-family: inherit; /* ��Ʈ ��� */ 
		background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* ����Ƽ�� ȭ��ǥ ��ü */ 
		border: 1px solid #999; 
		border-radius: 0px; /* iOS �ձٸ𼭸� ���� */ 
		-webkit-appearance: none; /* ����Ƽ�� ���� ���߱� */ 
		-moz-appearance: none; 
		appearance: none; 
		}
		
#queBtn{
	margin-left: 400px;
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	background-color:#33bdef;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
}

#queBtn:hover {
	background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
	background-color:#019ad2;
}
#queBtn:active {
	position:relative;
	top:1px;
}


<!-- Ű���� ���� ó�� -->

 .answer {
    display: none;
    padding-bottom: 30px;
  }
  
  .answer a{
  	font-size: 20px;
  	color:blue;
  }
  
  #faq-title {
    font-size: 25px;
  }
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  .question {
    font-size: 19px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
  .question:hover {
    color: #2962ff;
  }
  [id$="-toggle"] {
    margin-right: 15px;
  }
  
  #que_ans {
  	border-radius: 15px 15px 15px 0; 
  	border: 3px solid #FFAD5B; 
  	padding: 0.5em 0.6em; 
  	color: #FF8000;
  }
  
</style>

	<link rel="stylesheet" href="//static.fmkorea.com/modules/board/skins/sketchbook5_elkha/css/board.css?c=1625228155" type="text/css" media="all" />
	<link rel="stylesheet" href="//static.fmkorea.com/widgets/fmkorea_best/style_pc.css?c=1612601066" type="text/css" media="all" />
	
	<link rel="stylesheet" media="all" href="https://static.ohou.se/assets/v3/bucket_ui/bucket_ui-cf437a161bdb44b28d08d72550bb85e52b07cf425b26f21c6c412cc524af5a4c.css" />
 	<link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/bucket_ui/components-aba4a2f67926f213a42ac70be01cb690e099b8322468e5f451fb06854a9eac80.css" />
    <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/layout/application-6814eb17cb4c84e6066646d6cecedcb0b90c45a7437bfa8bba4a6bc12fc399ba.css" />
    <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/16-aae64295.chunk.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/17-308f2ccf.chunk.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/27-35a9b55c.chunk.css" />
	<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/LayoutNavigation-4ba33238.chunk.css" />
    <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/LayoutFooter-f168f0e7.chunk.css" />
    <script src="https://static.ohou.se/assets/v3/application-953ea3b89ad0acf78b24ec7b1a52be54f920c0a42f5bb12e0840d55eab7c6160.js"></script>
  
    <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/bucket_ui/components-aba4a2f67926f213a42ac70be01cb690e099b8322468e5f451fb06854a9eac80.css" />
    <script src="https://static.ohou.se/assets/v3/components-6019c7548988bcd561b81198c535da7f6212a74ec466624fb2c30c9030a2809e.js"></script>

    <link rel="stylesheet" media="screen" href="https://static.ohou.se/assets/v3/questions/index-ea34be3df938c51181a985989be56659c97304fd499eef3e8d1c632533eeb23a.css" />
    <script src="https://static.ohou.se/assets/v3/questions/index-e89779dc7777925af0dce2ea756e6d45ccc1095cecc242eb97f8d6f4a1dde0cc.js"></script>


<main role="main" id="root">
<div id="questions-index-page">
  <section id="questions-header">
    <div class="container">
      <div class="questions-header__title">
        <h1 class="text-heading-1 text-black bold">
          ������ �亯
        </h1>
        <p class="text-caption-1">
          �������� ���׸��� ������ �������鿡�� ������ ��������.
        </p>
      </div>
      <c:choose>
		<c:when test="${type eq 2}">
			<form id="questions-header__form" class="sticky-top" action="naquestionList" method="get">
		        <div class="sticky-content">
		          <div class="questions-header__form__wrap row">
		            <div class="questions-header__form__search col">
		              <span class="icon icon-etc-find-sm-gray-dark search" style="left: 15px; top: 40%;"></span>
						<input type="text" id="key" name="key" required="required" placeholder="����/Ÿ��Ʋ, Ű���带 �˻��غ�����!" style="width:460px; height: 40px;">
						<select id="searching" name="search">
							<option value="0">Ű����</option>
							<option value="1">���� + ����</option>
						</select>&nbsp; 
		            </div>
		          </div>
		        </div>
			</form>      
			
			<div class="faq-content">
					  <button class="question" id="que-1">
					  <span id="que-1-toggle">+</span>
					  <span>Ű���� �˻�</span>
					  </button>
					  <div class="answer" id="ans-1" style="display: none">
					  <table>	
						<tr>
							<th>
								<p>Ű���� ����</p>
							</th>
						</tr>
						<tr>
							<th>
								<p style="margin: 0;">�Ϲ�</p><br>
								<a href="naquestionList?key=���𵨸�/����">#���𵨸�/����</a> &nbsp; 
								<a href="naquestionList?key=����">#����</a> &nbsp;
								<a href="naquestionList?key=��ü��õ">#��ü��õ</a> &nbsp; 
								<a href="naquestionList?key=�������׸���">#�������׸���</a> &nbsp; 
								<br>
								<a href="naquestionList?key=��ȥ">#��ȥ</a>&nbsp;
								<a href="naquestionList?key=����">#����</a> &nbsp; 
								<a href="naquestionList?key=��������õ">#��������õ</a> &nbsp; 
								<hr>
							</th>
						</tr>
						<tr>
							<th>
								<p style="margin: 0;">����</p><br>
								<a href="naquestionList?key=������ġ/�̵�">#������ġ/�̵�</a> &nbsp; 
								<a href="naquestionList?key=����/��ũ��">#����/��ũ��</a> &nbsp;
								<a href="naquestionList?key=�����">#�����</a> &nbsp; 
								<a href="naquestionList?key=����">#����</a> &nbsp;
								<a href="naquestionList?key=��Ź">#��Ź</a> &nbsp; 
								<br>
								<a href="naquestionList?key=ħ��">#ħ��</a> &nbsp;
								<a href="naquestionList?key=������">#������</a> &nbsp; 
								<a href="naquestionList?key=TV">#TV</a> &nbsp;
								<a href="naquestionList?key=����">#����</a>&nbsp;
								<a href="naquestionList?key=��Ÿ����">#��Ÿ����</a> &nbsp; 
								<hr>
							</th>
						</tr>
						
						<tr>
							<th>
								<p style="margin: 0;">����</p><br>
								<a href="naquestionList?key=�ܵ�����">#�ܵ�����</a> &nbsp; 
								<a href="naquestionList?key=����Ʈ">#����Ʈ</a> <br>
								<a href="naquestionList?key=��">#��</a> &nbsp; 
								<a href="naquestionList?key=����">#���� </a> &nbsp;
								<hr>
							</th>
						</tr>
					</table>
					  
					  </div>
					</div>
		</c:when>
		<c:otherwise>
			<form id="questions-header__form" class="sticky-top" action="questionSearch" method="get">
		        <div class="sticky-content">
		          <div class="questions-header__form__wrap row">
		            <div class="questions-header__form__search col">
		              <span class="icon icon-etc-find-sm-gray-dark search" style="left: 15px; top: 40%;"></span>
						<input type="text" id="key" name="key" required="required" placeholder="����/Ÿ��Ʋ, Ű���带 �˻��غ�����!" style="width:460px; height: 40px;">
						<select id="searching" name="search">
							<option value="0">Ű����</option>
							<option value="1">���� + ����</option>
						</select>&nbsp; 
		            </div>
		          </div>
		        </div>
			</form>      
			
			<div class="faq-content">
					  <button class="question" id="que-1">
					  <span id="que-1-toggle">+</span>
					  <span>Ű���� �˻�</span>
					  </button>
					  <div class="answer" id="ans-1" style="display: none">
					  <table>	
						<tr>
							<th>
								<p>Ű���� ����</p>
							</th>
						</tr>
						<tr>
							<th>
								<p style="margin: 0;">�Ϲ�</p><br>
								<a href="questionSearch?key=���𵨸�/����">#���𵨸�/����</a> &nbsp; 
								<a href="questionSearch?key=����">#����</a> &nbsp;
								<a href="questionSearch?key=��ü��õ">#��ü��õ</a> &nbsp; 
								<a href="questionSearch?key=�������׸���">#�������׸���</a> &nbsp; 
								<br>
								<a href="questionSearch?key=��ȥ">#��ȥ</a>&nbsp;
								<a href="questionSearch?key=����">#����</a> &nbsp; 
								<a href="questionSearch?key=��������õ">#��������õ</a> &nbsp; 
								<hr>
							</th>
						</tr>
						<tr>
							<th>
								<p style="margin: 0;">����</p><br>
								<a href="questionSearch?key=������ġ/�̵�">#������ġ/�̵�</a> &nbsp; 
								<a href="questionSearch?key=����/��ũ��">#����/��ũ��</a> &nbsp;
								<a href="questionSearch?key=�����">#�����</a> &nbsp; 
								<a href="questionSearch?key=����">#����</a> &nbsp;
								<a href="questionSearch?key=��Ź">#��Ź</a> &nbsp; 
								<br>
								<a href="questionSearch?key=ħ��">#ħ��</a> &nbsp;
								<a href="questionSearch?key=������">#������</a> &nbsp; 
								<a href="questionSearch?key=TV">#TV</a> &nbsp;
								<a href="questionSearch?key=����">#����</a>&nbsp;
								<a href="questionSearch?key=��Ÿ����">#��Ÿ����</a> &nbsp; 
								<hr>
							</th>
						</tr>
						
						<tr>
							<th>
								<p style="margin: 0;">����</p><br>
								<a href="questionSearch?key=�ܵ�����">#�ܵ�����</a> &nbsp; 
								<a href="questionSearch?key=����Ʈ">#����Ʈ</a> <br>
								<a href="questionSearch?key=��">#��</a> &nbsp; 
								<a href="questionSearch?key=����">#���� </a> &nbsp;
								<hr>
							</th>
						</tr>
					</table>
					  
					  </div>
					</div>
		</c:otherwise>
	</c:choose>

			<div class="questions-header__keywords row">
		        <input id="questions-header__keywords__toggle" class="questions-header__keywords__toggle" type="checkbox">
		      </div>
		    </div>
		  </section>
  
  				<div class="fm_best_widget _bd_pc">
					<section id="questions-notice-list" class="container">
						
						<div style="padding-bottom: 50px; padding-top: 20px;">
						<c:choose>
								<c:when test="${type eq 1}">
									<select id="searching2" name="sort" onchange="keysort()">
										<option value="">����</option>
										<option value="0">�ֽż�</option>
										<option value="1">��ȸ����</option>
									</select>&nbsp;
								</c:when>
								<c:when test="${type eq 2}">
									<select id="searching3" name="sort" onchange="anssort()">
										<option value="">����</option>
										<option value="0">�ֽż�</option>
										<option value="1">��ȸ����</option>
									</select>&nbsp;
								</c:when>
								<c:otherwise>
									<select id="searching1" name="sort" onchange="sort()">
										<option value="">����</option>
										<option value="0">�ֽż�</option>
										<option value="1">��ȸ����</option>
									</select>&nbsp;
								</c:otherwise>
							</c:choose>
						
							<c:choose>
								<c:when test="${type eq 2}">
									<input type="button" value="��ü ����" id="queBtn" onclick="location='questionList'">
								</c:when>
								<c:otherwise>
									<input type="button" value="�亯 ��� ����" id="queBtn" onclick="location='naquestionList'">
								</c:otherwise>
							</c:choose>
							<input type="button" value="�����ϱ�" id="queBtn" style="margin-left: 10px" onclick="location='questionForm'">
					    </div>
					
						<div>
						<c:choose>
							<c:when test="${msg eq null}">
								<h2>���� ���</h2>
							</c:when>
							<c:otherwise>
								<h2>${msg }</h2>
							</c:otherwise>
						</c:choose>
						
						
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
										<c:choose>
											<c:when test="${e.que_ans eq 0}">
												<p><span id="que_ans">�亯 �����</span></p>
											</c:when>
											<c:otherwise>
												<!-- <p><span id="que_ans"></span></p> -->
											</c:otherwise>
										</c:choose> 
										<br>
									</td>
								</tr>
								<tr>
									<td>
									<c:set var="keyword" value="${fn:split(e.que_keyword, ',')}"/>
											<c:forEach var="i" items="${keyword }">
									<c:choose>
										<c:when test="${type eq 2}">
											<a href="naquestionList?key=${i}">#${i}</a>	
										</c:when>
										<c:otherwise>
											<a href="questionSearch?key=${i}">#${i}</a>	
										</c:otherwise>
									</c:choose>
										
												
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
										<span class="author"> /��ȸ�� ${e.que_hit }</span>	
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
						<c:choose>
								<c:when test="${type eq 1}">
									<%@include file="PageProcess2.jsp" %>
								</c:when>
								<c:when test="${type eq 2}">
									<%@include file="PageProcess3.jsp" %>
								</c:when>
								<c:otherwise>
									<%@include file="PageProcess.jsp" %>
								</c:otherwise>
							</c:choose>
						</div>
					
		    <ol class="questions-notice-list__list">
		        <li class="questions-notice-list__list__entry">
		          <a href="/questions/2378">
		            <span class="icon icon-etc-announcement-md"></span>
		            <span class="title text-body-1">�������� ���׸��� ���並 ����������</span>
		</a>        </li>
		        <li class="questions-notice-list__list__entry">
		          <a href="/questions/3703">
		            <span class="icon icon-etc-announcement-md"></span>
		            <span class="title text-body-1">�亯 �̺�Ʈ �ȳ� �� Ȱ�� ���ǻ��� </span>
		</a>        </li>
		        <li class="questions-notice-list__list__entry">
		          <a href="/questions/12549">
		            <span class="icon icon-etc-announcement-md"></span>
		            <span class="title text-body-1">������ ��Ȯ�� ���׸��� �亯�� �޴� �����?</span>
		</a>        </li>
		    </ol>
		  </section>

</div>
<div class="bd">
<div class="btm_mn clear">	
<div class="fl">
<!-- ���� ��ư, �˻� �ϴ� ������ ���� -->
<!-- 
<input type="button" value="�����ϱ�" onclick="location='questionForm'" id="Qestionbtn">
<form method="post" action="questionSearch">
	<input type="text" id="key" name="key" required="required">
	<select id="searching" name="search">
		<option value="0">Ű����</option>
		<option value="1">���� + ����</option>
	</select>&nbsp; 
	<input type="submit" value="�˻�">
</form>
 -->
		</div>
</div></div>
</div>

  <div id="questions-filter-sort-modal" class="modal fade fade-done modal-filter">
    <div class="modal-dialog" role="document" style="">
        

    </div>
</div>
</div>

<div id="scroll_to_top" class="">
  <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" viewBox="0 0 45 45"><g fill="none" fill-rule="evenodd"><circle cx="22.5" cy="22.5" r="22.5" fill="#FEFFFE" fill-opacity="90%"></circle><path d="M12.5 12.5h20v20h-20z"></path><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M16 20l6.5-6 6.5 6m-6.5-5v15.999"></path></g></svg>
</div>

<div id="modal-question-write" class="modal fade fade-done">
    <div class="modal-dialog" role="document" style="">
        
  <div class="modal-question-write__content">
    <a class="btn btn-lg btn-priority modal-question-write__content__button" href="/questions/new">���׸��� �����ϱ�</a>
    <a class="btn btn-lg btn-priority modal-question-write__content__button" href="/contact_us">���� �� ��� ����</a>
  </div>

    </div>
</div>
</main>


<script charset="euc-kr">
	// qeustion Ŭ������ ���� ��ư�� ������ ���ɶ� (������ 1���� �����)
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
  
  function sort(){
	  const sort = $('#searching1').val();
	  window.location.href = "questionList?sort=" + sort;
  }
  
  function anssort(){
	  const sort = $('#searching3').val();
	  var sortv = "sort=" + sort;
	  var url = document.location.href;
	  var params = {};
	    url.replace(/[?&]{1}([^=&#]+)=([^&#]*)/g, function(s, k, v) { params[k] = v; });
	    let klist = Object.keys(params);
		let vlist = Object.values(params);
		if(klist[0] == "key"){
			window.location.href = "naquestionList?key=" + vlist[0] + "&" + sortv;
		}else{
			window.location.href = "naquestionList?" + sortv;
		}
		
  }
  
  function keysort(){
	  const sort = $('#searching2').val();
	  var sortv = "&sort=" + sort;
	  var url = document.location.href;
	  var params = {};
	    url.replace(/[?&]{1}([^=&#]+)=([^&#]*)/g, function(s, k, v) { params[k] = v; });
	    let klist = Object.keys(params);
		let vlist = Object.values(params);
		for(var i = 0; i< klist.length; i++){
			console.log(vlist[i] + ":" + klist[i])
		}
		window.location.href = "questionSearch?key=" + vlist[0] + sortv;
		
  }
</script>


