<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>



<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	$('.teamList').each(function(index, item){
		var team_Cate = $(this).children("#team_Cate").text();
		 if(team_Cate == "S"){
	            $(this).children("#team_Cate").text("축구");
	         }else if(team_Cate == "B"){
	            $(this).children("#team_Cate").text("야구");
	         }else if(team_Cate == "G"){
	            $(this).children("#team_Cate").text("게임");
	         }

	})
});

$(document).ready(function(){
	$('.teamList').each(function(index, item){
		var team_Lv = $(this).children("#team_Lv").text();
		 if(team_Lv == "H"){
	            $(this).children("#team_Lv").text("상");
	         }else if(team_Lv == "M"){
	            $(this).children("#team_Lv").text("중");
	         }else if(team_Lv == "L"){
	            $(this).children("#team_Lv").text("하");
	         }

	})
});

var team_Idx = $('<input type="hidden" name="team_Idx">');

function selectTeam(team_Idx){
	/* var query = {
			team_Idx : team_Idx
		};
		$.ajax({
			url : "/spomatch/sideMenu/selectTeam.do",
			type : "get",
			data : query,
			success : function(data) {
				console.log("성공");
				console.log(data);
				//$("#teamSwitch2").load("/spomatch/sideMenu/selectTeam.do");
				//location.href="/spomatch/sideMenu/teamCreate.do";
				openNewWindow();
			}
		}); */
		
		location.href = "/spomatch/sideMenu/selectTeam.do?team_Idx=" + team_Idx return team_Idx
		//openNewWindow(url);
}

function openNewWindow(url, name) {
	  var specs = "left=10,top=10,width=372,height=466";
	  specs += ",toolbar=no,menubar=no,status=no,scrollbars=no,resizable=no";
	  //url = "/spomatch/sideMenu/selectTeam.do"
	  window.open(url, name, specs);
	}
</script>
</head>
<body>
	<div id="teamSwitch2">
		<div class="page-header">
			<h1>
				팀 찾기 <small>Spomatch</small>
			</h1>
		</div>
		<div class="rows">
			<table class="table table-hover" style="background-color: #eaf0f0;">
	
				<tr style="font-weight: bold" class="info">
					<td>팀명</td>
					<td>팀 종목</td>
					<td>팀 수준</td>
					<td>팀 지역</td>
					
				</tr>
	
				<c:forEach var="i" items="${list}">
					<tr class="teamList" onclick="selectTeam(${i.team_Idx })" style="cursor: pointer;">
						<td id="team_Name">${i.team_Name }</td>
						<td id="team_Cate">${i.team_Cate }</td>
						<td id="team_Lv">${i.team_Lv }</td>
						<td>${i.team_Local }</td>
					</tr>
				</c:forEach>
	
			</table>
		</div>
		
</body>
</html>