<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지도API</title>

<style>
    /* .map_wrap {position:relative;width:100%;height:350px;} */
    .title {font-weight:bold;display:block; color:blue;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    /* #centerAddr {display:block;margin-top:2px;font-weight: normal;} */
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script>

<%-- <!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script>
	
<!-- js 경로 -->
<script src="<c:url value="/resources/js/mapApi.js" />"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/mapApi.css" />
 --%>
</head>

<body>
	<h1>키워드 검색4</h1>
	
 	<input type=text id="keyText" />
    <button type="button" onclick="keyEnter()">search</button>
    <br/><br/>
    
<div class="map_wrap">
   
    <div id="map" style="width:350px;height:350px;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
       <!--  <span id="centerAddr"></span> -->
    </div>    
    
</div>

<script>
//////////////////////////////////////////////////////////////////////////
var cenParam = "";

var cenY = "";
var cenX = "";
	
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
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

			
            /* var distance = Math.round();
            displayCircleDot(disParam1, disParam2); */
            
            
            console.log("click LatLng : " + cenParam);
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
	       
	    	var setY = place.y;
	    	var setX = place.x;
	    	cenParam = "(" + setY + ", " + setX + ")";
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<span class="title">이곳으로 정하기</span>' + place.place_name + '</div>');
	        infowindow.open(map, marker1);
	        console.log("click LatLng : " + cenParam);
	        
	    });
	}
}
//////////////////////////////////////////////////////////////////////////


//"마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
    function showMarkers() {
    	marker(map);    
    }

    // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
    function hideMarkers() {
    	marker(null);    
    }
	

/* // 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo); */

    


/* // 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
daum.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
    cenParam = map.getCenter() 
    console.log(map.getCenter());
}); */




/* 
// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === daum.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');
        infoDiv.innerHTML = result[0].address_name;
    }    
} */

	</script>
</body>
</html>