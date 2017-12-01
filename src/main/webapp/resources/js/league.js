//$('#modal').on('shown.bs.modal', function () {
//	  //$('#myInput').focus();
//	  $("#tmtLoad").load("/spomatch/league/leagueTmt.do");
//});

$(document).ready(function(){
	
	$("#headerLoad").load("/spomatch/main/main.do");
var tempCatg = $("#tempCatg").val();
   if(tempCatg == "S" || tempCatg == ""){
      $("#catgTab a:first").tab("show");
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
   
///////////////////////최초 로딩 ///////////////
   var catgVal;
   var url = "/spomatch/board/matchList.do?catg=";
   console.log("Start URL:" + url + ", catgVal : " + catgVal);
   //$("#catgTab li:eq(0)").tab("show");
   
///////////////////////////////////////////////////
   
   $("#tabs> ul li").click(function(){

      var tabIndex = $(this).index();
      var num = "";
      if(tabIndex == 0){
         num = 0;
         catgVal ="S";
         $("#catgTab li:eq(0)").removeClass("active");
         $("#catgTab li:eq(1)").removeClass("active");
         $("#catgTab li:eq(2)").removeClass("active");
         $("#catgTab li:eq(3)").addClass("active");
      }else if(tabIndex == 1){
         num = 1;
         catgVal ="B";
         $("#sTab").removeClass("active");
         $("#bTab").addClass("active");
         $("#gTab").removeClass("active");
         $("#eTab").removeClass("active");
      }else if(tabIndex == 2){
         num = 2;
         catgVal ="G";
         $("#sTab").removeClass("active");
         $("#bTab").removeClass("active");
         $("#gTab").addClass("active");
         $("#eTab").removeClass("active");
      }else if(tabIndex == 3){
         num = 3;
         catgVal ="E";
         $("#sTab").removeClass("active");
         $("#bTab").removeClass("active");
         $("#gTab").removeClass("active");
         $("#eTab").addClass("active");
      }
      location.href = url + catgVal;
      console.log("final URL: " + url + ", CatgVal : " + catgVal);
   });

});



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
	location.href = url;
	console.log("current URL:" + url);
};