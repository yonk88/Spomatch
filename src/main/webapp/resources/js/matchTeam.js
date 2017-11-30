//////////////////////////////////////////////////////////////////////////
var cenParam = "";

var setY = "";
var setX = "";

var mt_Local = "";
	
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
//////////////////////////////////////////////////////////////////////////

$(document).ready(function(){
	//$("#mapLoad").load("/spomatch/mapApi/mapApi.do");
	
	var tm_Index = $("#tm_Name option").index($("#tm_Name option:selected"));
	var tm_Name = "";
	var tm_Vest = $("#tm_Vest li:eq(0)").text();
	var tm_Color = $("#tm_Color li:eq(0)").text();
	var m_Phone = $("#m_Phone li:eq(0)").text();
	var tm_Account = $("#tm_Account li:eq(0)").text();
	var tm_Age = $("#tm_Age option:eq(0)").text();
	
	$("#team_Age option:eq(" + tm_Age + ")").prop("selected", true);
	
	var tm_Lv = $("#tm_Lv li:eq(0)").text();
	$('input:radio[name="mat_Lv"][value="'+ tm_Lv +'"]').prop('checked', true);
	
	var tm_Cate = $("#tm_Cate li:eq(0)").text();
	
	var tm_Idx = $("#tm_Idx li:eq(0)").text();
	
	$("#team_Color").val(tm_Color);
	$("#team_Vest").val(tm_Vest);
	$("#mem_Phone").val(m_Phone);
	$("#team_Account").val(tm_Account);
	
	$("#tm_Name").click(function(){
		tm_Index = $("#tm_Name option").index($("#tm_Name option:selected"));
		tm_Name = $("#tm_Name option:eq(" + tm_Index + ")").val();
		
		tm_Vest = $("#tm_Vest li:eq(" + tm_Index + ")").text();
		$("#team_Vest").val(tm_Vest);
		
		tm_Color = $("#tm_Color li:eq(" + tm_Index + ")").text();
		$("#team_Color").val(tm_Color);
		
		m_Phone = $("#m_Phone li:eq(" + tm_Index + ")").text();
		$("#mem_Phone").val(m_Phone);
		
		tm_Age = $("#tm_Age li:eq(" + tm_Index + ")").text();
		$("#team_Age").val(tm_Age);
		$("#team_Age option:eq(" + tm_Age + ")").prop("selected", true);
		
		tm_Lv = $("#tm_Lv li:eq(" + tm_Index + ")").text();
		$('input:radio[name="mat_Lv"][value="'+ tm_Lv +'"]').prop('checked', true);
		
		tm_Account = $("#tm_Account li:eq(" + tm_Index + ")").text();
		$("#team_Account").val(tm_Account);
		
		tm_Cate = $("#tm_Cate li:eq(" + tm_Index + ")").text();
		
		tm_Idx = $("#tm_Idx li:eq(" + tm_Index + ")").text();
		
		if(tm_Cate == "S"){
			$("#fieldSize").show();
			$("#vestTeam").show();
			$("#colorTeam").show();
			$("#accountTeam").show();
			$("#mapArea").show();
			$("#mt_Local").hide();
			
		}else if(tm_Cate == "B"){
			$("#fieldSize").hide();
			$("#vestTeam").show();
			$("#colorTeam").show();
			$("#mapArea").show();
			$("#mt_Local").hide();
			
		}else if(tm_Cate == "G"){
			$("#fieldSize").hide();
			$("#vestTeam").hide();
			$("#colorTeam").hide();
			$("#accountTeam").hide();
			$("#mapArea").hide();
			$("#mt_Local").show();
			
		}else if(tm_Cate == "E"){
			$("#fieldSize").hide();
			$("#vestTeam").hide();
			$("#colorTeam").hide();
			$("#mapArea").show();
			$("#mt_Local").hide();
		}
		/*console.log("tm_Name : " + tm_Name);
		console.log("tm_Index : " + tm_Index);
		console.log("tm_Color : " + tm_Color);
		console.log("Pick date : " + $("#mat_MatchDay").val());*/
	});
	
	var mat_sHour = "";
	var mat_sMin = "";
	var mat_fHour = "";
	var mat_fMin = "";
	
	$("#mat_sHour").focusout(function(){
		mat_sHour = $("#mat_sHour").val();
		
		if(mat_sHour.length > 0){
			if(mat_sHour > 12){
				alert("12이상은 입력할 수 없습니다");
				$("#mat_sHour").focus();
				$("#mat_sHour").val("");
			}else if(!$("#mat_sHour").val().match(/^[0-9]*$/)){
				alert("숫자만 입력 가능합니다.");
				$("#mat_sHour").focus();
				$("#mat_sHour").val("");
			}else if(mat_sHour < 10){
				mat_sHour = 0 + $("#mat_sHour").val();
			}
		}
	});
	
	$("#mat_sMin").focusout(function(){
		mat_sMin = $("#mat_sMin").val();
		
		if(mat_sHour.length > 0){
			if(mat_sHour > 60){
				alert("60이상은 입력할 수 없습니다");
				$("#mat_sMin").focus();
				$("#mat_sMin").val("");
			}else if(!$("#mat_sMin").val().match(/^[0-9]*$/)){
				alert("숫자만 입력 가능합니다.");
				$("#mat_sMin").focus();
				$("#mat_sMin").val("");
			}else if(mat_sMin < 10){
				mat_sMin = 0 + $("#mat_sMin").val();
			}			
		}
	});
	
	$("#mat_fHour").focusout(function(){
		mat_fHour = $("#mat_fHour").val();
		
		if(mat_fHour.length > 0){
			if(mat_fHour > 12){
				alert("12이상은 입력할 수 없습니다");
				$("#mat_fHour").focus();
				$("#mat_fHour").val("");
			}else if(!$("#mat_fHour").val().match(/^[0-9]*$/)){
				alert("숫자만 입력 가능합니다.");
				$("#mat_fHour").focus();
				$("#mat_fHour").val("");
			}else if(mat_fHour < 10){
				mat_fHour = 0 + $("#mat_fHour").val();
			}
		}
		
	});
	
	$("#mat_fMin").focusout(function(){
		mat_fMin = $("#mat_fMin").val();
		
		if(mat_sHour.length > 0){
			if(mat_fMin > 60){
				alert("60 이상은 입력할 수 없습니다");
				$("#mat_fMin").focus();
				$("#mat_fMin").val("");
			}else if(!$("#mat_fMin").val().match(/^[0-9]*$/)){
				alert("숫자만 입력 가능합니다.");
				$("#mat_fMin").focus();
				$("#mat_fMin").val("");
			}else if(mat_fMin < 10){
				mat_fMin = 0 + $("#mat_fMin").val();
			}
		}
		
		var mat_Stime = mat_sHour + ":" + mat_sMin;
		var mat_Ftime = mat_fHour + ":" + mat_fMin;
		
		$("#mat_Stime").val(mat_Stime);
		$("#mat_Ftime").val(mat_Ftime);
		console.log(mat_Stime + ":" + mat_Ftime);
	});
	
	$("#selectLoc").click(function(){
		//alert("xVal : " + setX + ", yVal : " + setY + ", ADD: " + mt_Local);
		mat_Local = $("#mat_LocalMap").val(mt_Local);
		
		
		//$("#mat_Xval").val(setX);
		//$("#mat_Yval").val(setY);
		
		console.log($("#mat_Stime").val() + ":" + $("#mat_Ftime").val());
		console.log("setX : " + setX);
		console.log("setY : " + setY);
		console.log("tm_Cate : " + tm_Cate);
		console.log("tm_Name : " + $("#tm_Name option:eq(" + tm_Index + ")").val());
		console.log("mat_Local : " + mt_Local);
		console.log("mat_MatchDay : " + $("#mat_MatchDay").val());
		console.log("mat_Comment : " + $("#mat_Comment").val());
		
	});
	
	$("#sendBtn").click(function(){
		$("#mat_Cate").val(tm_Cate);
		$("#team_Idx").val(tm_Idx);
		
		var setLocalParam ="";
		if($("#tm_Cate li:eq(" + tm_Index + ")").text() == "G"){
			setLocalParam = $("#mat_LocalText").val();
			alert("game loc :" + setLocalParam);
		}else{
			$("#mat_LocalMap").val(mt_Local);
			setLocalParam = $("#mat_LocalMap").val();
			alert("other loc : " + setLocalParam);
		}
		
		var fSizeParam ="";
		if($("#tm_Cate li:eq(" + tm_Index + ")").text() == "S"){
			fSizeParam = $("#mat_Fsize").val();
		}else{
			fSizeParam = "";
		}
		
		var mapData ={
				
				xVal : setX
				,yVal : setY
				,"mat_Local" : setLocalParam
				,"mat_Cate" : $("#tm_Cate li:eq(" + tm_Index + ")").text()
				,"mat_MatchDay" : $("#mat_MatchDay").val()
				,"mat_Host" : $("#tm_Idx li:eq(" + tm_Index + ")").text()
				,"mat_Lv" : tm_Lv
				,"mat_Stime" : $("#mat_Stime").val()
				,"mat_Ftime" : $("#mat_Ftime").val()
				,"mat_Ampm" : $('input:radio[name="mat_Ampm"]:checked').val()
				,"mat_Fsize" : fSizeParam
				,"mat_Comment" : $("#mat_Comment").val()
		}
		
		$.ajax({
			url: "/spomatch/match/matchTeamProc.do"
			,type: "get"
			,data: mapData
			,dataType: "json"
			,success : function(data){	
				alert("success");
			}
		});
		
		location.href = "redirect:/spomatch/main/main.do";
	});	
	
});
