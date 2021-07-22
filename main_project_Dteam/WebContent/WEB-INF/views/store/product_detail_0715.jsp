<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>��޿��� �ؼ��� �����̺� �׷���</title>
<link rel="stylesheet" href="resources/product/css/style.css"
	type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
<style type="text/css">
            .tabs { margin: 0; padding: 0; }
            .tabs li { list-style-type: none; display: inline-block; background: #c7c7c7; padding: 3px 10px; color: #fff; cursor: pointer; }
            .tabs li:hover { color: #fff; background: #5294de; }
            .tabs li.active { color: #fff; background: #5294de; }
            .panel { display:none; background: #fff; border: 1px solid #c7c7c7; padding: 30px; }
            .panel.active { display:block; }
</style>
</head>
<body>
<br>
	<div id="page">
		<div id="contents">
			<div id="product">
				<div class="section">
					<ul>
						<li><a href="product.html"><img
								src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
						<li><a href="product.html"><img
								src="resources/product/images/d3.jpg" alt="thumbnail"></a></li>
						<li><a href="product.html"><img
								src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
						<li><a href="product.html"><img
								src="resources/product/images/d3.jpg" alt="thumbnail"></a></li>
						<li><a href="product.html"><img
								src="resources/product/images/d1.jpg" alt="thumbnail"></a></li>
					</ul>
					<div>
						<img src="resources/product/images/d2.jpg" alt="view">
					</div>
				</div>
				<div class="section">
					<p>
						<b>[��޿��� �ؼ��� �����̺� �׷���]</b><br> <br> �ǸŰ�
						&nbsp&nbsp&nbsp&nbsp
						<del>81,100��</del>
						&nbsp 68,930�� &nbsp (15% OFF)<br> <br> ������ü
						&nbsp&nbsp&nbsp&nbsp (��)������ ���� ��<br> <br> ������
						&nbsp&nbsp&nbsp&nbsp ���ѹα�<br> <br> ��ۺ�
						&nbsp&nbsp&nbsp&nbsp 2,500�� (50,000�� �̻� ���� �� ����)<br> <br>
						������ &nbsp&nbsp&nbsp&nbsp ��ü����
					</p>
					<form action="index.html" method="post">
						<select>
							<option>����� �����ϼ���.</option>
						</select> <select>
							<option>������ �����ϼ���.</option>
						</select> <input type="submit" value="��ũ���ϱ�" class="btn-cart">
						<input type="submit" value="�����ϱ�">
					</form>
				</div>
			</div>
		</div>
		<div id="product">
			<div id="contents">
            <ul class="tabs">
                <li class="active" data-panel="panel1">��ǰ����</li>
                <li data-panel="panel2">����</li>
                <li data-panel="panel3">����</li>
                <li data-panel="panel4">���/ȯ��</li>
                <li data-panel="panel5">��õ</li>
            </ul>
            <div id="panel1" class="panel active">��ǰ������ �־��ּ���</div>
            <div id="panel2" class="panel">���並 �־��ּ���</div>
            <div id="panel3" class="panel">����</div>
            <div id="panel4" class="panel">���/ȯ��</div>
            <div id="panel5" class="panel">
            <div class="footer">
				<ul class="items">
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
								68,930�� &nbsp 15% OFF</span> �þĿ �����̺� �ٴ��� �����̺� ���
					</a></li>
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
								68,930�� &nbsp 15% OFF</span> ���̾� ��е� 60�� ���� ���۽̱� �� �����̺Ҽ�Ʈ
					</a></li>
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
								68,930�� &nbsp 15% OFF</span> �볪�� ��� �þĿ ���� �����ħ��
					</a></li>
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100��</del>&nbsp;
								68,930�� &nbsp 15% OFF</span> �ع� �þĿ ���� �����̺� �׷���
					</a></li>
				</ul>
			</div>
            </div>
        </div>
	</div>
  </div>      
        <script type="text/javascript">
            $(document).ready(function() {
                $(".tabs li").on("click", function(e) {
                    var $contents = $(this).closest("#contents");
                    $contents.find(".tabs li.active").removeClass("active");
                    $(this).addClass("active");
                    $contents.find(".panel.active").hide();
                    $contents.find(".panel.active").removeClass("active");
                    var panelToShow = $(this).data("panel");
                    $("#" + panelToShow).show();
                    $("#" + panelToShow).addClass("active");
                });
            });
        </script>
	
	</body>
</html>