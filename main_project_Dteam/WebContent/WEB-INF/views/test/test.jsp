<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="top-element"></div>
	<div>
		<form id="form" enctype="multipart/form-data">
			<label for="file">파일 첫 번째</label>
			<div>
				<input type="file" id="file1" name="file1" required="required" />
			</div>

		</form>
	</div>
	<div>
		<button id="btn-upload">파일 업로드</button>
	</div>
	<div>
		<img alt="" src="" id="picture0"></div>
		<div >
			<img alt="" src="" id="picture1"></div>
			<div>
				<img alt="" src="" id="picture2">
			</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script>
	$(function() {

		$("#btn-upload").on("click", function() {

			var formData = new FormData();
			var inputFile = $("input[name='file1']");
			var files = inputFile[0].files;
			console.log(files);
			formData.append("file",files[0])
			
			
			$.ajax({
				type : 'post',
// 				url : "http://ec2-52-78-30-125.ap-northeast-2.compute.amazonaws.com:9000/service/similarityJsonP",
 				url : "http://192.168.35.53:9000/service/similarityJsonP?category=lighting",
				processData : false,
				contentType : false,
				data : formData,

				success : function(e) {
					console.log(e.data)
					if (e.data!=='None'){
						for(let i=0;i<e.data.length;i++){
							
							document.getElementById("picture"+i).src='resources/data/lighting/'+e.data[i]
						}
					
					}
					
						
					
					

				},
				error : function(e) {

				}
			});
		});
	});
</script>
</html>