function upStatus(num){
	alert("대회마감?");
	var sts=Number(num);
	document.getElementById("lea_Status").value=Number(sts);
	document.getElementById("lea_Fin").value="F";
	document.getElementById("finForm").action="/spomatch/league/leagueFinAction.do";
	console.log(document.getElementById("finForm").action);
	document.getElementById("finForm").submit();
};

function submitUp(num, teamNum){
/*	for(var i=1;i<=num;i++){
		var btnIdx=Number(num*100)+i;
		document.getElementById("team_Idx").value=document.getElementById("tmtBtn"+btnIdx).name;
		document.getElementById("lt_Group").value=btnIdx;
		console.log("teamIdx = "+document.getElementById("team_Idx").value+", ltGroup = "+document.getElementById("lt_Group").value);
		document.getElementById("upTmtForm").submit();
	}*/
	if(document.getElementById("gan").value=="대진관리"){
		console.log("이거슨 대진관리일때 저장");
		var check=Number(teamNum);
		for(var i=1;i<=num;i++){
			var btnId=Number(num*100)+i;
			console.log("tmtBtnnnn"+btnId);
			if(document.getElementById("tmtBtn"+btnId).value == num+"강"){
				check--;
			}
		}
		console.log("check : "+check);
		if(check!=teamNum){
			alert("대진표 작성이 완료되지 않았습니다.");
		}else{
			document.getElementById("leaForm"). action="/spomatch/league/leagueStAction.do";
			document.getElementById("leaForm").submit();
			$("#insert").hide();
			$("#ganCan").hide();
			$("#teamList").hide();
			
		}
	}else if(document.getElementById("gan").value=="결과관리"){
		console.log("이거슨 결과관리일때 저장");
		var sts=(document.getElementById("lea_Status").value)/2;
		document.getElementById("lea_Status").value=Number(sts);
		document.getElementById("leaForm"). action="/spomatch/league/leagueStsAction.do";
		document.getElementById("leaForm").submit();
		$("#insert").hide();
		$("#ganCan").hide();
		$("#teamList").hide();
	}
	
}

function gan(num, sts){
	var btnNum=Number(btnNum);
	console.log(btnNum);
	var cnt=num/sts;
	
	document.getElementById("insert").disabled=false;
	document.getElementById("ganCan").disabled=false;
	if(document.getElementById("lea_Style").value=="N"){
		for(var i=1;i<=num;i++){
			btnNum=(num*100)+i;
			console.log(num, "tmtBtn"+btnNum);
			document.getElementById("tmtBtn"+btnNum).disabled=false;
			sessionStorage.setItem(btnNum, null);
			console.log(sessionStorage.getItem(btnNum));
		}
		$("#teamList").show();
	}else if(document.getElementById("lea_Style").value=="T"){
		for(var i=1;i<=num;i+=cnt){
			btnNum=(sts*100)+i;
			console.log(num, "tmtBtn"+btnNum);
			document.getElementById("tmtBtn"+btnNum).disabled=false;
			sessionStorage.setItem(btnNum, null);
			console.log(sessionStorage.getItem(btnNum));
		}
	}
	
	$("#insert").show();
	$("#ganCan").show();
}

function ganCan(num){
	var btnNum=Number(btnNum);
	console.log(btnNum);
	for(var i=1;i<=num;i++){
		btnNum=(num*100)+i;
		console.log(num, "tmtBtn"+btnNum);
		document.getElementById("tmtBtn"+btnNum).disabled=true;
		//console.log("결과관리일땐 찍히면 ㄴㄴ해");
		if(document.getElementById("lea_Style").value!="T"){
			document.getElementById("tmtBtn"+btnNum).value=num+"강";
			console.log("결과관리일땐 찍히면 ㄴ해");
		}
		if(sessionStorage.getItem("teamBtn"+i)!=null){
			document.getElementById(sessionStorage.getItem("teamBtn"+i)).disabled=false;
		}
	}
	$("#insert").hide();
	$("#ganCan").hide();
	$("#teamList").hide();
}

function wAndl(){
	console.log("함수로꺼내짐?");
	var frm = $("#upTmtForm").serialize();
	$.ajax({
		type : "post",
		url : "/spomatch/league/leagueWinnerAction.do",
		data : frm,
		dataType : "html",
		success : function(data){
			//alert("성공~")
		}
	});
}


function chan(id, num, sts){		//대진표부분 활성화시 클릭이벤트 (대진표 미작성: 대진표작성모드 , 대진표작성: 결과관리모드)
	console.log(document.getElementById("tmtBtn"+id));
	var btnId=Number(id);
	var sty=document.getElementById("lea_Style").value;
	console.log(id, id%2, "tmtBtn"+Number(id-1), id+1)
	console.log("styl : "+sty);
	var cnt = Number(num/sts);
	console.log("존말로할떄진짜"+num+", "+sts);
	if(sty=="T"){
		if(id%2==1){
			var fuck=Number(0);
			if(num>sts){
				while(true){
					console.log(btnId%100+", "+fuck);
					console.log(btnId%100+", "+Number(fuck)+(cnt*2));
					if(btnId%100>fuck && btnId%100<Number(fuck)+(cnt*2)){
						console.log(fuck+", fu+"+fuck+(cnt*2));
						
						var dkanrjsk=Number(fuck+(cnt*2))-1;
						console.log("무쌍쓰"+dkanrjsk);
						
						if(btnId%100==Number(fuck)+1){
							
							var btnum=Number(Number(sts*100)+Number(fuck+1));
							console.log("왜"+btnum);
							document.getElementById("tmtBtn"+btnum).style="width:100%; height:100%; background-color:#a9db80";
							document.getElementById("lt_Group").value=btnId;
							document.getElementById("lt_Status").value="T";
							var wp=Number(document.getElementById("tmtBtn"+btnum).name);
							
							console.log("이게왜널임"+Number(wp/2));
							
							document.getElementById("lt_Point").value=Number(wp/2);
							console.log(document.getElementById("lt_Point").value);
							console.log("댐? 어? 댄?"+wp/2+", "+wp);
							
							var frm = $("#upTmtForm").serialize();
							$.ajax({
								type : "post",
								url : "/spomatch/league/leagueWinnerAction.do",
								data : frm,
								dataType : "html",
								success : function(data){
									//alert("성공?")
								}
							});
							var btcnt=Number(btnum+cnt);
							console.log("뭐"+btcnt);
							document.getElementById("tmtBtn"+btcnt).style="width:100%; height:100%; background-color:#ff9a9a";
							document.getElementById("lt_Group").value=Number(btnId+cnt);
							document.getElementById("lt_Status").value="L";
							var lp=Number(document.getElementById("tmtBtn"+btcnt).name);
							document.getElementById("lt_Point").value=lp;
							var frm = $("#upTmtForm").serialize();
							console.log(frm);
							$.ajax({
								type : "post",
								url : "/spomatch/league/leagueWinnerAction.do",
								data : frm,
								dataType : "html",
								success : function(data){
									//alert("성공?")
								}
							});
							break;
						}else if(btnId%100==Number(fuck+(cnt*2))-1){
							var temp=Number((fuck+(cnt*2))-1);
							var btnum=Number(Number(sts*100)+temp);
							console.log("확씨"+btnum);
							document.getElementById("tmtBtn"+btnum).style="width:100%; height:100%; background-color:#a9db80";
							document.getElementById("lt_Group").value=btnId;
							document.getElementById("lt_Status").value="T";
							var wp=Number(document.getElementById("tmtBtn"+btnum).name);
							
							console.log("이게왜널임"+Number(wp/2));
							
							document.getElementById("lt_Point").value=Number(wp/2);
							console.log(document.getElementById("lt_Point").value);
							console.log("댐? 어? 댄?"+wp/2+", "+wp);
							var frm = $("#upTmtForm").serialize();
							$.ajax({
								type : "post",
								url : "/spomatch/league/leagueWinnerAction.do",
								data : frm,
								dataType : "html",
								success : function(data){
								//	alert("성공~")
								}
							});
							var btcnt=Number(btnum-cnt);
							document.getElementById("tmtBtn"+btcnt).style="width:100%; height:100%; background-color:#ff9a9a";
							document.getElementById("lt_Group").value=Number(btnId-cnt);
							document.getElementById("lt_Status").value="L";
							var lp=Number(document.getElementById("tmtBtn"+btcnt).name);
							document.getElementById("lt_Point").value=lp;
							var frm = $("#upTmtForm").serialize();
							$.ajax({
								type : "post",
								url : "/spomatch/league/leagueWinnerAction.do",
								data : frm,
								dataType : "html",
								success : function(data){
									//alert("성공~")
								}
							});
							break;
						}
					}
					fuck=Number(fuck+(cnt*2));
					if(fuck>1600)
						break;
				}
				}else{
				document.getElementById("tmtBtn"+btnId).style="width:100%; height:100%; background-color:#a9db80";
				document.getElementById("lt_Group").value=btnId;
				document.getElementById("lt_Status").value="T";
				var wp=Number(document.getElementById("tmtBtn"+btnId).name);
				
				console.log("이게왜널임"+Number(wp/2));
				
				document.getElementById("lt_Point").value=Number(wp/2);
				console.log(document.getElementById("lt_Point").value);
				console.log("댐? 어? 댄?"+wp/2+", "+wp);
				var frm = $("#upTmtForm").serialize();
				$.ajax({
					type : "post",
					url : "/spomatch/league/leagueWinnerAction.do",
					data : frm,
					dataType : "html",
					success : function(data){
						//alert("성공~")
					}
				});
				
				document.getElementById("tmtBtn"+Number(btnId+1)).style="width:100%; height:100%; background-color:#ff9a9a";
				document.getElementById("lt_Group").value=Number(btnId+1);
				document.getElementById("lt_Status").value="L";
				var lp=Number(document.getElementById("tmtBtn"+Number(btnId+1)).name);
				document.getElementById("lt_Point").value=lp;
				var frm = $("#upTmtForm").serialize();
				$.ajax({
					type : "post",
					url : "/spomatch/league/leagueWinnerAction.do",
					data : frm,
					dataType : "html",
					success : function(data){
						//alert("성공~")
					}
				});
			}
		}else{
			document.getElementById("tmtBtn"+btnId).style="width:100%; height:100%; background-color:#a9db80";
			document.getElementById("lt_Group").value=btnId;
			document.getElementById("lt_Status").value="T";
			var wp=Number(document.getElementById("tmtBtn"+btnId).name);
			document.getElementById("lt_Point").value=Number(wp/2);
			console.log(document.getElementById("lt_Point").value);
			console.log("댐? 어? 댄?"+wp/2+", "+wp);
			wAndl();
			
			document.getElementById("tmtBtn"+Number(btnId-1)).style="width:100%; height:100%; background-color:#ff9a9a";
			document.getElementById("lt_Group").value=Number(btnId-1);
			document.getElementById("lt_Status").value="L";
			var lp=Number(document.getElementById("tmtBtn"+Number(btnId-1)).name);
			document.getElementById("lt_Point").value=lp;
			wAndl();
		}
		
/*		document.getElementById("lt_Group").value=btnId;
		document.getElementById("lt_Status").value="T";
		var frm = $("#upTmtForm").serialize();
		$.ajax({
			type : "post",
			url : "/spomatch/league/leagueWinnerAction.do",
			data : frm,
			dataType : "json",
			success : function(data){
				alert("성공~")
			}
		});
		*/
		
		
		
	}else{
		sessionStorage.setItem("btnId", id);
		document.getElementById("tmtBtn"+id).style="width:100%; height:100%; background-color:#92cfde";
		var tmbId=sessionStorage.getItem(document.getElementById("tmtBtn"+id).value);
		if(tmbId!=null){
			console.log("음서");
			document.getElementById(tmbId).disabled=false;
			document.getElementById("tmtBtn"+id).value=Math.floor(id/100)+"강";
		}
		console.log("야이아이아 : "+id);
		for(var i=1;i<=num;i++){
			var otId = Number(num*100)+Number(i);
			if(otId!=id){
				//sessionStorage.removeItem("btnId");
				console.log("tmtBtn"+otId)
				document.getElementById("tmtBtn"+otId).style="width:100%; height:100%;";
			}
		}
	}
}

function setTeam(id){
	var tmbId=document.getElementById(id).value;
	
	sessionStorage.setItem(tmbId, id);
	console.log(document.getElementById(id).value, sessionStorage.getItem(tmbId));
	var btnId=sessionStorage.getItem("btnId");
	console.log("널일까?:"+btnId);
	if(btnId!=null){
		document.getElementById("tmtBtn"+btnId).
		value=document.getElementById(id).value;
		//document.getElementById("tmtBtn"+btnId).
		//name=id;
		document.getElementById("tmtBtn"+btnId).style="width:100%; height:100%;";
		document.getElementById(id).disabled=true;
		sessionStorage.removeItem("btnId");
		//document.getElementById(btnId).value=id;
		//console.log(btnId+", "+document.getElementById(btnId).value);
		document.getElementById("team_Idx").value=id;
		document.getElementById("lt_Group").value=btnId;
		
		var frm = $("#upTmt").serialize();
		$.ajax({
			type : "post",
			url : "/spomatch/league/leagueTmtAction.do",
			data : frm,
			dataType : "html",
			success : function(data){
				//alert("성공~")
			}
		});
		
		//document.getElementById("upTmtForm").submit();
	}
}