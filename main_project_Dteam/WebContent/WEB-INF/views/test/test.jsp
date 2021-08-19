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

	<div id="recommendProduct">
		</div>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<script>
	$(function() {

			var formData = new FormData();
			var url="resources/data/chair/interior_chai_10.jpg"
			var fileName=url.split("/")[3];

			fetch(url).then(response => response.blob()).then(blob =>{
				const file=new File([blob],fileName)
				console.log(file);
				formData.append("file",file)
			
			
			$.ajax({
				type : 'post',

 				url : "http://192.168.35.53:9000/service/similarityJsonP?category=chair",
				processData : false,
				contentType : false,
				data : formData,

				success : function(e) {
					console.log(e.data)
					
					if (e.data!=='None'){
						
						for(let i=0;i<e.data.length;i++){
							 let picture="";
							 picture="<img alt='' src='resources/data/chair/"+e.data[i]+"' id='"+picture[i]+"' style='width:200px;'>"
							$("#recommendProduct").append(picture);
						}
					}
				},
				error : function(e) {

				}
			});
		});
	
	});
</script>
</body>
</html>