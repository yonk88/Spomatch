
$(document).ready(function() {
	//최초 로딩 
	var catgVal;
	var url = "/spomatch/board/matchList.do?=";
	console.log("Start URL:" + url + ", catgVal : " + catgVal);
	
	$("#matchList").load(url + catgVal);
	
	$("#tabs> ul li").click(function(){
		
		var tabIndex = $(this).index();

		if(tabIndex == 0){
			catgVal ="S";
		}else if(tabIndex == 1){
			catgVal ="B";
		}else if(tabIndex == 2){
			catgVal ="G";
		}else if(tabIndex == 3){
			catgVal ="E";
		}
		$("#matchList").load(url + catgVal);
		console.log("final URL: " + url + ", CatgVal : " + catgVal);
	});

	$('#catgTab a:first').tab('show');
	
	//메뉴 클릭 이벤트
	$("#teamBtn").click(function() {
		$("#mainBoardTab").show();
		$("#matchList").load("/spomatch/board/matchList.do?="+catgVal);
		url = "/spomatch/board/matchList.do?catg=";
		$('#catgTab a:first').tab('show');
		$('#matchBtn').show();
		 //alert("teamBtn : ");
		 console.log("current URL:" + url);
	});

	$("#recuBtn").click(function() {
		$("#mainBoardTab").show();
		$("#matchList").load("/spomatch/board/recruitList.do?="+catgVal);
		url = "/spomatch/board/recruitList.do?catg=";
		$('#catgTab a:first').tab('show');
		$('#matchBtn').show();
		//alert("recuBtn");
		console.log("current URL:" + url);
	});

	$("#leagueBtn").click(function() {
		$("#mainBoardTab").show();
		$('#catgTab a:first').tab('show');
		$('#matchBtn').show();
		url = "/spomatch/league/leagueList.do?catg=";
		$("#matchList").load("/spomatch/league/leagueList.do?="+catgVal);
		//alert("leagueBtn");
		console.log("current URL:" + url);
	});

	$("#jLeagueBtn").click(function() {
		url = "/spomatch/league/leagueMyList.do";
		$("#matchList").load(url);
		$('#mainBoardTab').hide();
		$('#matchBtn').hide();
		//alert("jLeagueBtn");
		console.log("current URL:" + url);
	});

	$("#reportBtn").click(function() {
		//alert("reportBtn");
		// $("#matchList").load("/spomatch/board/matchList.do");
	});
	
	

	
// /////////////////모달 버튼////////////////////
	function matchT_Btn() {
		location.href = "/spomatch/match/matchTeam.do";
	}

	function matchR_Btn() {
		location.href = "/spomatch/recruit/recuit.do";
	}
	// ///////////////////////////////////////////

	// ///////////////////////모달설정///////////////
	$('#myModal1').on('shown.bs.modal', function() {
		$('#myInput').focus();
		$("#matchLoad").load("/spomatch/match/matchTeam.do");
	});

	$('#myModal2').on('shown.bs.modal', function() {
		$('#myInput').focus();
		$("#recuLoad").load("/spomatch/recruit/recruit.do");
	});
	// ////////////////////////////////////////////

});
 