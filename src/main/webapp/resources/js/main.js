
$(document).ready(function() {
///////////////////////최초 로딩 ///////////////
	/*var catgVal;
	var url = "/spomatch/board/matchList.do?=";*/
	
///////////////////////////////////////////////////

	//메뉴 클릭 이벤트
	$("#teamBtn").click(function() {
		location.href = "/spomatch/board/matchList.do";
	});

	$("#leagueBtn").click(function() {
		location.href = "/spomatch/league/leagueList.do";
	});

	$("#jLeagueBtn").click(function() {
		location.href = "/spomatch/league/leagueMyList.do";
	});
	

	
//	function showModal(cnt, lea_Idx, status, modal){
//		console.log(cnt, lea_Idx, status, modal);
//		if(status == 'T'){
//			$("#boardPage").load("/spomatch/league/leagueTmt.do?lea_Idx="+lea_Idx);
//		}else{
//			$("#boardPage").load("/spomatch/league/leagueRank.do?lea_Idx="+lea_Idx);
//		}
//	};

	$("#reportBtn").click(function() {
		location.href = "/spomatch/board/report.do";
		//alert("reportBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
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
