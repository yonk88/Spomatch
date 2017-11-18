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
	$("#boardPage").load("../board/boardPage.do");	
});

$("#recuBtn").click(function(){
	alert("recuBtn");
	$("#boardPage").load("../recruit/recruitList.do");	
});

$("#leagueBtn").click(function(){
	alert("leagueBtn");
	//$("#boardPage").load("../board/boardPage.do");	
});

$("#jLeagueBtn").click(function(){
	alert("jLeagueBtn");
	//$("#boardPage").load("../board/boardPage.do");	
});

$("#reportBtn").click(function(){
	alert("reportBtn");
	//$("#boardPage").load("../board/boardPage.do");	
});
