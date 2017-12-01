/////////////////모달////////////////////////////

var idx = $('<input type="hidden" name="idx">');

function showContent(idx) {
	var indexNum = $(this).index();
	
	console.log("1" + indexNum);
	
	console.log("idxFirst" + idx);
	$('#matchInfoM').on('shown.bs.modal', function() {
		$("#matchInfoGo").load("/spomatch/board/matchInfo.do?idx=" + idx);
		console.log("idxsecond" + idx);
	});
	console.log("idxthird" + idx);
	
	$('.mCatgTr').on('hidden.bs.modal', function () {
	    console.log('modal close');
	    $(this).find("#matchInfoGo").html("");
	});
	return idx;
};
/////////////////////////////////////////////////



$(document).ready(function(){
	
	$('#matchTeam').on('shown.bs.modal', function() {
		$('#myInput').focus();
		$("#matchLoad").load("/spomatch/match/matchTeam.do");
	});
	
	$("#headerLoad").load("/spomatch/main/main.do");
	
	var tempCatg = $("#tempCatg").val();
	if(tempCatg == "S" || tempCatg == ""){
		$("#catgTab li:eq(0)").addClass("active");
		$("#catgTab li:eq(1)").removeClass("active");
		$("#catgTab li:eq(2)").removeClass("active");
		$("#catgTab li:eq(3)").removeClass("active");
	}else if(tempCatg == "B"){
		$("#catgTab li:eq(0)").removeClass("active");
		$("#catgTab li:eq(1)").addClass("active");
		$("#catgTab li:eq(2)").removeClass("active");
		$("#catgTab li:eq(3)").removeClass("active");
	}else if(tempCatg == "G"){
		$("#catgTab li:eq(0)").removeClass("active");
		$("#catgTab li:eq(1)").removeClass("active");
		$("#catgTab li:eq(2)").addClass("active");
		$("#catgTab li:eq(3)").removeClass("active");
	}else if(tempCatg == "E"){
		$("#catgTab li:eq(0)").removeClass("active");
		$("#catgTab li:eq(1)").removeClass("active");
		$("#catgTab li:eq(2)").removeClass("active");
		$("#catgTab li:eq(3)").addClass("active");
	}

	var num = "";

///////////////////////최초 로딩 ///////////////
	var catgVal;
	var url = "/spomatch/board/matchList.do?catg=";
	console.log("Start URL:" + url + ", catgVal : " + catgVal);
	//$("#catgTab li:eq(0)").tab("show");
	
///////////////////////////////////////////////////
	$("#match_bItem> table tr").click(function(){
		
	alert("fdasg");	
		
	});
	
	$("#tabs> ul li").click(function(){
		
		var tabIndex = $(this).index();
		var num = "";
		if(tabIndex == 0){
			num = 0;
			catgVal ="S";
		}else if(tabIndex == 1){
			num = 1;
			catgVal ="B";
		}else if(tabIndex == 2){
			num = 2;
			catgVal ="G";
		}else if(tabIndex == 3){
			num = 3;
			catgVal ="E";
		}
		location.href = url + catgVal;
		console.log("final URL: " + url + ", CatgVal : " + catgVal);
	});
	
	$('.mCatgTr').each(function(index, item){
//////////////////수준 한글 변경//////////////////////
		
		var matLv = $(this).children("#matLv").text();
			//console.log("mCatg : " + findCh);
			//console.log("List : " + inLength);
			//console.log("catgL : " + catgList);
			if(matLv == "L"){
				$(this).children("#matLv").text("하");
			}else if(matLv == "M"){
				$(this).children("#matLv").text("중");
			}else if(matLv == "H"){
				$(this).children("#matLv").text("상");
			}
////////////////////////////////////////////////////
			
			
//////////////////현재 상태 한글 변경///////////////////			
		var matStatu = $(this).children("#matStatus").text();
			if(matStatu == "H"){
				$(this).children("#matStatus").text("모집중");
			}else if(matStatu == "A"){
				$(this).children("#matStatus").text("원정");
			}else if(matStatu == "S"){
				$(this).children("#matStatus").text("완료");
			}else if(matStatu == "N"){
				$(this).children("#matStatus").text("거절");
			}else if(matStatu == "D"){
				$(this).children("#matStatus").text("일반");
			}else if(matStatu == "F"){
				$(this).children("#matStatus").text("종료");
			}
		});
////////////////////////////////////////////////////

});