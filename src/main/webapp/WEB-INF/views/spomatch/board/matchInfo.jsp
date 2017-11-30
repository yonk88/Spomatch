<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 지도API 로드 -->
 <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script> 
	
</head>
<body>
<h2>매치 정보</h2>

<table class="table" id="infoTable">
	<thead>
		<tr><th></th><th></th></tr>
	</thead>
	
	<tbody>
		<tr>
			<td colspan="2">팀명 <label class="control-label">${tVo.team_Name }</label></td>
			<!-- mapAPI -->
			<td rowspan="8" id="tdRight">
				 <!-- <div id="map"></div> -->
				<div id="mapArea">
 					<div class="map_wrap">
						<div id="mapp" style="width:420;height:420px;overflow:hidden; padding-left:"30%"></div><br/>
												
    					<!-- mat_Local -->
						시합장소:&nbsp;&nbsp; <label class="control-label">${matVo.mat_Local }</label>
						<br/>
						<div class="hAddr"></div>
					</div>
				</div> 
				<!-- mat_Comment -->
				<div style="border:1px; border-color:gray;">
					<label class="control-label">${matVo.mat_Comment }</label>
				</div>
				
			</td>
		</tr>
		
		<tr>
			<td colspan="2">시합날짜:&nbsp;&nbsp; <label class="control-label">${matVo.mat_MatchDay }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">시합시간:&nbsp;&nbsp; <label class="control-label">${matVo.mat_Stime } ~ ${matVo.mat_Ftime }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">구장크기:&nbsp;&nbsp; <label class="control-label">${matVo.mat_Fsize }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">연령:&nbsp;&nbsp; <label class="control-label">${tVo.team_Age }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">수준:&nbsp;&nbsp; <label class="control-label">${tVo.team_Lv }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">조끼:&nbsp;&nbsp; <label class="control-label">${tVo.team_Vest }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">유니폼:&nbsp;&nbsp; <label class="control-label">${tVo.team_Color }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">대표연락처:&nbsp;&nbsp; <label class="control-label">${mVo.mem_Phone }</label></td>
		</tr>
		
		<tr>
			<td colspan="2">계좌번호:&nbsp;&nbsp; <label class="control-label">${tVo.team_Account }</label></td>
		</tr>
		
	</tbody>
</table>

<!-- 좌표용 -->
<input type="hidden" id="yVal" value="${matVo.mat_Yval }"/>
<input type="hidden" id="xVal" value="${matVo.mat_Xval }"/>


<script type="text/javascript">

var yVal = $("#yVal").val();
var xVal = $("#xVal").val();

var mapContainer = document.getElementById('mapp'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(yVal, xVal), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(yVal, xVal); 

//마커를 생성합니다
var marker = new daum.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>
</body>
</html>