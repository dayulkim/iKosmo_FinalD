<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
.layer_title {
	text-align: center;
}

#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 99;
	background-color: #000000;
	display: none;
}

.layerpop {
	overflow: auto;
	position: absolute;
	display: none;
	z-index: 100;
	border: 2px solid #ccc;
	background: #fff;
}

.layerpop_area .layer_title {
	padding: 10px 10px 10px 10px;
	border: 0px solid #aaaaaa;
	background: #f1f1f1;
	color: #3eb0ce;
	font-size: 1.3em;
	font-weight: bold;
	line-height: 24px;
}

.layerpop_area .layerpop_close {
	width: 30px;
	display: block;
	position: absolute;
	top: 10px;
	right: 10px;
}

.layerpop_area .content {
	width: 95%;
	margin: 2%;
	color: #828282;
}
/*  �� css */
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

#reviewForm checkbox {
	font-family: 'NanumGothic-Regular';
	font-size: 16px;
}

#reviewForm p {
	font-family: 'NanumGothic-Regular';
	font-size: 16px;
}

#reviewForm table tr td>input.u-input-1 {
	height: 50px;
	width: 500px;
	font-size: 15px;
	font-family: 'NanumGothic-Regular';
}

#reviewForm table tr td>textarea.u-input-2 {
	height: 250px;
	width: 500px;
	resize: none;
	font-size: 15px;
	font-family: 'NanumGothic-Regular';
}

#reviewForm input+label {
	display: inline-block;
	position: relative;
	padding-left: 10px;
	font-size: 13px;
	font-family: 'NanumGothic-Regular';
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
</head>

<body>
	<button onClick="javascript:goDetail('�׽�Ʈ');">�˾�</button>

	<!-- �˾��㶧 ��� -->
	<div id="mask"></div>

	<!--Popup Start -->
	<div id="layerbox" class="layerpop" style="width: 55%; height: 80%;">
		<article class="layerpop_area">


			<a href="javascript:popupClose();" class="layerpop_close"
				id="layerbox_close"><img alt="" src="resources/review/img/x.png"></a><br>
			<div class="content">
				<div id="body" align="center">

					<form action="houseinfoinsert" method="post">
						<div>
							<div>
								<ul>
									<li>���� ����</li>
									<li><input type="radio" name="hinfo_type" value="����&���ǽ���">����&���ǽ���
										<input type="radio" name="hinfo_type" value="����Ʈ">����Ʈ
										<input type="radio" name="hinfo_type" value="����&����">����&����
										<input type="radio" name="hinfo_type" value="�ܵ�����">�ܵ�����</li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>���� ũ��</li>
									<li><input type="radio" name="hinfo_size" value="10��̸�">10��̸�
										<input type="radio" name="hinfo_size" value="10���">10���
										<input type="radio" name="hinfo_size" value="20���">20���
										<input type="radio" name="hinfo_size" value="30���">30���
										<input type="radio" name="hinfo_size" value="40�� �̻�">40��
										�̻�
									<li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>������</li>
									<li><input type="checkbox" id="hinfo_with"
										name="hinfo_with" value="�̱۶�����">�̱۶����� <input
										type="checkbox" id="hinfo_with" name="hinfo_with" value="��ȥ�κ�">��ȥ�κ�
										<input type="checkbox" id="hinfo_with" name="hinfo_with"
										value="�Ʊ�">�Ʊ� <input type="checkbox" id="hinfo_with"
										name="hinfo_with" value="���� �ڳ�">���� �ڳ� <input
										type="checkbox" id="hinfo_with" name="hinfo_with"
										value="���� �ڳ�">���� �ڳ� <input type="checkbox"
										id="hinfo_with" name="hinfo_with" value="�θ��">�θ�� <input
										type="checkbox" id="hinfo_with" name="hinfo_with" value="�ݷ�����">�ݷ�����
									
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>����</li>
									<li><input type="radio" name="hinfo_tend" value="�̴ϸָ���">�̴ϸָ���
										<input type="radio" name="hinfo_tend" value="�ǿ�����">�ǿ�����
										<input type="radio" name="hinfo_tend" value="�ƽøָ���">�ƽøָ���

									
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>��ȣ��</li>
									<li><input type="checkbox" name="hinfo_favour" value="����">����
										<input type="checkbox" name="hinfo_favour" value="������">������
										<input type="checkbox" name="hinfo_favour" value="������">������<input
										type="checkbox" name="hinfo_favour" value="����">����
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>���ż���</li>
									<li><input type="checkbox" name="hinfo_buytend"
										value="�귣��">�귣�� <input type="checkbox"
										name="hinfo_buytend" value="Ʈ����">Ʈ���� <input
										type="checkbox" name="hinfo_buytend" value="����Ƽ">����Ƽ<input
										type="checkbox" name="hinfo_buytend" value="������">������
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>��Ÿ��</li>
									<li><input type="checkbox" name="hinfo_style" value="���">���
										<input type="checkbox" name="hinfo_style" value="�̴ϸ�&����">�̴ϸ�&����
										<input type="checkbox" name="hinfo_style" value="���߷�&������">���߷�&������<input
										type="checkbox" name="hinfo_style" value="��Ƽ��&��Ʈ��">��Ƽ��&��Ʈ��<input
										type="checkbox" name="hinfo_style" value="Ŭ����&��ƽ">Ŭ����&��ƽ
										<input type="checkbox" name="hinfo_style" value="����ġ&���ι潺">����ġ&���ι潺</li>
									<li><input type="checkbox" name="hinfo_style"
										value="����&�θ�ƽ">����&�θ�ƽ <input type="checkbox"
										name="hinfo_style" value="�δ���Ʈ����">�δ���Ʈ����<input
										type="checkbox" name="hinfo_style" value="�ѱ�&�ƽþ�">�ѱ�&�ƽþ�<input
										type="checkbox" name="hinfo_style" value="����ũ&�ͽ���ġ">����ũ&�ͽ���ġ
										<input type="checkbox" name="hinfo_style" value="��Ÿ">��Ÿ</li>
								</ul>
								<hr>
							</div>
							<div>
								<ul>
									<li>��Ȱ��</li>
									<li><input type="checkbox" name="hinfo_activity"
										value="�ܼ�����">�ܼ����� <input type="checkbox"
										name="hinfo_activity" value="Ȩ�׼�(�,��ŷ)">Ȩ�׼�(�,��ŷ)<input
										type="checkbox" name="hinfo_activity" value="Ȩ��ũ(����,�繫)">Ȩ��ũ(����,�繫)
										<input type="checkbox" name="hinfo_activity"
										value="��ȭ��Ȱ(��û,����)">Ȩ��ȭ(��û,����)
								</ul>
								<hr>
							</div>
							<div>

								<hr>
							</div>
							<input type="submit" value="�Ϸ�">
						</div>
					</form>
				</div>
			</div>
		</article>
	</div>


	<script>
		// 	LayerPopUp ��ũ��Ʈ����--------------------------------------------------------------------------
		function wrapWindowByMask() {
			//ȭ���� ���̿� �ʺ� ���Ѵ�.
			var maskHeight = $(document).height();
			var maskWidth = $(window).width();

			//���������� ũ�� 
			console.log("document ������:" + $(document).width() + "*"
					+ $(document).height());
			//���������� ������ �������� ������ ũ��
			console.log("window ������:" + $(window).width() + "*"
					+ $(window).height());

			//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
			$('#mask').css({
				'width' : maskWidth,
				'height' : maskHeight
			});
			//�ִϸ��̼� ȿ��
			$('#mask').fadeTo("slow", 0.5);
		}
		function popupOpen() {
			$('.layerpop').css("position", "absolute");

			//���� ����� ���̾ �ٿ�� ���� ��ġ ��� 
			$('.layerpop').css(
					"top",
					(($(window).height() - $('.layerpop').outerHeight()) / 2)
							+ $(window).scrollTop());
			$('.layerpop').css(
					"left",
					(($(window).width() - $('.layerpop').outerWidth()) / 2)
							+ $(window).scrollLeft());
			// 			$('.layerpop').draggable();
			$('#layerbox').show();
		}

		function popupClose() {
			$('#layerbox').hide();
			$('#mask').hide();
		}

		function goDetail() {
			/*�˾� ������ ������ �۾��� ������� ����*/
			popupOpen(); //���̾� �˾�â ���� 
			wrapWindowByMask(); //ȭ�� ����ũ ȿ�� 
		}
	</script>
</body>
</html>
