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

<!-- js 경로 -->
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/boardPage.css" />
	
<!-- 지도API 로드 -->
	<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script>

</head>
<body>
	<!-- Header -->
	<div id="header">
		<div>
			<button type="button" class="btn btn-default" id="teamBtn">팀매칭</button>
			<button type="button" class="btn btn-default" id="recuBtn">용병매칭</button>
			<button type="button" class="btn btn-default" id="leagueBtn">대회</button>
			<button type="button" class="btn btn-default" id="jLeagueBtn">주최/참가한 대회</button>
			<button type="button" class="btn btn-default" id="reportBtn">신고게시판</button>
		</div>
	</div>
	
	
	<!-- Board List -->
	<div id=mainBoardTab>
		<div id="tabs">
			<ul class="nav nav-tabs" role="tablist" id="catgTab">
				<li role="presentation" class="active"><a href="#sTab"
					aria-controls="home" role="tab" data-toggle="tab" id="catg"> 축구 </a></li>

				<li role="presentation"><a href="#bTab"
					aria-controls="profile" role="tab" data-toggle="tab" id="catg"> 야구 </a></li>

				<li role="presentation"><a href="#gTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="catg"> 게임 </a></li>

				<li role="presentation"><a href="#eTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="catg"> 기타 </a></li>
				</ul>
				
		<!-- <div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="sTab"><div id="catgSet">1</div></div>
			<div role="tabpanel" class="tab-pane" id="bTab"><div id="catgSet">2</div></div>
			<div role="tabpanel" class="tab-pane" id="gTab"><div id="catgSet">3</div></div>
			<div role="tabpanel" class="tab-pane" id="eTab"><div id="catgSet">4</div></div>
		</div> -->
	</div><!-- id = tabs -->
</div><!-- id = mainBoardTab -->
			
	<!-- Board List -->	
	<div id="matchList"></div><!-- 게시판 내용 불러오기 -->


<div id="matchBtn" >
				<!-- 매칭등록 버튼-->
				<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal1">매칭등록</button>
				<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal2">용병신청</button>
</div>
				<!-- 매칭 모달 -->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">매칭 등록</h4>
							</div><!-- modal-header -->
							<form action="/spomatch/match/matchTeamProc.do" method="post">
								<div class="modal-body">
									<div id="matchLoad"></div>
								</div>
								<div class="modal-footer">
									<input type="submit" class="btn btn-primary btn-sm" value="등록 하기" />
									<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
								</div><!-- modal-footer -->
							</form>
						</div><!-- modal-header -->
					</div><!-- modal Content -->
				</div><!-- modal Dialog -->

			<!-- 용병 모달 -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">용병 신청</h4>
						</div>
						<form action="/spomatch/recruit/recruitProc.do" method="post">
							<div class="modal-body">
								<div id="recuLoad"></div>
							</div>
							<div class="modal-footer">
								<input type="submit" class="btn btn-primary" value="등록 하기" />
								<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							</div><!-- modal-footer -->
						</form>
					</div><!-- modal-header -->
				</div><!-- modal Content -->
			</div><!-- modal Dialog -->
		</div><!-- mainBoardTab -->

</body>
</html>