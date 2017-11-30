//$('#modal').on('shown.bs.modal', function () {
//	  //$('#myInput').focus();
//	  $("#tmtLoad").load("/spomatch/league/leagueTmt.do");
//});
function showModal(mem_Idx){
	console.log("sdf : "+cnt, lea_Idx, status);
	if(status == 'T'){
		$("#loadModal").load("/spomatch/league/leagueTmt.do?lea_Idx="+lea_Idx);
	}else{
		$("#loadModal").load("/spomatch/league/leagueRank.do?lea_Idx="+lea_Idx);
	}
};

function showLea(lea_Idx, status){
	if(status == 'T'){
		url="/spomatch/league/tmtTest.do?lea_Idx="+lea_Idx;
	}else{
		url="/spomatch/league/leagueRank.do?lea_Idx="+lea_Idx;
	}
	$("#matchList").load(url);
	$('#mainBoardTab').hide();
	$('#matchBtn').hide();
	//alert("jLeagueBtn");
	console.log("current URL:" + url);
};