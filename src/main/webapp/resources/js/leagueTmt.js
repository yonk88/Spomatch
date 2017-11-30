function submitUp(num, teamNum){
/*	for(var i=1;i<=num;i++){
		var btnIdx=Number(num*100)+i;
		document.getElementById("team_Idx").value=document.getElementById("tmtBtn"+btnIdx).name;
		document.getElementById("lt_Group").value=btnIdx;
		console.log("teamIdx = "+document.getElementById("team_Idx").value+", ltGroup = "+document.getElementById("lt_Group").value);
		document.getElementById("upTmtForm").submit();
	}*/
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
		document.getElementById("leaForm").submit();
		$("#insert").hide();
		$("#ganCan").hide();
		$("#teamList").hide();
		
	}
	
}

function gan(num){
	var btnNum=Number(btnNum);
	console.log(btnNum);
	for(var i=1;i<=num;i++){
		btnNum=(num*100)+i;
		console.log(num, "tmtBtn"+btnNum);
		document.getElementById("tmtBtn"+btnNum).disabled=false;
		sessionStorage.setItem(btnNum, null);
		console.log(sessionStorage.getItem(btnNum));
	}
	document.getElementById("insert").disabled=false;
	document.getElementById("ganCan").disabled=false;
	if(document.getElementById("lea_Style").value=="N"){
		$("#teamList").show();
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
		document.getElementById("tmtBtn"+btnNum).value=num+"강";
		if(sessionStorage.getItem("teamBtn"+i)!=null)
			document.getElementById(sessionStorage.getItem("teamBtn"+i)).disabled=false;
	}
	$("#insert").hide();
	$("#ganCan").hide();
	$("#teamList").hide();
}

function chan(id, num){		//대진표부분 활성화시 클릭이벤트 (대진표 미작성: 대진표작성모드 , 대진표작성: 결과관리모드)
	console.log(document.getElementById("tmtBtn"+id));
	var btnId=Number(id);
	var sty=document.getElementById("lea_Style").value;
	console.log(id, id%2, "tmtBtn"+Number(id-1), id+1)
	console.log("styl : "+sty);
	if(sty=="T"){
		console.log("sdfsdfsdfsdfsdf")
		if(id%2==1){
			document.getElementById("tmtBtn"+btnId).style="width:100%; height:100%; background-color:#a9db80";
			document.getElementById("tmtBtn"+Number(btnId+1)).style="width:100%; height:100%; background-color:#ff9a9a";
		}else{
			document.getElementById("tmtBtn"+btnId).style="width:100%; height:100%; background-color:#a9db80";
			document.getElementById("tmtBtn"+Number(btnId-1)).style="width:100%; height:100%; background-color:#ff9a9a";
		}
		
		
		
		
		
		
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
		
		var frm = $("#upTmtForm").serialize();
		$.ajax({
			type : "post",
			url : "/spomatch/league/leagueTmtAction.do",
			data : frm,
			dataType : "json",
			success : function(data){
				alert("성공~")
			}
		});
		
		//document.getElementById("upTmtForm").submit();
	}
}