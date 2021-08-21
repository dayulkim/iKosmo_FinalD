<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입 - 슬.집.생</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
    
    
    <style type="text/css">

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  vertical-align: middle;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
  display: inline-block;
  padding: .5em .75em;
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}

.filebox.bs3-primary label {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
</style>

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
                            <div class="col-lg-6 d-none d-lg-block bg-join-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                    	
                                        <h1 class="h4 text-gray-900 mb-4">슬기로운 집콕생활</h1>
                                    </div>
                                    <form class="user" method="post" action="joinprocess">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="mem_id" name="mem_id" required="required" autocomplete="off"
                                                placeholder="아이디">
                                            <input type="button" id="id_check" name="id_check" value="중복확인" onclick="idchk()">
                                            <div id="target"></div>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="mem_pwd" name="mem_pwd" required="required" autocomplete="off" placeholder="비밀번호">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="mem_name" name="mem_name" placeholder="이름" required="required" autocomplete="off">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="mem_nickname" name="mem_nickname" placeholder="닉네임" required="required" autocomplete="off">
                                        </div>
                                        <div class="form-group">
                                            <div class="form-control form-control-user">
                                                <label><input type="radio" name="mem_gender" id="mem_gender_m" value="남성" required="required">&nbsp;남성</label>&nbsp;&nbsp;
                                                <label><input type="radio" name="mem_gender" id="mem_gender_f" value="여성">&nbsp;여성</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" name="mem_birth"
                                                id="mem_birth" name="mem_birth" placeholder="생년월일" onfocus="(this.type='date')" onblur="(this.type='text')" value="1971-01-01" required="required">
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="mem_tel" name="mem_tel" placeholder="전화번호-숫자만 입력" required="required" autocomplete="off">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="mem_addr" name="mem_addr" placeholder="주소" required="required" autocomplete="off">
                                        </div>
                                        <div class="filebox bs3-primary"> 
                                        	<input class="upload-name" value="프로필이미지">
                                        	<label for="mem_profile">파일선택</label> 
                                        	<input type="file" id="mem_profile" name="mem_profile" class="upload-hidden"> 
                                        </div>
                                        <div class="form-group"></div>
                                        <input type="submit" class="btn btn-primary btn-user btn-block" id="joinBtn" name="joinBtn" value="가입하기">
                                    </form>
                                    <hr>
                                    
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
    <script src="resources/js/https.js"></script>
    <script>
    $(document).ready(function(){
    	  var fileTarget = $('.filebox .upload-hidden');

    	    fileTarget.on('change', function(){
    	        if(window.FileReader){
    	            var filename = $(this)[0].files[0].name;
    	        } else {
    	            var filename = $(this).val().split('/').pop().split('\\').pop();
    	        }
    	        console.log(filename);

    	        $('.upload-name').val(filename);
    	    });
    	});
    function idchk() {
    	myRequest();
    	var idv = document.getElementById("mem_id").value;
    	var param = "mem_id="+idv;
    	xhr.onreadystatechange= res;
    	xhr.open("post","idchk");
    	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    	xhr.send(param);
    }
    function res(){
    	if(xhr.readyState === 4){
    		if(xhr.status === 200){
    			var txt = xhr.responseText;
    			document.getElementById("target").innerHTML=txt;
    			} else {
    		console.log("실패");
    		}
    	}
    }
    </script>
</body>

</html>