<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script>
	$(function() {
		$('#myTab a:first').tab('show');
	});

	$(document).ready(function() {
		$("#div1").load("/spomatch/main/teamInfo.do");
	});
</script>
</head>
<body>
	<div class="container"
		style="width: 300px; position: relative; right: 0;">
		<ul style="display: block;"
			class="nav nav-tabs nav-pills" role="tablist"
			
			id="myTab" style="width: 300px; position: absolute; right: 0;">
			<li role="presentation" class="active"><a href="#myInfo"
				aria-controls="home" role="tab" data-toggle="tab">내정보</a></li>

			<li role="presentation"><a href="#myTeam"
				aria-controls="profile" role="tab" data-toggle="tab">내 팀</a></li>

			<li role="presentation"><a href="#myHistory"
				aria-controls="messages" role="tab" data-toggle="tab">매칭이력</a></li>
		</ul>
		<div class="tab-content" style="background-color:white;">
			<div role="tabpanel" class="tab-pane active" id="myInfo">내정보
				확인란</div>
			<div role="tabpanel" class="tab-pane" id="myTeam">
				<div id="div1"></div>
			</div>
			<div role="tabpanel" class="tab-pane" id="myHistory">매칭이력확인란</div>
		</div>
	</div>



</body>
</html>