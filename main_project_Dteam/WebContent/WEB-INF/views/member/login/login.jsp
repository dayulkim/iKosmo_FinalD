<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>로그인</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<img style="width:20em;" src="resources/assets/img/logo_s.jpg"/>
									</div><br>
									<div class="user">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="mem_id" name="mem_id" placeholder="아이디를 입력해주세요"
												required="required" autocomplete="off">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="mem_pwd" name="mem_pwd" placeholder="비밀번호"
												required="required" autocomplete="off">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">로그인
													정보 기억</label>
											</div>
										</div>
										<button class="btn btn-primary btn-user btn-block"
											id="loginBtn" name="loginBtn" onclick="login()">로그인
										</button>
									</div>
									<hr>									
									<div class="text-center">
										<a class="small" href="join">회원가입</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/httpRequest.js"></script>
	<script src="resources/js/https.js"></script>
	<script src="resources/js/httpRequest.js"></script>
	<script>
		function login() {
			myRequest();
			var idv = document.getElementById("mem_id").value;
			var pwdv = document.getElementById("mem_pwd").value;
			var param = "mem_id=" + idv;
			param += "&mem_pwd=" + pwdv;
			xhr.onreadystatechange = res;
			xhr.open("post", "loginprocess");
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.send(param);
		}
		function res() {
			if (xhr.readyState === 4) {
				if (xhr.status === 200) {
					var txt = xhr.responseText;
					if (txt == "아이디 혹은 비밀번호가 잘못되었습니다.") {
						document.getElementById("target").innerHTML = txt;
						document.getElementById("mem_id").focus();
					} else {
						alert(txt);
						location = "/main_project_Dteam/";
					}
				} else {
					console.log("실패");
				}
			}
		}
	</script>
</body>

</html>