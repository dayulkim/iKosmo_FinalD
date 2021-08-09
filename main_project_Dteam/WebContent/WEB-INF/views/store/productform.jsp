<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>E Store - eCommerce HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

<!-- Favicon -->
<link href="resources/planb/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="resources/planb/lib/slick/slick.css" rel="stylesheet">
<link href="resources/planb/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/planb/css/style.css" rel="stylesheet">
</head>

<body>

	

	<!-- Breadcrumb Start -->
	<div class="breadcrumb-wrap">
		
		<!-- Bottom Bar Start -->
		<div class="bottom-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-6">
						<div class="search">
							<input type="text" placeholder="Search">
							<button>
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
					<div class="col-md-3">
						<div class="user">
							<a href="scrapform" class="btn wishlist"> <i
								class="fa fa-heart"></i> <span>(0)</span>
							</a> <a href="cartform" class="btn cart"> <i
								class="fa fa-shopping-cart"></i> <span>(0)</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Bottom Bar End -->
	</div>
	<!-- Breadcrumb End -->

	<!-- Wishlist Start -->
	<div class="wishlist-page">
		<div class="container-fluid">
			<div class="wishlist-page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead class="thead-dark">
									<tr>
										<th>Product</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Add to Cart</th>
										<th>Scrap</th>
									</tr>
								</thead>
								<tbody class="align-middle">
								<c:forEach var="e" items="${plist }">
									<tr>
										<td>
											<div class="img">
												<a href="#"><img src="resources/planb/img/product-6.jpg"
													alt="Image"></a>
												<p>${e.pro_name }</p>
											</div>
										</td>
										<td>${e.pro_price }원</td>
										<td>
											<div class="qty">
												<button class="btn-minus">
													<i class="fa fa-minus"></i>
												</button>
												<input type="text" id="car_qty" name="car_qty" value="1">
												<button class="btn-plus">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</td>
										<td><button class="btn-cart" onclick="addcart()">Add to Cart</button></td>
										<td>
										<input type="hidden" id="pro_num" name="pro_num" value="${e.pro_num }">
										<input type="button" id="scrapBtn" name="scrapBtn" value="Do" onclick="location='productscrap?pro_num=${e.pro_num }'">
										<input type="button" id="delBtn" name="delBtn" value="Del" onclick="location='scrapdel?pro_num=${e.pro_num }'">
										<input type="button" id="scrapchkBtn" name="scrapchkBtn" value="Check" onclick="location='scrapchk?pro_num=${e.pro_num }'">
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Wishlist End -->

	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="resources/planb/lib/easing/easing.min.js"></script>
	<script src="resources/planb/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/planb/js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/https.js"></script>
	<script>
	var count=1;
	var number = document.getElementById("car_qty");
	
	$('.btn-plus').click(function() {
		count++;
		number.value = count;
	});
	$('.btn-minus').click(function() {
		if (count > 1) {
			count--;
			number.value = count;
		}
	});
	
	function addcart() {
		myRequest();
		var num = document.getElementById("pro_num").value;
		var qty = document.getElementById("car_qty").value;
		var param = "pro_num="+num;
			param += "&car_qty="+qty;
		xhr.onreadystatechange= res;
		xhr.open("post","addcart");
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send(param);
	}
	function res() {
		if(xhr.readyState ===4){
			if(xhr.status ===200){
	        	if (confirm("장바구니에 등록하였습니다. 장바구니로 이동할까요?") == true) {
	        		location="/sweethome/cartform";
	        	} else {
	        		location="/sweethome/productform";
	        	}
			} else {
				console.log("실패");
			}
		}
	}
	</script>
</body>
</html>
