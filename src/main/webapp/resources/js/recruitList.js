$(document).ready(function(){

	$('.rcTr').each(function(index, item){		
//////////////////현재 상태 한글 변경///////////////////
		var rcStatu = $(this).children("#rcStatu").text();
			if(rcStatu == "M"){
				$(this).children("#rcStatu").text("모접중");
			}else if(rcStatu == "R"){
				$(this).children("#rcStatu").text("모접중");
			}else if(rcStatu == "S"){
				$(this).children("#rcStatu").text("완료");
			}else if(rcStatu == "N"){
				$(this).children("#rcStatu").text("거절");
			}else if(rcStatu == "F"){
				$(this).children("#rcStatu").text("종료");
			}
		});
////////////////////////////////////////////////////
});