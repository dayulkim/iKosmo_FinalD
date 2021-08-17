<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<style>
.layer_title {
	text-align: center;
}

#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 200;
	background-color: #000000;
	display: none;
}

.layerpop {
	overflow: auto;
	position: absolute;
	display: none;
	z-index: 201;
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
</style>


<!-- �˾��㶧 ��� -->
<div id="mask"></div>

<!--Popup Start -->
<div id="layerbox" class="layerpop" style="width: 55%; height: 80%;">
	<article class="layerpop_area">

		<div class="layer_title">�� ���� �߰�</div>
		<a href="#" class="layerpop_close"
			id="layerbox_close"><img alt="" src="resources/review/img/x.png"></a><br>
		<div class="content">
			<div id="body" align="center">

				<form action="houseinfoinsert" method="post">
					<div class="all_question">


						<div class="quest">
							<br>
							<h5>���� ����</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-1"
									name="hinfo_type" value="����&���ǽ���"> <label
									class="form-check-label" for="type_radio-1">����&���ǽ���</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-2"
									name="hinfo_type" value="����Ʈ"> <label
									class="form-check-label" for="type_radio-2">����Ʈ</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-3"
									name="hinfo_type" value="����&����"> <label
									class="form-check-label" for="type_radio-3">����&����</label>

							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="type_radio-4"
									name="hinfo_type" value="�ܵ�����"> <label
									class="form-check-label" for="type_radio-4">�ܵ�����</label>

							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>���� ũ��</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-1"
									name="hinfo_size" value="10��̸�"> <label
									class="form-check-label" for="size_radio-1">10��̸�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-2"
									name="hinfo_size" value="10���"> <label
									class="form-check-label" for="size_radio-2">10���</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-3"
									name="hinfo_size" value="20���"> <label
									class="form-check-label" for="size_radio-3">20���</label>

							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-4"
									name="hinfo_size" value="30���"> <label
									class="form-check-label" for="size_radio-4">30���</label>

							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="size_radio-5"
									name="hinfo_size" value="40���̻�"> <label
									class="form-check-label" for="size_radio-5">40���̻�</label>

							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>������</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-1" name="hinfo_with" value="�̱۶�����"> <label
									class="form-check-label" for="with-check-1">�̱۶�����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-2" name="hinfo_with" value="��ȥ�κ�"> <label
									class="form-check-label" for="with-check-2">��ȥ�κ�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-3" name="hinfo_with" value="�Ʊ�"> <label
									class="form-check-label" for="with-check-3">�Ʊ�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-4" name="hinfo_with" value="���� �ڳ�"> <label
									class="form-check-label" for="with-check-4">���� �ڳ�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-5" name="hinfo_with" value="���� �ڳ�"> <label
									class="form-check-label" for="with-check-5">���� �ڳ�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-6" name="hinfo_with" value="�θ��"> <label
									class="form-check-label" for="with-check-6">�θ��</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="with-check-7" name="hinfo_with" value="�ݷ�����"> <label
									class="form-check-label" for="with-check-7">�ݷ�����</label>
							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>����</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="tend_radio-1"
									name="hinfo_tend" value="�̴ϸָ���"> <label
									class="form-check-label" for="tend_radio-1">�̴ϸָ���</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="tend_radio-2"
									name="hinfo_tend" value="�ǿ�����"> <label
									class="form-check-label" for="tend_radio-2">�ǿ�����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="tend_radio-3"
									name="hinfo_tend" value="�ƽøָ���"> <label
									class="form-check-label" for="tend_radio-3">�ƽøָ���</label>

							</div>


						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>��ȣ��</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-1" name="hinfo_favour" value="����"> <label
									class="form-check-label" for="favour-check-1">����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-2" name="hinfo_favour" value="������"> <label
									class="form-check-label" for="favour-check-2">������</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-3" name="hinfo_favour" value="������"> <label
									class="form-check-label" for="favour-check-3">������</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="favour-check-4" name="hinfo_favour" value="����"> <label
									class="form-check-label" for="favour-check-4">����</label>
							</div>


						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>���� ����</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-1" name="hinfo_buytend" value="�귣��">
								<label class="form-check-label" for="buytend-check-1">�귣��</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-2" name="hinfo_buytend" value="Ʈ����">
								<label class="form-check-label" for="buytend-check-2">Ʈ����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-3" name="hinfo_buytend" value="����Ƽ">
								<label class="form-check-label" for="buytend-check-3">����Ƽ</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="buytend-check-4" name="hinfo_buytend" value="������">
								<label class="form-check-label" for="buytend-check-4">������</label>
							</div>


						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>��Ÿ��</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-1" name="hinfo_style" value="���"> <label
									class="form-check-label" for="style-check-1">���</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-2" name="hinfo_style" value="�̴ϸ�&����"> <label
									class="form-check-label" for="style-check-2">�̴ϸ�&����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-3" name="hinfo_style" value="���߷�&������">
								<label class="form-check-label" for="style-check-3">���߷�&������</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-4" name="hinfo_style" value="��Ƽ��&��Ʈ��">
								<label class="form-check-label" for="style-check-4">��Ƽ��&��Ʈ��</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-5" name="hinfo_style" value="Ŭ����&��ƽ"> <label
									class="form-check-label" for="style-check-5">Ŭ����&��ƽ</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-6" name="hinfo_style" value="����ġ&���ι潺">
								<label class="form-check-label" for="style-check-6">����ġ&���ι潺</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-7" name="hinfo_style" value="����&�θ�ƽ">
								<label class="form-check-label" for="style-check-7">����&�θ�ƽ</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-8" name="hinfo_style" value="�δ���Ʈ����"> <label
									class="form-check-label" for="style-check-8">�δ���Ʈ����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-9" name="hinfo_style" value="�ѱ�&�ƽþ�"> <label
									class="form-check-label" for="style-check-9">�ѱ�&�ƽþ�</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="style-check-10" name="hinfo_style" value="����ũ&�ͽ���ġ">
								<label class="form-check-label" for="style-check-10">����ũ&�ͽ���ġ</label>
							</div>

						</div>
						<br>
						<hr>
						<div class="quest">
							<br>
							<h5>��Ȱ��</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-1" name="hinfo_activity" value="�ܼ�����">
								<label class="form-check-label" for="activity-check-1">�ܼ�����</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-2" name="hinfo_activity" value="Ȩ�׼�(�&��ŷ)">
								<label class="form-check-label" for="activity-check-2">Ȩ�׼�(�&��ŷ)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-3" name="hinfo_activity" value="Ȩ��ũ(����&�繫)">
								<label class="form-check-label" for="activity-check-3">Ȩ��ũ(����&�繫)</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="activity-check-4" name="hinfo_activity" value="��ȭ��Ȱ(��û&����)">
								<label class="form-check-label" for="activity-check-4">��ȭ��Ȱ(��û&����)</label>
							</div>
						</div>
						<br>
						<hr>

						<input type="submit" value="�Ϸ�"> <input type="reset"
							value="����">
					</div>
				</form>
			</div>
		</div>
	</article>
</div>



<script>
	$('.house_info_add-btn').click(function() {
		popupOpen();
		wrapWindowByMask();
	});
	
	$('#layerbox_close').click(function() {
		$('#layerbox').hide();
		$('#mask').hide();
	});
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

</script>

