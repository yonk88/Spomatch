$(document).ready(function(){	
	$("#boardList").load("../board/boardList.do");
	

	$("#sTab").click(function(){
		$(this).attr("catg","1");
		alert($(this).attr("catg"));
		console.log($(this).attr("val"));
	});
	
	$("#bTab").click(function(){
		$(this).attr("catg","2");
		alert($(this).attr("catg"));
		console.log($(this).attr("val"));
	});
	
	$("#gTab").click(function(){
		$(this).attr("catg","3");
		alert($(this).attr("catg"));
		console.log($(this).attr("val"));
	});
	
	$("#eTab").click(function(){
		$(this).attr("catg","4");
		alert($(this).attr("catg"));
		console.log($(this).attr("val"));
	});
});

