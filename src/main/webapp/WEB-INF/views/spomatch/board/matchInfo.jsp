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
			<td colspan="2">시합날짜:&nbsp;&nbsp;</td><td>${matVo.mat_MatchDay }</td>
		</tr>
		
		<tr>
			<td colspan="2">시합시간:&nbsp;&nbsp;</td><td> ${matVo.mat_Stime } ~ ${matVo.mat_Ftime }</td>
		</tr>
		
		<tr>
			<td colspan="2">구장크기:&nbsp;&nbsp;</td><td>${matVo.mat_Fsize }</td>
		</tr>
		
		<tr id="ageTr">
			<td colspan="2">연령:&nbsp;&nbsp;</td><td id="ageTd">${tVo.team_Age }</td>
		</tr>
		
		<tr id="teamLvTr">
			<td colspan="2">수준:&nbsp;&nbsp;</td><td id="teamLvTd">${tVo.team_Lv }</td>
		</tr>
		
		<tr>
			<td colspan="2">조끼:&nbsp;&nbsp;</td><td>${tVo.team_Vest }</td>
		</tr>
		
		<tr>
			<td colspan="2">유니폼:&nbsp;&nbsp;</td><td>${tVo.team_Color }</td>
		</tr>
		
		<tr>
			<td colspan="2">대표연락처:&nbsp;&nbsp;</td><td>${mVo.mem_Phone }</td>
		</tr>
		
		<tr>
			<td colspan="2">계좌번호:&nbsp;&nbsp;</td><td>${tVo.team_Account }</td>
		</tr>
		
	</tbody>
</table>
<input type="button" id="sendBtn" class="btn btn-primary btn-md" value="매칭신청" data-dismiss="modal" style = "text-align:center;"/>
<!-- 좌표용 -->
<input type="hidden" id="yVal" value="${matVo.mat_Yval }"/>
<input type="hidden" id="xVal" value="${matVo.mat_Xval }"/>




<script type="text/javascript">


$("#sendBtn").click(function(){
	locatin.href = "/spomatch/match/matchProc.do";
});
var yVal = $("#yVal").val();
var xVal = $("#xVal").val();

if(xVal == null){	
	$("#mapArea").hide();
}else{
	$("#mapArea").show();
}

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

(document).ready(function(){

	$('.teamLvTr').each(function(index, item){
	//////////////////수준 한글 변경//////////////////////

	var teamLvTr = $(this).children("#teamLvTd").text();
	//console.log("mCatg : " + findCh);
	//console.log("List : " + inLength);
	//console.log("catgL : " + catgList);
	if(teamLvTr == "L"){
		$(this).children("#teamLvTd").text("하");
	}else if(matLv == "M"){
		$(this).children("#teamLvTd").text("중");
	}else if(matLv == "H"){
		$(this).children("#teamLvTd").text("상");
	}
	////////////////////////////////////////////////////


	//////////////////현재 상태 한글 변경///////////////////			
	var ageTr = $(this).children("#ageTr").text();
	if(ageTr == 0){
		$(this).children("#ageTd").text("20대 이하");
	}else if(ageTr == 1){
		$(this).children("#ageTd").text("20대 ~ 30대");
	}else if(ageTr == 2){
		$(this).children("#ageTd").text("30대 ~ 40대");
	}else if(ageTr == 3){
		$(this).children("#ageTd").text("40대 ~ 50대");
	}else if(ageTr == 4){
		$(this).children("#ageTd").text("50대 이상");
	}
	});
});


</script>





</body>
</html>