$(document).ready(function(){
	$("#matchList").load("/spomatch/board/matchList.do");
});

///////////////////모달 버튼////////////////////
function matchT_Btn(){
	location.href = "/spomatch/match/matchTeam.do";
}

function matchR_Btn(){
	location.href = "/spomatch/recruit/recuit.do";
}
/////////////////////////////////////////////

/////////////////////////모달설정///////////////
$('#myModal1').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#matchLoad").load("/spomatch/match/matchTeam.do");
});

$('#myModal2').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#recuLoad").load("/spomatch/recruit/recruit.do");
});
//////////////////////////////////////////////

///////////탭 클릭 이벤트 및 텝 카테고리 값 전송///////////
$("#tabs> ul li").click(function(){
	var tabIndex = $(this).index();
	var catgVal ="S";
	if(tabIndex == 0){
		catgVal = "S";
		if(catgVal == "S"){
		}
	}else if(tabIndex == 1){
		catgVal = "B";
		//alert(catgVal);
	}else if(tabIndex == 2){
		catgVal = "G";
		//alert(catgVal);
	}else if(tabIndex == 3){
		catgVal = "E";
		//alert(catgVal);
	}
	
	/*$.ajax({
		url: "/spomatch/board/matchList.do"
		,type: "get"
		,data: { "catg"d:catgVal }
		,dataType: "json"
		,success : function(data){
		}
	});*/
})
/////////////////////////////////////////

