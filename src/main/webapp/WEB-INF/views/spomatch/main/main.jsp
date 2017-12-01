<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/views/commonHeader.jspf"%>

<!-- js 경로 -->
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />

</head>
<body>
	<div class="container-fluid" style="width: 1000px;">
		<!-- Header -->
		<div class="topWrapper">
			<a href="http://www.naver.com"><img class="topImg"
				src="${pageContext.request.contextPath}/resources/Spomatch2.jpg"
				alt="ad"></a>
		</div>
		<nav class="navbar navbar-default">
		<div class="container-fluid">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Spomatch</a>
			</div>


			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">팀매칭</a></li>
					<!-- <li class="active"><a href="#">팀 매칭<span class="sr-only">(current)</span></a></li> -->
					<li><a href="#">대회</a></li>
					<li><a href="#">주최/참가대회</a></li>
					<li><a href="#">신고</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<button type="button" id="sidebarCollapse"
						class="btn btn-info navbar-btn">
						<i class="glyphicon glyphicon-user"></i> <span>내정보</span>
					</button>
				</ul>

			</div>
		</div>
		</nav>
		<!-- /Header -->

		<!-- Body -->
		<div class="row content">
			<nav id="sidebar">
			<div id="dismiss">
				<i class="glyphicon glyphicon-arrow-right" style="top: 11px"></i>
			</div>

			<div class="sidebar-header">
				<div id="userInfo" style="margin-top: 10%"></div>
			</div>
			</nav>

			<div class="col-sm-2 sidenav" style="width: 180px; float: left;">
				<div class="wrapper">
					<a href="http://www.naver.com"><img class="adImg"
						src="${pageContext.request.contextPath}/resources/adExam.jpg"
						alt="ad"></a>
				</div>
				<center>
					<a class="btn btn-info" href="/spomatch/ad/ad.do" role="button">광고신청하기</a>
				</center>
			</div>
			<div class="col-sm-8" style="width: 470px">
				<!-- Board List -->
	<%-- 			<div id="boardPage" title="${test }"></div> --%>
			</div>
		</div>
		<!-- /Body -->


	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#sidebar").mCustomScrollbar({
				theme : "minimal"
			});

			$('#dismiss, .overlay').on('click', function() {
				$('#sidebar').removeClass('active');
				$('.overlay').fadeOut();
			});

			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').addClass('active');
				$('.overlay').fadeIn();
				$('.collapse.in').toggleClass('in');
				$('a[aria-expanded=true]').attr('aria-expanded', 'false');
			});
		});
	</script>

</body>
</html>