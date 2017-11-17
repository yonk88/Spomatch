var mCatg = "";

$("#catgTab1").click(function(){
	mCatg = $("#catgTab1").text();
	$('.catg1').attr("catg","S");
	console.log(mCatg);
});

$("#catgTab2").click(function(){
	mCatg = $("#catgTab2").text();
	console.log(mCatg);
});

$("#catgTab3").click(function(){
	mCatg = $("#catgTab3").text();
	console.log(mCatg);
});

$("#catgTab4").click(function(){
	mCatg = $("#catgTab4").text();
	console.log(mCatg);
});