<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="top-element">
��ǰ��ȣ�� 
${provo.pro_num } �Դϴ�. CSS������ ���� ���� ���߽��ϴ�,.. ����  <br/>
</div>


<!-- ù��° ���� -->
<div style="border: 1px solid lightblue; float: left; width: 65%; padding:10px;">

<img src="${provo.pro_thumb }"
alt="��ǥ �̹���" width="50%" height="30%" align="center" border="0">


<%-- ${provo.pro_thumb } --%>
<%-- ${provo.pro_photo } <!-- �����̵�� �������� �ѱ�� --> --%>
</div>

<!-- �ι�° ���� -->
<div style="border: 1px solid lightgreen; float: right; width: 30%; padding:10px;">
��ǰ�� : ${provo.pro_name } <br/>
��ǰ���� : ${provo.pro_price } <br/>
��ۺ� : ${provo.pro_delivery }��  <br/> <!-- +"��", ���ڰ� 0�϶�, "0��"? "������"? -->
��ۿ���Ⱓ : ${provo.pro_period }��  <br/>
��ǰ����� : ${provo.pro_rdate }  <br/>
<br/> <br/> <br/>
�Ǹ��� ������ȣ : ${provo.sel_num }  <br/> <!-- �̰� ��¾��ϰ� ���ѱ�⸸ Ȯ�� -->
<br/> <br/> <br/> <br/> 
</div>

<div>
<img src="${provo.pro_detail }"
alt="�� �̹���" width="50%" height="50%" align="center" border="0">

<br/> 
</div>
<!-- https://welbu.co.kr/product/detail.html?product_no=285&gclid=CjwKCAjw87SHBhBiEiwAukSeUYhUPRVTiN5DmZAwhijScfm7ipcwUHTOqTRRediTBw6rm6g-3iGwbBoCLCsQAvD_BwE -->