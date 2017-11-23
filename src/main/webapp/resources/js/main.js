$(document).ready(function() {
	//최초 로딩 
	$("#boardPage").load("../board/boardPage.do");
	$("#userInfo").load("/spomatch/main/sideMenu.do");

	//메뉴 클릭 이벤트
	$("#teamBtn").click(function() {
		$("#boardPage").load("/spomatch/board/boardPage.do");
		$("#matchList").load("/spomatch/board/matchList.do");
		alert("teamBtn : ");
	});

	$("#recuBtn").click(function() {
		$("#boardPage").load("/spomatch/board/boardPage.do");
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
		alert("reportBtn");
		$("#boardPage").load("/spomatch/board/reportPage.do");
	});
});

