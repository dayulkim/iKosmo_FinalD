<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />
<style>
ul.myMenu>li {
   display: inline-block;
   width: 115px;
   text-align: center;
   position: relative;
}

select {
   width: 115px;
   padding: 5px;
   border: 1px solid #999;
   font-family: 'Nanumgothic';
   border-radius: 4px;
}
</style>
</head>
<body>
   <div class="container" style="margin-top: 10rem; margin-bottom: 5rem;">

   <!--   ==================       ���͸�  start             ======================== -->
   <form action="community" method="get">
      <ul class="myMenu" style="padding-left:0rem;">
         <li><select id="hou_order" name="hou_order" >
               <option value="0" hidden>����</option>
               <option value="1">�ֱټ�</option>
               <option value="2">�α��</option>
               <option value="3">���ż�</option>
         </select></li>

         <li><select id="hou_type" name="hou_type">
               <option value="0" hidden>�ְ�����</option>
               <option value="1">����Ʈ</option>
               <option value="2">����&���ǽ���</option>
			   <option value="3">����&����</option>
			   <option value="4">�ܵ�����</option>
			   <option value="5">�繫����</option>
			   <option value="6">�������</option>
			   <option value="7">��Ÿ</option>
         </select></li>

         <li><select id="hou_space" name="hou_space">
               <option value="0" hidden>���</option>
               <option value="1">10���</option>
               <option value="2">20���</option>
               <option value="3">30���</option>
               <option value="4">40���</option>
               <option value="5">50���̻�</option>
         </select></li>

         <li><select id="hou_pay" name="hou_pay">
               <option value="0" hidden>����</option>
               <option value="1">�鸸������</option>
               <option value="2">1�鸸����</option>
               <option value="3">2�鸸����</option>
               <option value="4">3�鸸����</option>
               <option value="5">4�鸸����</option>
               <option value="6">5�鸸����</option>
               <option value="7">5�鸸�̻�</option>
         </select></li>

         <li><select id="hou_how" name="hou_how">
               <option value="0" hidden>�۾����</option>
               <option value="1">����</option>
               <option value="2">�ݼ���</option>
               <option value="3">������</option>
         </select></li>

         <li><select id="hou_style" name=hou_style>
               <option value="0" hidden>��Ÿ��</option>
               <option value="1">���߷�</option>
               <option value="2">���</option>
               <option value="3">�̴ϸ�&����</option>
               <option value="4">��Ƽ��&��Ʈ��</option>
               <option value="5">������</option>
               <option value="6">����ũ&�ͽ���ġ</option>
               <option value="7">����&�θ�ƽ</option>
               <option value="8">Ŭ����&��ƽ</option>
               <option value="9">����ġ&���ι潺</option>
               <option value="10">�ѱ�&�ƽþ�</option>
               <option value="11">�δ���Ʈ����</option>
         </select></li>

         <li><select id="hou_tone" name="hou_tone" onchange='change_background_color(this);'>
               <option value="0" hidden>�÷���</option>
               <option value="1" style="background-color: #fff4e6"></option>
               <option value="2" style="background-color: #ffd3b6"></option>
               <option value="3" style="background-color: #e0a899"></option>
               <option value="4" style="background-color: #604439"></option>
               <option value="5" style="background-color: #e74c3c"></option>
               <option value="6" style="background-color: #f0c75e"></option>
               <option value="7" style="background-color: #a0d6b4"></option>
               <option value="8" style="background-color: #4b86b4"></option>
               <option value="9" style="background-color: #505050"></option>
               <option value="10" style="background-color: #000000"></option>
         </select></li>

         <li><input type="submit" onclick="getParameter()" value="�˻��ϱ�"
            class="button"></li>
         <li>
			<button type="button" id="hwarm_write_btn" class="btn btn-primary rounded-pill" style="margin-left: 6rem;">
				�����̱� �ۼ��ϱ�
			</button>
         </li>

      </ul>
   </form>
   <!--  ==================     ���͸�   end     ======================== -->

   <!--  ==================     �˻����      start  =======================  -->
      <div class="row" style="margin-top: 4rem;">
         <c:forEach var="listv" items="${list}">
            <div class="col-md-3" style="padding: 1rem;">
				<div style="position: relative; width: 100%; padding-bottom: 70%; overflow: hidden;  ">
                  <a href="hwarm_detail?hou_num=${listv.hou_num}"> <!-- �̹��� Ŭ���� �̵��� �󼼺��� �ּ� -->
                     <img src="${listv.hou_thumb}" style="position: absolute; width:100%; border-radius: 1rem;">
                  </a>
                 </div>
                 <h5 style="margin-top: 1rem;">
                    <a href="hwarm_detail?hou_num=${listv.hou_num}" style="color: #2c2f33;"> ${listv.hou_name} </a>
                 </h5>
                 <span><img class="main-hwarm-img" src="resources/uploadFile/profile/${listv.memvo.mem_profile}"></span>
                 <span class="main-caption-price">${listv.memvo.mem_nickname}</span>
                 <p>��ũ�� : ${listv.hou_scrap} &nbsp; �� &nbsp; ��ȸ�� : ${listv.hou_hit}</p>
            </div>
         </c:forEach>
      </div>

   <!--  ==================     �˻����      end  =======================  -->
   </div>
</body>




<!-- Bootstrap core JS-->
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="resources/js/jquery.min.js"></script>
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

   function change_background_color(o) {
      o.style.backgroundColor = o.children[o.selectedIndex].style.backgroundColor;
   }
   
   // ���� �ε��� �Ϸ�Ǹ� ����Ʈ �ڽ��� ���õ� ������ �ٲ�� �� 
   $(document).ready(function() {
	   let params = (new URL(document.location)).searchParams;
	   let hou_order = parseInt(params.get('hou_order'));
	   $('select#hou_order option[value='+hou_order+']').attr('selected', 'selected');
	   let hou_type = parseInt(params.get('hou_type'));
	   $('select#hou_type option[value='+hou_type+']').attr('selected', 'selected');
	   let hou_space = parseInt(params.get('hou_space'));
	   $('select#hou_space option[value='+hou_space+']').attr('selected', 'selected');
		let hou_pay = parseInt(params.get('hou_pay'));
		$('select#hou_pay option[value='+hou_pay+']').attr('selected', 'selected');
		let hou_how = parseInt(params.get('hou_how'));
		$('select#hou_how option[value='+hou_how+']').attr('selected', 'selected');
		let hou_style = parseInt(params.get('hou_style'));
		$('select#hou_style option[value='+hou_style+']').attr('selected', 'selected');
		let hou_tone = parseInt(params.get('hou_tone'));
		$('select#hou_tone option[value='+hou_tone+']').attr('selected', 'selected');
		let color = $('select#hou_tone option[value='+hou_tone+']').css("background-color");
		$('select#hou_tone').css("background-color", color);
   });
   
   // �����̱� �ۼ��ϱ� ��ư�� ������ �����̱� �ۼ��������� ������ ��
   $('#hwarm_write_btn').click(function(){
	   $(location).attr("href","hwarm_write")
   })
   


</script>
