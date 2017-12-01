
$(document).ready(function() {
<<<<<<< HEAD
///////////////////////최초 로딩 ///////////////
	/*var catgVal;
	var url = "/spomatch/board/matchList.do?=";*/

		//최초 로딩 
	$("#boardPage").load("/spomatch/board/matchList.do");
	$("#userInfo").load("/spomatch/sideMenu/sideMenu.do");
///////////////////////////////////////////////////
	
=======
	//최초 로딩 
	$("#boardPage").load("../board/boardPage.do");
	$("#userInfo").load("/spomatch/sideMenu/sideMenu.do");

>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
	//메뉴 클릭 이벤트
	$("#teamBtn").click(function() {
<<<<<<< HEAD
		location.href = "/spomatch/board/matchList.do";
=======
		$("#boardPage").load("/spomatch/board/boardPage.do");
		$("#matchList").load("/spomatch/board/matchList.do");
		alert("teamBtn : ");
	});

	$("#recuBtn").click(function() {
		$("#boardPage").load("/spomatch/board/boardPage.do");
		$("#matchList").load("/spomatch/recruit/recruitList.do");
		alert("recuBtn");
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
	});

	$("#leagueBtn").click(function() {
		location.href = "/spomatch/league/leagueList.do";
	});

	$("#jLeagueBtn").click(function() {
		location.href = "/spomatch/league/leagueMyList.do";
	});

<<<<<<< HEAD
	$("#reportBtn").click(function() {
		location.href = "/spomatch/board/report.do";
		//alert("reportBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
=======
	$("#reportBtn").click(function() {
		alert("reportBtn");
		$("#boardPage").load("/spomatch/board/reportPage.do");
		// alert("reportBtn");
		// $("#matchList").load("../board/boardPage.do");
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
	});
///////////////////////////////////////////////////////


///////////////////모달 버튼////////////////////
	function matchT_Btn() {
		location.href = "/spomatch/match/matchTeam.do";
	}

	function matchR_Btn() {
		location.href = "/spomatch/recruit/recuit.do";
	}
/////////////////////////////////////////////

	
/////////////////////////모달설정///////////////
	$('#myModal1').on('shown.bs.modal', function() {
		$('#myInput').focus();
		$("#matchLoad").load("/spomatch/match/matchTeam.do");
	});

});

<<<<<<< HEAD

=======
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
