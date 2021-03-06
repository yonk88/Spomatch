<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- js 경로 -->
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
	
<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/boardPage.css" /> --%>

<!-- js matchList 경로 -->
<spring:url value="/resources/js/matchList.js" var="matchListJs" />
<script src="${matchListJs }"></script>

<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

<style>

</style>
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div>
			<button type="button" class="btn btn-default" id="teamBtn">팀매칭</button>
			<!-- <button type="button" class="btn btn-default" id="recuBtn">용병매칭</button> -->
			<button type="button" class="btn btn-default" id="leagueBtn">대회</button>
			<button type="button" class="btn btn-default" id="jLeagueBtn">주최/참가한 대회</button>
			<button type="button" class="btn btn-default" id="reportBtn">신고게시판</button>

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
		</div>
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

	</div>
	
	<!-- Board List Tab-->
	<!-- <div id=mainBoardTab>
		<div id="tabs">
			<ul class="nav nav-tabs" role="tablist" id="catgTab">
				<li role="presentation" class="active"><a href="#sTab"
					aria-controls="home" role="tab" data-toggle="tab" id="#sTab"> 축구 </a></li>

				<li role="presentation"><a href="#bTab"
					aria-controls="profile" role="tab" data-toggle="tab" id="#bTab"> 야구 </a></li>

				<li role="presentation"><a href="#gTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="#gTab"> 게임 </a></li>

				<li role="presentation"><a href="#eTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="#eTab"> 기타 </a></li>
			</ul>
		</div>id = tabs
	</div>id = mainBoardTab
			
	<div id="matchList"></div> --><!-- 게시판 내용 불러오기 -->

<!-- 매칭등록 버튼-->
	<!-- <div id="matchBtn" >
		<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal1">매칭등록</button>
	</div>
	
				매칭 모달
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h2><label class="control-label">매칭 등록</label></h2>
							
								<form action="/spomatch/match/matchTeamProc.do" method="post">
									<div class="modal-body">
										<div class="row">
												<div id="matchLoad"></div>
												
										</div>row
									</div>
									
								<div class="modal-footer">
									
								</div>modal-footer
							</form>		
						</div>modal-header
					</div>modal Content
				</div> --><!-- modal Dialog -->
	<script type="text/javascript">
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









</body>
</html>