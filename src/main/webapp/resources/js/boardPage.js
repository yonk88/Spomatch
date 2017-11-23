$(document).ready(function(){
	$("#matchList").load("/spomatch/board/matchList.do");
	
});

/////// 탭 매뉴 onclick형식 경로설정
/*var goTo = "/spomatch/board/matchList.do?catg=S";
function catg1(){
	$("#matchList").load("/spomatch/board/matchList.do?catg=S");
}

function catg2(){
	$("#matchList").load("/spomatch/board/matchList.do?catg=B");
}

function catg3(){
	$("#matchList").load("/spomatch/board/matchList.do?catg=G");
}

function catg4(){
	$("#matchList").load("/spomatch/board/matchList.do?catg=E");
}*/

///////////////////모달 버튼////////////////////
function matchT_Btn(){
	location.href = "/spomatch/match/matchTeam.do";
}

function matchR_Btn(){
	location.href = "/spomatch/recruit/recuit.do";
}
/////////////////////////////////////////////

/////////////////////////모달설정///////////////
$('#myModal1').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#matchLoad").load("/spomatch/match/matchTeam.do");
});

$('#myModal2').on('shown.bs.modal', function () {
	  $('#myInput').focus();
	  $("#recuLoad").load("/spomatch/recruit/recruit.do");
});
//////////////////////////////////////////////

///////////탭 클릭 이벤트 및 텝 카테고리 값 전송///////////
/*$("#tabs> ul li").click(function(){
	
	var tabIndex = $(this).index();
	var catgVal ="S";

	if(tabIndex == 0){
				catgVal = "S";
			}else if(tabIndex == 1){
				catgVal = "B";
				//$("td:contains('B')").hide();
			}else if(tabIndex == 2){
				catgVal = "G";
			}else if(tabIndex == 3){
				catgVal = "E";
			}
	var href = "/spomatch/board/matchList.do?catg=" + catgVal;
	$("#matchList").location.href = "/spomatch/board/matchList.do?catg=" + catgVal;
	//alert(catgVal);
	
	$('.mCatgTr').each(function(index, item){
		var catgList = $(this).children().text(); 
		var catgLast = catgList.charAt(catgList.length-1);
		var findCh = $("#mCatg").parent().text();
			//console.log("mCatg : " + findCh);
			console.log("List : " + catgList);
			console.log("Last : " + catgLast);
			console.log("vals : " + catgVal);
			
			if(tabIndex == 0){
				catgVal = "S";
				$("td:contains('S')").parent().hide();
			}else if(tabIndex == 1){
				catgVal = "B";
				$("").show();
				//$("td:contains('B')").hide();
			}else if(tabIndex == 2){
				catgVal = "G";
			}else if(tabIndex == 3){
				catgVal = "E";
			}
	});
	
	$.ajax({
		url: "/spomatch/board/matchList.do"
		,type: "get"
		,data: { "catg":catgVal }
		,dataType: "json"
		,success : function(data){
			alert("WOrk");
			
		}
	});
})*/
/////////////////////////////////////////

