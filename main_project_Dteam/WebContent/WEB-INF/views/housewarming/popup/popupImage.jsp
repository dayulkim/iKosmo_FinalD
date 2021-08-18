<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ �±��ϱ�</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="resources/resources/assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles.css" rel="stylesheet" />
    <link href="./resources/css/housewarming/housewarming.css" rel="stylesheet" />
    <link href="./resources/css/theme.css" rel="stylesheet" />
    <link href="./resources/css/theme.min.css" rel="stylesheet" />
    <!-- OwlCarousel -->
    <link rel="stylesheet" href="resources/css/owlCarousel/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/owlCarousel/owl.theme.default.min.css">
	<!-- jquery -->
    <script src="./resources/js/jquery/jquery.min.js"></script>
    <script src="./resources/js/jquery/jquery-3.6.0.js"></script>
    <script src="./resources/js/jquery/jquery-ui.js"></script>
    <script src="./resources/js/jquery/jquery-1.11.1.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script> <!-- JQuery -->

	
</head>	
<body>
	<input type="hidden" id="contentBoxOrder" value="boxOrderValue">
	<form action="sendData">
		<div class="row hwarm-popup-div" style="margin: 50px;">
			<!-- ���� ���� div -->
			<div class="col-md-4">
				<div id="imgArea">
					<img id="img" src="replaceThis" width="100%" onclick="offset_xy()">
				</div>
			</div>
			<!-- ������ �˻�â div -->
			<div class="col-md-4">
				<div class="hwarm-search-div ui-widget">
					<input type="text" id="tags" class="hwarm-search-box" placeholder="ã���ô� ��ǰ�� �Է��ϼ���">
	            </div>
	            <div id="suggest">
					<!-- �˻��� �ڵ��ϼ� ���� -->
	            </div>
			</div>
			<div class="col-md-4">
				<h5 style="margin-top: 0.7rem;">�±׵� ��ǰ</h5>
				<div id="hwarmSelectedItem">
					<!-- �±׵� ��ǰ ��� ���� -->
				</div>
			</div>
			
	
		</div>
		<!-- �����ϱ� ��ư -->
		<div class="d-flex justify-content-end">
			<button type="button" id="saveBtn" class="btn btn-outline-primary d-block w-25" style="margin-right: 3rem;">�����ϱ�</button>
		</div>
	</form>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="./resources/js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <script>
    
    // �� ��° ������ �ڽ����� ���� �޾ƿ���
    var order = $('#contentBoxOrder').val();
    
    // �˻��� �ڵ��ϼ� ���
    var tags = document.getElementById('tags');  
    tags.addEventListener('keyup', function(e) {
    	console.log(encodeURIComponent(tags.value));
		 $.ajax({			 	
	            url:'./suggestProduct',
	            data: {pro_name:encodeURIComponent(tags.value)},
	            type:'POST',
	            dataType: 'json',
	            success:function(data){	
	            	console.log(data);
	            	var html= "";
	            	for(var i in data) {
						html += "<table class=\"table suggestTable\"><tr>";
						html += '<td width="30%"><img class="suggestIMG" src="./resources/assets/img/product/'+data[i].pro_thumb+'"></td>';
						html += "<td class=\"suggestProNameTd\"><a href=\"javascript:selectItem('"
						html += data[i].pro_num;		
						html += "','"
						html += data[i].pro_name;
						html += "')\" class=\"suggestProNameA\">"
						html += data[i].pro_name;
						html += "</a></td></tr></table>";
	            	}
	            	console.log(html);
	            	document.getElementById("suggest").innerHTML = html;
	            }
	        })
	});
    
    // �˻��� �ڵ��ϼ����� ��ǰ�� �����ϸ� �±׵� ��ǰ�� �߰�
    function selectItem(num, name) {
    	console.log(num);
    	console.log(name);
		var selectedHTML = "";
		selectedHTML += "<table class=\"table suggestTable\"><tr><td width=\"0.1%\">";
		selectedHTML += "<input type=\"hidden\" class=\"selectedProNum\" value="+num+"></td>"
		selectedHTML += "<td class=\"suggestProNameTd\">"+name+"</td>";
		selectedHTML += "<td><button type=\"submit\" class=\"hwarm-cancle-btn\" onclick=\"deleteItem(this.parentNode.parentNode.parentNode.parentNode)\">����</button></td></tr></table>"
		$('#hwarmSelectedItem').append(selectedHTML);
    }
    
    // �̹��� Ŭ���� ���� �±� �߰�
    function offset_xy() {
    	var jb = $( '.editor-section' ).offset();
    	var x = parseInt(event.offsetX);
    	var y = parseInt(event.offsetY);
    	var left = $('#img').offset().left; 
    	var top = $('#img').offset().top;
    	console.log(x);
    	console.log(y);
    	$('#imgArea').append("<img src=\"resources/assets/img/tag/blue-tag.png\" href=\"\" style=\"width: 15px; position: absolute; top:"+(top+y-50)+"px; left:"+(left+x)+"px;\">");
    	$('#imgArea').append("<input class=\"offset_x\" type=\"hidden\" value="+x+">");
    	$('#imgArea').append("<input class=\"offset_y\" type=\"hidden\" value="+y+">");
    };
    
    // ������ ��� ����
    function deleteItem(input) {
    	input.remove()
    }
    
    // �θ�â���� �±׵� ��ǰ�� ��ȣ�� ����
    $('#saveBtn').click(function(){
    	console.log($('.selectedProNum').length);
		var pro_num_list = "";
		$('.selectedProNum').each(function(index,item){
			if (index == $('.selectedProNum').length-1) {
				pro_num_list += item.value;
			} else {
				pro_num_list += item.value;
				pro_num_list += "-";
			}

		});
   		opener.document.getElementsByClassName('hwd_tag')[order].value = pro_num_list;
    	self.close();
    })
    

    </script>
</body>
</html>