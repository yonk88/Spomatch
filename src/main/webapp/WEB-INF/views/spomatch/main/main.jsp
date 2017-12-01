<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>

<!-- js 경로 -->
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
	
<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/boardPage.css" /> --%>
	

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

</body>
</html>