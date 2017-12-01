<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
<%@ include file="/WEB-INF/views/commonHeader.jspf"%>
=======
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>
<<<<<<< HEAD

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
=======
>>>>>>> branch 'YONK1201' of https://github.com/yonk88/Spomatch.git

<!-- js 경로 -->
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>

<<<<<<< HEAD
<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
=======
<!-- js matchList 경로 -->
<spring:url value="/resources/js/matchList.js" var="matchListJs" />
<script src="${matchListJs }"></script>

<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git

<<<<<<< HEAD
=======
<style>

</style>
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
</head>
<body>
<<<<<<< HEAD
	<div class="container-fluid" style="width: 1000px;">
		<!-- Header -->
		<div class="topWrapper">
			<a href="http://www.naver.com"><img class="topImg"
				src="${pageContext.request.contextPath}/resources/Spomatch2.jpg"
				alt="ad"></a>
=======
	<div class="container-fluid text-center" style="width: 980px;">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<button type="button" class="btn btn-default" id="teamBtn">팀매칭</button>
					<button type="button" class="btn btn-default" id="recuBtn">용병매칭</button>
					<button type="button" class="btn btn-default" id="leagueBtn">대회</button>
					<button type="button" class="btn btn-default" id="jLeagueBtn">주최/참가한
						대회</button>
					<button type="button" class="btn btn-default" id="reportBtn">신고게시판</button>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<button type="button" id="sidebarCollapse"
						class="btn btn-info navbar-btn">
						<i class="glyphicon glyphicon-user"></i> <span>내정보</span>
					</button>
			</div>
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
		</div>
<<<<<<< HEAD
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



			</div>
		</div>
		<!-- /Body -->

=======
		</nav>
		<div class="row content">

			<nav id="sidebar">
                <div id="dismiss" style="text-align:left">
                    <button type="button" id="sidebarHide" class="btn btn-info">&nbsp;
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>&nbsp;&nbsp;</button>
                </div>

			<div class="sidebar-header">
				<div id="userInfo" style="margin-top: 10%"></div>
			</div>
			</nav>

			<div class="col-sm-2 sidenav" style="width: 180px; float: left;">
				<div class="wrapper">
					<a href="http://www.naver.com"><img
						src="${pageContext.request.contextPath}/resources/adExam.jpg"
						alt="ad"></a>
				</div>
				<center>
					<a class="btn btn-info" href="/spomatch/ad/ad.do" role="button">광고신청하기</a>
				</center>
			</div>
			<div class="col-sm-8" style="width: 470px">
				<!-- Board List -->
				<div id="boardPage"></div>
			</div>

		</div>
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git

	</div>
	<script type="text/javascript">
<<<<<<< HEAD
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
=======
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $("#sidebarHide").click(function() {
                    $('#sidebar').removeClass('active');
                    $('.overlay').fadeOut();
                });

                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').addClass('active');
                    $('.overlay').fadeIn();
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
        </script>



	<!-- jQuery Custom Scroller CDN -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>








>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git

</body>
</html>