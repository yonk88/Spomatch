$(document).ready(function(){
	$("#boardList").load("/spomatch/board/boardList.do");
	
});

//모달 버튼
function matchT_Btn(){
	location.href = "/spomatch/match/match.do";
}

function matchR_Btn(){
	location.href = "/spomatch/recruit/recuit.do";
}
/////////////////////////////////////////////

//모달설정
$('#myModal1').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#matchLoad").load("/spomatch/match/match.do");
});


$('#myModal2').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#recuLoad").load("/spomatch/recruit/recruit.do");
});
//////////////////////////////////////////////

//ajax


//////////////////////////////////////////////


//텝 클릭 시 카테고리 설정
$('.catgChange').on("click","li",function(){
	alert($(this).attr("id"));
})
