<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모달와플 극세사 차렵이불 그레이</title>
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
						<b>[모달와플 극세사 차렵이불 그레이]</b><br> <br> 판매가
						&nbsp&nbsp&nbsp&nbsp
						<del>81,100원</del>
						&nbsp 68,930원 &nbsp (15% OFF)<br> <br> 제조업체
						&nbsp&nbsp&nbsp&nbsp (주)엄마가 만든 집<br> <br> 원산지
						&nbsp&nbsp&nbsp&nbsp 대한민국<br> <br> 배송비
						&nbsp&nbsp&nbsp&nbsp 2,500원 (50,000원 이상 구매 시 무료)<br> <br>
						제조사 &nbsp&nbsp&nbsp&nbsp 자체제작
					</p>
					<form action="index.html" method="post">
						<select>
							<option>사이즈를 선택하세요.</option>
						</select> <select>
							<option>수량을 선택하세요.</option>
						</select> <input type="submit" value="스크랩하기" class="btn-cart">
						<input type="submit" value="결제하기">
					</form>
				</div>
			</div>
		</div>
		<div id="product">
			<div id="contents">
            <ul class="tabs">
                <li class="active" data-panel="panel1">상품정보</li>
                <li data-panel="panel2">리뷰</li>
                <li data-panel="panel3">문의</li>
                <li data-panel="panel4">배송/환불</li>
                <li data-panel="panel5">추천</li>
            </ul>
            <div id="panel1" class="panel active">상품정보를 넣어주세요</div>
            <div id="panel2" class="panel">리뷰를 넣어주세요</div>
            <div id="panel3" class="panel">문의</div>
            <div id="panel4" class="panel">배송/환불</div>
            <div id="panel5" class="panel">
            <div class="footer">
				<ul class="items">
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
								68,930원 &nbsp 15% OFF</span> 시어서커 차렵이불 줄누비 여름이불 블루
					</a></li>
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
								68,930원 &nbsp 15% OFF</span> 다이아 고밀도 60수 순면 슈퍼싱글 퀸 차렵이불세트
					</a></li>
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
								68,930원 &nbsp 15% OFF</span> 대나무 뱀부 시어서커 차렵 사계절침구
					</a></li>
					<li><a href="product.html"> <img
							src="resources/product/images/s.jpg" alt="Img"> <span><del>81,100원</del>&nbsp;
								68,930원 &nbsp 15% OFF</span> 해미 시어서커 리플 여름이불 그레이
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