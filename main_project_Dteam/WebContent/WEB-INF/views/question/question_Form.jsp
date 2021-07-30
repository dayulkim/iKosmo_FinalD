<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

	[class*="u-border-"].u-border-no-top {
		border-top-width: 0;
		border-top-style: none;
	}
	
	[class*="u-border-"].u-border-no-right {
		border-right-width: 0;
		border-right-style: none;
	}
	
	[class*="u-border-"].u-border-no-left {
		border-left-width: 0;
		border-left-style: none;
	}
	
	.u-form-control-hidden {
		display: none !important;
	}
		
	#questionForm checkbox {
		font-family: 'NanumGothic-Regular';
		font-size: 16px;
	}

	#questionForm p{
		font-family: 'NanumGothic-Regular';
		font-size: 16px;
	}
	
	#questionForm table tr td>input.u-input-1 {
		height: 50px;
		width: 500px;
		font-size: 15px;
		font-family: 'NanumGothic-Regular';
	}
	
	#questionForm table tr td>textarea.u-input-3 {
		height: 250px;
		width: 500px;
		resize: none;
		font-size: 15px;
		font-family: 'NanumGothic-Regular';
	}
	
	#questionForm input + label {
		display: inline-block;
		position: relative;
		padding-left: 10px;
		font-size: 13px;
		font-family: 'NanumGothic-Regular';
	}
	
	.star{
	  display:inline-block;
	  width: 30px;height: 60px;
	  cursor: pointer;
	}
	.star_left{
	  background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat 0 0; 
	  background-size: 60px; 
	  margin-right: -3px;
	}
	.star_right{
	  background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat -30px 0; 
	  background-size: 60px; 
	  margin-left: -3px;
	}
	.star.on{
	  background-image: url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
	}

</style>
<%--=============================<div id="body"> ���� =============================--%>
<section>
<br> <br>
<div id="body" align="center">

	<form action="insertQuestion" method="post" enctype="multipart/form-data">
		<div id="questionForm">
			<table>

				<tr>
					<td>
						<input type="text" placeholder="������ �Է��ϼ���" id="title"	name="title"
						class="u-border-black u-border-no-left u-border-no-right u-border-no-top u-input-1"
						required="required">
					</td>
				</tr>

				<tr>
					<td>
						<textarea placeholder="������ �Է��ϼ���" id="content" name="content"
						class=" u-border-black u-border-no-left u-border-no-right u-border-no-top   u-input-3"
						required="required"></textarea>
					</td>
				</tr>
				
				<tr>
					<td>
						<input type="number" id="code" min="0" placeholder="�������ε� " step="1" onchange="addFile()">
						<div id="uploadtarget"></div>
						<hr>
					</td>
				</tr>

				<tr>
					<th>
						<p>Ű���� ����</p>
					</th>
				</tr>
				<tr>
					<th>
						<p style="margin: 0;">�Ϲ�</p>
						<input type="checkbox" id="kinds" name="kinds" value="���𵨸�/����"><label>���𵨸�/����</label> &nbsp; 
						<input type="checkbox" id="kinds" name="kinds" value="����"><label>����</label> &nbsp;
						<input type="checkbox" id="kinds" name="kinds" value="��ü��õ"><label>��ü��õ</label> &nbsp; 
						<input type="checkbox" id="kinds" name="kinds" value="�������׸���"><label>�������׸���</label> &nbsp; 
						<br>
						<input type="checkbox" id="kinds" name="kinds" value="��ȥ"><label>��ȥ</label>&nbsp;
						<input type="checkbox" id="kinds" name="kinds" value="����"><label>����</label> &nbsp; 
						<input type="checkbox" id="kinds" name="kinds" value="��������õ"><label>��������õ</label> &nbsp; 
						<hr>
					</th>
				</tr>
				<tr>
					<th>
						<p style="margin: 0;">����</p>
						<input type="checkbox" id="furnitures" name="furnitures" value="������ġ/�̵�"><label>������ġ/�̵�</label> &nbsp; 
						<input type="checkbox" id="furnitures" name="furnitures" value="����/��ũ��"><label>����/��ũ��</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="�����"><label>�����</label> &nbsp; 
						<input type="checkbox" id="furnitures" name="furnitures" value="����"><label>����</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="��Ź"><label>��Ź</label> &nbsp; 
						<br>
						<input type="checkbox" id="furnitures" name="furnitures" value="ħ��"><label>ħ��</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="������"><label>������</label> &nbsp; 
						<input type="checkbox" id="furnitures" name="furnitures" value="TV"><label>TV</label> &nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="����"><label>����</label>&nbsp;
						<input type="checkbox" id="furnitures" name="furnitures" value="��Ÿ����"><label>��Ÿ����</label> &nbsp; 
						<hr>
					</th>
				</tr>
				
				<tr>
					<th>
						<p style="margin: 0;">����</p>
						<input type="checkbox" id="space" name="space" value="�ܵ�����"><label>�ܵ�����</label> &nbsp; 
						<input type="checkbox" id="space" name="space" value="����Ʈ"><label>����Ʈ</label> <br>
						<input type="checkbox" id="space" name="space" value="��"><label>��</label> &nbsp; 
						<input type="checkbox" id="space" name="space" value="����"><label>���� </label> &nbsp;
						<hr>
					</th>
				</tr>
				<tr>
					<th colspan="2">
						<br>
						<input type="submit" value="�ۼ�">
						<input type="reset" value="���">
					</th>
				</tr>
			</table>
		</div>
	</form>
</div>
</section>

<br> <br> <br> <br> <br> <br> <br>

<%--=============================</div id="body"> ��=============================--%>

<%--=============================<script> ���� =============================--%>
<script>

function addFile(){
	var code = parseInt(document.getElementById("code").value,"10");
	console.log(code);
	var html = "";
	for(var i=0; i<code; i++){
		html +="<input type=\"file\" name=\"mfile\" id=\"mfile\"><br>";
	
	}
	document.getElementById("uploadtarget").innerHTML= html;
}

function addClass(tag, className) {
	tag.className += " " + className;

}
</script>
<%--=============================<script> �� =============================--%>