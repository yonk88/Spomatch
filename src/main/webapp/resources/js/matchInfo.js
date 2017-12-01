/*///////////////////////지도///////////////////////

var mapContainer = document.getElementById('mapp'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(33.450701, 126.570667); 

// 마커를 생성합니다
var marker = new daum.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    

//////////////////////////////////////////////////////////////////////////////
*/

$(document).ready(function(){
	//$("#map").load("/spomatch/mapApi/mapApi.do")
//////////////////수준 한글 변경//////////////////////
	var matLv = $("#infoTable tr").children("#matLv").text();
		//console.log("mCatg : " + findCh);
		//console.log("List : " + inLength);
		//console.log("catgL : " + catgList);
		if(matLv == "L"){
			$(this).children("#matLv").text("하");
		}else if(matLv == "M"){
			$(this).children("#matLv").text("중");
		}else if(matLv == "H"){
			$(this).children("#matLv").text("상");
		}
////////////////////////////////////////////////////

			
//////////////////현재 상태 한글 변경///////////////////			
	var matStatu = $(this).children("#matStatus").text();
		if(matStatu == "H"){
			$(this).children("#matStatus").text("초청");
		}else if(matStatu == "A"){
			$(this).children("#matStatus").text("원정");
		}else if(matStatu == "S"){
			$(this).children("#matStatus").text("완료");
		}else if(matStatu == "N"){
			$(this).children("#matStatus").text("거절");
		}else if(matStatu == "D"){
			$(this).children("#matStatus").text("일반");
		}else if(matStatu == "F"){
			$(this).children("#matStatus").text("종료");
		}
////////////////////////////////////////////////////
});