<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="top-element">
	
</div>
<div class="container">
	<div class="text-center py-5" >
		<table style="text-align:left;" border="1">
			<tr>
				<td>��ü�� : </td><td>&nbsp;&nbsp;${selvo.sel_name}</td>
			</tr>
			<tr>
				<td>������ȭ : </td><td>&nbsp;&nbsp;${selvo.sel_tel}</td>
			</tr>
			<tr>
				<td>�ּ� : </td><td>&nbsp;&nbsp;${selvo.sel_addr}</td>
			</tr>
			<tr>
				<td>��� : </td><td>&nbsp;&nbsp;${selvo.sel_grade}</td>
			</tr>
		</table>
		
	</div>
	<input type="hidden" id="selname" value="${selvo.sel_name}"> <input
		type="hidden" id="addr" value="${selvo.sel_addr}">
	<div id="map" style="width: 500px; height: 400px;"></div>
	<br>
</div>
<!-- kakaomap api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ed41aaad31a6786708d7abba81ccc02d&libraries=services"></script>
	<script>
		var container = document.getElementById('map'); //���� ǥ�� div
	
		var options = {
			center : new kakao.maps.LatLng(36.300442, 127.574917), //������ �߽���ǥ
			level : 3
		//������ Ȯ�� ����
		};

		var map = new kakao.maps.Map(container, options);
		
		var geocoder = new kakao.maps.services.Geocoder();
		
		var addr = document.getElementById('addr').value;
		var selname = document.getElementById('selname').value;
		
		geocoder.addressSearch(addr, function(result, status){
			 // ���������� �˻��� �Ϸ������ 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // ��������� ���� ��ġ�� ��Ŀ�� ǥ��
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // ����������� ��ҿ� ���� ������ ǥ��		        
		        var infowindow = new kakao.maps.InfoWindow({
		            content: "<div style='width:100px;margin:auto;text-align:center;font-size:15px;'>"+selname+'</div>'
		        });
		        infowindow.open(map, marker);

		        // ������ �߽��� ��������� ���� ��ġ�� �̵�
		        map.setCenter(coords);
		    } 
		});
	</script>