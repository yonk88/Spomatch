function showModal(mem_Idx){
	console.log("sdf : "+cnt, lea_Idx, status);
	if(status == 'T'){
		$("#loadModal").load("/spomatch/league/leagueTmt.do?lea_Idx="+lea_Idx);
	}else{
		$("#loadModal").load("/spomatch/league/leagueRank.do?lea_Idx="+lea_Idx);
	}
};

$(function(){
	$("#deadline").datepicker(); 
 });
 $.datepicker.setDefaults({
	 dateFormat:'yy년mm월dd일'
	 });
 
 $(document).ready(function(){
	$("#headerLoad").load("/spomatch/main/main.do");
 });