<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="resources/css/housewarming/housewarming.css" rel="stylesheet" />

<!-- ========= body ���� ========= -->

<div style="margin-bottom: 8rem;"></div> <!-- ��� ���� �ο� -->
<form name="insertHwarm" action="insertHwarm" method="post" enctype="multipart/form-data"><!-- form ���� ���� -->

<!-- ������ ���� �Է� -->
<div class="editor-title-section hwarm_title">
	<input id="hou_name" name="hou_name" type="text" placeholder="������ �Է����ּ���" style="width:100%">
</div>

<!-- �ʼ����� �Է� -->
<div class="editor-section">
	<div class="container container-sm">
		<div class="hwrite_collapse_header">
		<a class="hwrite_collapse_btn" data-bs-toggle="collapse" href="#hwrite_collapse" role="button" aria-expanded="false" aria-controls="hwrite_collapse">
			&#9999; �ʼ����� �Է�
		</a>
		</div>
		<div class="collapse" id="hwrite_collapse"> <!-- collapse ���� -->
			<!-- ���� 1: �ְ����� -->
			<div class="editor-form-group" style="margin-top: 1rem;">
				<div class="editor-form-group__label">
					<label for="hou_type">�ְ�����</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_type" name="hou_type" class="form-select" aria-label="Default select example">
					  <option selected>�������ּ���</option>
					  <option value="1">����</option>
					  <option value="2">����</option>
				</select>
				</div>
			</div>
			<!-- ���� 2: ��� -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_space">���</label>
				</div>
				<div class="editor-form-group__content">
					<input type="text" id="hou_space" name="hou_space" class="form-control">
				</div>
			</div>
			<!-- ���� 3: �۾���� -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_how">�۾����</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_how" name="hou_how" class="form-select" aria-label="Default select example">
					  <option selected>�������ּ���</option>
					  <option value="1">����</option>
					  <option value="2">�ݼ���</option>
					  <option value="3">������</option>
				</select>
				</div>
			</div>
			<!-- ���� 4: �о� -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_sector">�о�</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_sector" name="hou_sector" class="form-select" aria-label="Default select example">
					  <option selected>�������ּ���</option>
					  <option value="1">���𵨸�</option>
					  <option value="2">Ȩ��Ÿ�ϸ�</option>
					  <option value="3">�κа���</option>
					  <option value="4">����</option>
				</select>
				</div>
			</div>
			<!-- ���� 5: ��Ÿ�� -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_style">��Ÿ��</label>
				</div>
				<div class="editor-form-group__content">
					<select id="hou_style" name="hou_style" class="form-select" aria-label="Default select example">
					  <option selected>�������ּ���</option>
					  <option value="1">���</option>
					  <option value="2">�̴ϸ�&����</option>
					  <option value="3">���߷�&������</option>
					  <option value="4">��Ƽ��&��Ʈ��</option>
					  <option value="5">Ŭ����&��ƽ</option>
					  <option value="6">����ġ&���ι潺</option>
					  <option value="7">����&�θ�ƽ</option>
					  <option value="8">�δ���Ʈ����</option>
					  <option value="9">�ѱ�&�ƽþ�</option>
					  <option value="10">����ũ&�ͽ���ġ</option>
				</select>
				</div>
			</div>
			<!-- ���� 6: �۾��Ⱓ -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_period">�۾��Ⱓ</label>
				</div>
				<div class="editor-form-group__content">
					<input type="text" id="hou_period" name="hou_period" class="form-control">
				</div>
			</div>
			<!-- ���� 7: ���� -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_pay">����</label>
				</div>
				<div class="editor-form-group__content">
					<input type="text" id="hou_pay" name="hou_pay" class="form-control">
				</div>
			</div>
			<!-- ���� 8: �÷��� -->
			<div class="editor-form-group">
				<div class="editor-form-group__label">
					<label for="hou_tone">�÷���</label>
				</div>
				<div class="editor-form-group__content">
					<div class="custom-radios">
					  <div>
					    <input type="radio" id="color-1" name="hou_tone" value="1" checked>
					    <label for="color-1">
					      <span style="background-color: #fff4e6">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
					  <div>
					    <input type="radio" id="color-2" name="hou_tone" value="2">
					    <label for="color-2">
					      <span style="background-color: #ffd3b6">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
					  <div>
					    <input type="radio" id="color-3" name="hou_tone" value="3">
					    <label for="color-3">
					      <span style="background-color: #e0a899">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					
					  <div>
					    <input type="radio" id="color-4" name="hou_tone" value="4">
					    <label for="color-4">
					      <span style="background-color: #604439">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
		  			  <div>
					    <input type="radio" id="color-5" name="hou_tone" value="5">
					    <label for="color-5">
					      <span style="background-color: #e74c3c">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
		
		  			  <div>
					    <input type="radio" id="color-6" name="hou_tone" value="6">
					    <label for="color-6">
					      <span style="background-color: #f0c75e">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>			  
					  
		  			  <div>
					    <input type="radio" id="color-7" name="hou_tone" value="7">
					    <label for="color-7">
					      <span style="background-color: #a0d6b4">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
		  			  <div>
					    <input type="radio" id="color-8" name="hou_tone" value="8">
					    <label for="color-8">
					      <span style="background-color: #4b86b4">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
		  			  <div>
					    <input type="radio" id="color-9" name="hou_tone" value="9">
					    <label for="color-9">
					      <span style="background-color: #505050">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
		
		  			  <div>
					    <input type="radio" id="color-10" name="hou_tone" value="10">
					    <label for="color-10">
					      <span style="background-color: #000000">
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>			 	 
					</div>
				</div>
			</div>
		</div> <!-- collapse �� -->
	</div> <!-- container �� -->
</div> <!-- editor-top-section �� -->


<!-- ������ ���� �Է� -->
<div class="hwarm-content"><!-- hwarm-content ���� -->
	<div class="editor-section row">
		<!-- �̹��� ���ε� �κ� -->
		<div class="image-container col-md-6">
			<!-- �̹��� -->
		    <img style="width: 95%;" class="preview-image" src="resources/assets/img/file_dummy.png">
		    <!-- ���� ���ε� ��ư -->
		    <a class="upload-file-btn" onclick="$(this).parent().children('input').click()" style="background-color: #66b2b2;">
		    	<span class="upload-file-btn-span"><i class="fas fa-file-upload"></i></span>
		    	<span class="upload-file-btn-span">���Ͼ��ε�</span>
		    </a>
		    <input type="file" class="imgfile" name="imgfile" style="display:none;">
		    <!-- ���� ��ǰ �±� ��ư -->
	   	    <a class="upload-file-btn tag-btn" style="background-color: #ff6f69;" onclick="javascript:openPopup(this);" target="_blank">
		    	<span class="upload-file-btn-span"><i class="fas fa-tags"></i></span>
		    	<span class="upload-file-btn-span">��ǰ �±�</span>
		    </a>
		</div>
		<!-- ���� �Է� �κ� -->
		<div class="col-md-6">
			<textarea class="hwd_content_list" name="hwd_content_list" rows="18" cols="42" placeholder="� �����ΰ���? ������ ���� �̾߱⸦ ���ּ���."></textarea>
<!-- 			<input type="text" class="hwd_content" name="hwd_content" placeholder="� �����ΰ���? ������ ���� �̾߱⸦ ���ּ���."> -->
		</div>
	</div>
	<input type="hidden" class="hwd_tag" name="hwd_tag" value="none">
</div> <!-- hwarm-content �� -->

<div class="editor-section row hwarm_title">
	<a href="javascript:appendHwamContent()" class="hwrite_collapse_btn"><i class="fas fa-plus"></i> ���� �߰��ϱ�</a>
</div>

<!-- �����̱� �����ϱ� ��ư -->
<button type="submit" class="hwarm-submit-btn">�����ϱ�</button>


</form> <!-- form -->
<div style="margin-bottom: 5rem;"></div> <!-- �ϴ� ���� �ο� -->

<!-- ========== body ��  ========== -->


<!-- ========= script ����  ========= -->


<script>

window.name = "hwarm_write";


// ��ǰ �±� ������ �� �˾�â ����ִ� ��ũ��Ʈ
function openPopup(input){
	console.log(input);
	var hwarm = input.parentNode.parentNode.parentNode;
    var popup = window.open('popupImage', '��ǰ �±� �˾�', 'width=1200px,height=650px,scrollbars=yes');
    var order = parseInt($('.tag-btn').index(input));
    console.log(order);
    var src = $('.preview-image').eq(order).attr("src");
    console.log(src);
	$.ajax({
		url:"popupImage",  
	}).done(function(result){
		result = result.replace("\"replaceThis\"",src)
		result = result.replace("\"boxOrderValue\"",order)
		popup.document.write(result);
	});
}

// �̹��� ������ ��ȭ�� �����ϴ� ��ũ��Ʈ
document.addEventListener('change',function(e){
	if(e.target.className == 'imgfile') {
		readImage(e.target)
	}
})

// �̹����� ���ε����� �� �о�ͼ� �̸����� ������ ����ִ� �Լ�
function readImage(input) {
    // ��ǲ �±׿� ������ �ִ� ���
    if(input.files && input.files[0]) {
        // �̹��� �������� �˻� (����)
        // FileReader �ν��Ͻ� ����
        const reader = new FileReader()
        // �̹����� �ε尡 �� ���
        reader.onload = e => {
//             const previewImage = document.getElementById("preview-image")
			const previewImage = input.parentNode.querySelectorAll('.preview-image')[0]
            previewImage.src = e.target.result
        }
        // reader�� �̹��� �е��� �ϱ�
        reader.readAsDataURL(input.files[0])
    }
}


// DOM�� �����Ǹ� ���� �ۼ� �κ��� �ڵ带 �о��
var html = '';
$(document).ready(function () {
	html = $('.hwarm-content').html();
});

// �߰��ϱ� ��ư�� ������ ���� �ڽ��� �߰��ϴ� �ڵ�
var order = 1;
function appendHwamContent() {		
	
// 	$('.hwarm-content').append(html.replace('"hwd_content_list[0]"', '"hwd_content_list['+order+']"'));
	$('.hwarm-content').append(html);
	order += 1;
}

function img_index(input) {
	console.log($('.preview-image').index(input));
}


</script>
<!-- ========== script ��  ========== -->