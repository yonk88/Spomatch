$(document).ready(function() {
	
	$("#boardPage").load("../board/boardPage.do");
	
	$("#teamBtn").click(function() {
		$("#matchList").load("/spomatch/board/matchList.do");
		 alert("teamBtn : ");
	});

	$("#recuBtn").click(function() {
		
		$("#matchList").load("/spomatch/recruit/recruitList.do");
		alert("recuBtn");
	});

	$("#leagueBtn").click(function() {
		alert("leagueBtn");
		// $("#boardPage").load("../board/boardPage.do");
	});

	$("#jLeagueBtn").click(function() {
		// alert("jLeagueBtn");
		// $("#boardPage").load("../board/boardPage.do");
	});

	$("#reportBtn").click(function() {
		// alert("reportBtn");
		// $("#boardPage").load("../board/boardPage.do");
	});
});
