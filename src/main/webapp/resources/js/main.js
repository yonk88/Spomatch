$(document).ready(function() {
	//최초 로딩 
	$("#boardPage").load("../board/boardPage.do");
	
	//메뉴 클릭 이벤트
	$("#teamBtn").click(function() {
		$("#matchList").load("/spomatch/board/matchList.do");
		$('#catgTab a:first').tab('show');
		 //alert("teamBtn : ");
	});

	$("#recuBtn").click(function() {
		$("#matchList").load("/spomatch/board/recruitList.do");
		$('#catgTab a:first').tab('show');
		//alert("recuBtn");
	});

	$("#leagueBtn").click(function() {
		//alert("leagueBtn");
		$('#catgTab a:first').tab('show');
		$("#matchList").load("/spomatch/league/leagueList.do");
	});

	$("#jLeagueBtn").click(function() {
		//alert("jLeagueBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
	});

	$("#reportBtn").click(function() {
		//alert("reportBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
	});
});
 