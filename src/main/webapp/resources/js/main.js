$(document).ready(function() {
	//최초 로딩 
	$("#boardPage").load("../board/boardPage.do");
	
	//메뉴 클릭 이벤트
	$("#teamBtn").click(function() {
		$("#matchList").load("/spomatch/board/matchList.do");
		 alert("teamBtn : ");
	});

	$("#recuBtn").click(function() {
		$("#matchList").load("/spomatch/board/recruitList.do");
		alert("recuBtn");
	});

	$("#leagueBtn").click(function() {
		alert("leagueBtn");
		$("#matchList").load("/spomatch/board/matchList.do");
	});

	$("#jLeagueBtn").click(function() {
		alert("jLeagueBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
	});

	$("#reportBtn").click(function() {
		alert("reportBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
	});
});
 