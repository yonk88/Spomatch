/*$(document).ready(function(){
	$.ajax({
		url: "/spomatch/board/matchList.do"
		,type: "get"
		,data: { "catg":catgVal }
		,dataType: "json"
		,success : function(data){
			
		}
	});	
});*/

$("#teamBtn").click(function(){
	alert("teamBtn");
	$("#boardPage").attr("menuCatg","team");
	alert($("#boardPage").attr("val"));
	$("#boardPage").load("../board/boardPage.do");	
});

$("#recuBtn").click(function(){
	alert("recuBtn");
	$("#boardPage").load("../recruit/recruitList.do");	
});

$("#leagueBtn").click(function(){
	alert("leagueBtn");
	$("#boardPage").load("../league/leagueList.do");	
});

$("#jLeagueBtn").click(function(){
	alert("jLeagueBtn");
	$("#boardPage").load("../league/leagueMyList.do");	
});

$("#reportBtn").click(function(){
	alert("reportBtn");
	//$("#boardPage").load("../board/boardPage.do");	
});
