<!-- GIT 테스트 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>

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

<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />

<style>
</style>
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div>
			<button type="button" class="btn btn-default ">팀매칭</button>
			<button type="button" class="btn btn-default">용병매칭</button>
			<button type="button" class="btn btn-default">대회</button>
			<button type="button" class="btn btn-default">주최/참가한 대회</button>
			<button type="button" class="btn btn-default">신고게시판</button>
		</div>
	</div>
	<%
	
	%>
	<!-- Board List -->
	<div id="mainBoardTab">
		<div class="container">
			<ul class="nav nav-tabs" role="tablist" id="myTab">
				<li role="presentation" class="active"><a href="#soccerTab"
					aria-controls="home" role="tab" data-toggle="tab">축구</a></li>

				<li role="presentation"><a href="#baseballTab"
					aria-controls="profile" role="tab" data-toggle="tab">야구</a></li>

				<li role="presentation"><a href="#gameTab"
					aria-controls="messages" role="tab" data-toggle="tab">게임</a></li>

				<li role="presentation"><a href="#etcTab"
					aria-controls="messages" role="tab" data-toggle="tab">기타</a></li>
			</ul>

			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="soccerTab">
					<div id="boardList"></div>
				</div>
				<div role="tabpanel" class="tab-pane" id="baseballTab">야구</div>
				<div role="tabpanel" class="tab-pane" id="gameTab">게임</div>
				<div role="tabpanel" class="tab-pane" id="etcTab">기타</div>
			</div>
		</div>
	</div>

	<div id="mainNav">
		<nav>
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
		</nav>
	</div>

</body>
</html>