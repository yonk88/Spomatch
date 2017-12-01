<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>팀 매칭</title>

<!-- 달력 플러그인 -->
<script src="<c:url value="/resources/js/bootstrap-datepicker.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap-datepicker.kr.js" />"></script>

<script src="<c:url value="/resources/js/matchTeam.js" />"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/matchTeam.css" />

<!-- 달력 플러그인 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/datepicker3.css" />
	
</head>

<body>

<form action="#" method="get">
	<table class="table table-bordered" >
		<tr>
			<td id="trLeft">
			<!-- 팀 IDX -->
			<div id="tm_Idx" name="tm_Idx">
				<c:forEach var="i" items="${tmList }">
					<li>${i.team_Idx }</li>
				</c:forEach>
				<input type="hidden" id="team_Idx" name="team_Idx">
			</div>
			
			<!-- 카테고리용 -->
			<div id="tm_Cate" name="mat_Cate">
				<c:forEach var="i" items="${tmList }">
					<li>${i.team_Cate }</li>
				</c:forEach>
				<input type="hidden" id="mat_Cate" name="mat_Cate">
			</div>
		
			<!-- mat_TeamName -->
			<label class="control-label">팀 이름</label><br/>
			<select class="form-control" id="tm_Name" name="mat_Host">
		
				<c:forEach var="i" items="${tmList }">
					<option>${i.team_Name }</option>
				</c:forEach>
			
			</select>
			<br/><br/>
		
			<!-- mat_Matchday -->
			<label class="control-label">날짜</label>
			<br/>
				<div class="input-group date" data-provide="datepicker">
					<input type="text" class="form-control" id="mat_MatchDay" name="mat_MatchDay" value="날짜를 선택하세요">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-th"></span>
					</div>
				</div>
			<br/><br/>
		
			<!-- mat_Time -->
			<label class="control-label">시간</label>
			<br/>
				<div>
					오전&nbsp;<input type="radio" id="mat_Ampm" class= "mat_Ampm" name="mat_Ampm" value="AM" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					오후&nbsp;<input type="radio" id="mat_Ampm" class= "mat_Ampm" name="mat_Ampm" value="PM" checked="checked"/>
				</div>
			<br/>
			
			<div class="col-sm-3">
				<input type="text" id="mat_sHour" name="mat_sHour" size="3" class="form-control" />
			</div>
			 <label class="control-label col-sm-1">시:</label>
			<div class="col-sm-3">
				<input type="text" id="mat_sMin" name="mat_sMin"size="3" class="form-control" />
			</div>
				<label class="control-label col-sm-3">분  부터</label>
			<br/>
			<br/>
		
			<div class="col-sm-3">
				<input type="text" id="mat_fHour" name="mat_fHour" size="3" class="form-control" /> 
			</div>
			 <label class="control-label col-sm-1">시:</label>
		 
			<div class="col-sm-3">
				<input type="text" id="mat_fMin" name="mat_fMin" size="3" class="form-control" />
			</div>
			<label class="control-label col-sm-3">분  까지</label>
			<input type="hidden" id="mat_Stime" name="mat_Stime">
			<input type="hidden" id="mat_Ftime" name="mat_Ftime">
			<br/><br/><br/>
		
			<!-- mat_Local -->
			<div id="mt_Local">
				<label class="control-label">장소, 활동지역</label>
				<br/>
				<input type="text" id="mat_LocalText" name="mat_Local" class="form-control" />
				<br/>
			</div>
		
			<!-- mat_FieldSize -->
			<div id="fieldSize">
				<label class="control-label">구장크기</label><br/>
				<select class="form-control" id="mat_Fsize" name="mat_Fsize">
					<option>풋살</option>
					<option>10:10 이하</option>
					<option>11:11 규격</option>
				</select>
			</div>
			<br/>
		
			<!-- team_Age -->
			<label class="control-label">연령</label><br/>
			<div id="tm_Age">
				<c:forEach var="i" items="${tmList }">
					<li>${i.team_Age }</li>
				</c:forEach>
			</div>
			<select class="form-control" id="team_Age">
				<option>20대 이하</option>
				<option>20대 ~ 30대</option>
				<option>30대 ~ 40대</option>
				<option>40대 ~ 50대</option>
				<option>50대 이상</option>
			</select>
			<br/>
		
			<!-- team_Lv -->
			<label class="control-label">실력</label><br/>
				<div id="tm_Lv">
					<c:forEach var="i" items="${tmList }">
						<li >${i.team_Lv }</li>
					</c:forEach>
				</div>
				<div>
					상&nbsp;<input type="radio" id="mat_Lv" class= "teamLvH" name="mat_Lv" value="H" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					중&nbsp;<input type="radio" id="mat_Lv" class= "teamLvM" name="mat_Lv" value="M" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					하&nbsp;<input type="radio" id="mat_Lv" class= "teamLvL" name="mat_Lv" value="L" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<br/><br/>
		
			<!-- team_Vest -->
			<div id="vestTeam">
				<div id="tm_Vest">
					<c:forEach var="i" items="${tmList }">
						<li>${i.team_Vest }</li>
					</c:forEach>
				</div>
				<label class="control-label">조끼</label>
				<br/>
				<input type="text" id="team_Vest" name="team_Vest" class="form-control" placeholder="없을시 비우셔도 됩니다." value=""/>
			</div>
			<br/>
		
			<!-- team_Color -->
			<div id="colorTeam">
				<div id="tm_Color">
					<c:forEach var="i" items="${tmList }">
						<li>${i.team_Color }</li>
					</c:forEach>
				</div>
				<label class="control-label">유니폼</label>
				<br/>
				<input type="text" id="team_Color" name="team_Color" class="form-control" placeholder="없을시 비우셔도 됩니다." value="" />
			</div>
			<br/>
		
			<!-- mem_Phone -->
			<label class="control-label">대표연락처</label>
				<div id="m_Phone">
					<c:forEach var="i" items="${memList }">
						<li>${i.mem_Phone }</li>
					</c:forEach>
				</div>
			<br/>
			<input type="text" id="mem_Phone" name="mem_Phone" class="form-control" value="" />
			<br/>
		
			<!-- team_Account -->
			<div id="accountTeam">
				<div id="tm_Account">
					<c:forEach var="i" items="${tmList }">
						<li>${i.team_Account }</li>
					</c:forEach>
				</div>
				<label class="control-label">계좌번호</label>
				<br/>
				<input type="text" id="team_Account" name="team_Account" class="form-control" placeholder="없을시 비우셔도 됩니다." />
			</div>
			</td>
		
			<!-- mapAPI -->
			<td rowspan="8" id="tdRight">
				<div id="mapArea">
					<label class="control-label">장소 검색</label>	
 					<input type=text id="keyText" />
 	
    				<button type="button" class="btn btn-primary btn-sm" onclick="keyEnter()">찾기</button>
    				<br/><br/>
    
					<div class="map_wrap">
						<div id="map1" style="width:420;height:420px;overflow:hidden; padding-left:"30%"></div><br/>
						<button id="selectLoc" type="button" class="btn btn-primary btn-md">이곳으로 지정</button>
						
    					<!-- mat_Local -->
						<input type="text" id="mat_LocalMap" name="mat_Local" class="form-control" placeholder="위에 버튼 클릭 시 이곳에 주소가 저장됩니다." value=""/>
						<br/>
						<div class="hAddr"></div>
					</div>
				</div>
				<!-- mat_Comment -->
				<label class="control-label">팀 소개</label><br/>
				<textarea rows="10" cols="60" id="mat_Comment" name="mat_Comment"></textarea>
			</td>
		</tr>
	
	</table>
	<div id="matchModalFooter">
		<input type="button" id="sendBtn" class="btn btn-primary btn-md" value="등록 하기" data-dismiss="modal"/>
		<button type="button" class="btn btn-default btn-md" data-dismiss="modal">취소</button>
	</div>
	

</form>
	
	<!-- <script type="text/javascript">
	 var cenParam = "";

	var setY = "";
	var setX = "";

	var mt_Local = "";
		
	var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
	   mapOption = {
	       center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	       level: 1 // 지도의 확대 레벨
	};  

	//지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	//////////////////////////////////////////////////////////////////////////


	//////////////////////////////////////////////////////////////////////////
	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}


	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	//////////////////////////////////////////////////////////////////////////




	//////////////////////////////////////////////////////////////////////////
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	//////////////////////////////////////////////////////////////////////////    
	    


	var marker = new daum.maps.Marker(); // 클릭한 위치를 표시할 마커입니다

	var infowindow = new daum.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다



	//////////////////////////////////////////////////////////////////////////
	//지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === daum.maps.services.Status.OK) {
	            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	            
	            var content = '<div class="bAddr">' +
	                            '<span class="title">이곳으로 정하기</span>' + 
	                            detailAddr + 
	                        '</div>';

	            // 마커를 클릭한 위치에 표시합니다 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map);

	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            infowindow.setContent(content);
	            infowindow.open(map, marker);
	            
	            cenParam = mouseEvent.latLng;
	            var addrClicked = result[0].address.address_name;

				
	             var distance = Math.round();
	            displayCircleDot(disParam1, disParam2); 
	            setY = cenParam.getLat()
	            setX = cenParam.getLng()
	            
	            mt_Local = addrClicked;
	            console.log("click LatLng : " + cenParam);
	            console.log("Y축 : " + setY + ", X축 : " +setX)
	            console.log("clicked Addr : " + addrClicked);
	            //console.log("distance : " + distance);
	        }
	    });
	});
	//////////////////////////////////////////////////////////////////////////



	//////////////////////////////////////////////////////////////////////////
	//키워드 검색
	function keyEnter(){
		var keyText = $("#keyText").val();	
		console.log("TextVal : " + keyText);
		//장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places();

		//키워드로 장소를 검색합니다
		ps.keywordSearch(keyText, placesSearchCB); 

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
		    if (status === daum.maps.services.Status.OK) {

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new daum.maps.LatLngBounds();

		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
		            setY = data[i].y;
			    	setX = data[i].x;
			    	//console.log("지역 Y : " + setY);
		        }       

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		        
		    }else{
		    	alert("검색결과가 없습니다. 다시 입력해 주세요.");    	
		    }
		    
		}
		
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
		    
		    // 마커를 생성하고 지도에 표시합니다
		    var marker1 = new daum.maps.Marker({
				map: map,
				position: new daum.maps.LatLng(place.y, place.x) 
			});

		    
		    // 마커에 클릭이벤트를 등록합니다
		    daum.maps.event.addListener(marker1, 'click', function() {
		       
		    	setY = place.y;
		    	setX = place.x;
		    	cenParam = "(" + setY + ", " + setX + ")";
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div class="bAddr">' + '<span class="title">이곳으로 정하기</span>' + place.address_name + ' ' + '<span class="placeName">'+ place.place_name +'</span>' + '</div>');
		        infowindow.open(map, marker1);
		        
		        mt_Local = place.address_name;
		        console.log("Out. click LatLng : " + cenParam);
		        console.log("Out.Y축 : " + setY + ", X축 : " + setX);
		        
		    });
		}
	} 
	
	</script> -->
</body>
</html>