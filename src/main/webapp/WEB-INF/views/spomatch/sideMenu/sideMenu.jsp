<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
	<div class="container" style="width:400px; filter: alpha(opacity=50); " >
		<ul class="nav nav-tabs" role="tablist" id="myTab">
			<li role="presentation" class="active"><a href="#myInfo"
				aria-controls="home" role="tab" data-toggle="tab">내정보</a></li>

			<li role="presentation"><a href="#myTeam"
				aria-controls="profile" role="tab" data-toggle="tab">내 팀</a></li>

			<li role="presentation"><a href="#myHistory"
				aria-controls="messages" role="tab" data-toggle="tab">매칭이력</a></li>
		</ul>

		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="myInfo"></div>
			<div role="tabpanel" class="tab-pane" id="myTeam"></div>
			<div role="tabpanel" class="tab-pane" id="myHistory">매칭이력확인란</div>
		</div>
	</div>
	
	<script>
		$(function() {
			$('#myTab a:first').tab('show');
		});
		
		$(document).ready(function(){
		    $("#myInfo").load("/spomatch/sideMenu/memberInfo.do");
		});
		
		$(document).ready(function(){
		    $("#myTeam").load("/spomatch/sideMenu/teamInfo.do");
		});
		
	</script>

</body>
</html>