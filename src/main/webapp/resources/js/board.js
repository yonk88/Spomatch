$(document).ready(function(){
	$("#boardList").load("/spomatch/board/boardList.do");
});

///////////////////모달 버튼////////////////////
function matchT_Btn(){
	location.href = "/spomatch/match/match.do";
}

function matchR_Btn(){
	location.href = "/spomatch/recruit/recuit.do";
}
/////////////////////////////////////////////

/////////////////////////모달설정///////////////
$('#myModal1').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#matchLoad").load("/spomatch/match/match.do");
});


$('#myModal2').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#recuLoad").load("/spomatch/recruit/recruit.do");
});
//////////////////////////////////////////////


//////////////////탭 클릭 이벤트///////////////
$("#catgTab").click(function(){
	var temp = $("#catgTab").text();
	console.log(temp);
})
/////////////////////////////////////////

/*var caTab = "S";
$.ajax({
		url:"/spomatch//board/boardList.do"
		,type: "get"
		,data: caTab
		,success : function(data){
			
		}
});*/