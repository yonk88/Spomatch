<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>

<!-- js 경로 -->
<spring:url value="/resources/js/boardPage.js" var="boardPageJs" />
<script src="${boardPageJs }"></script>


<!-- js 페이지네이션  -->
<!-- <script type="text/javascript" src="/resources/js/jquery.simplePagination.js"></script> -->

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/boardPage.css" />

<!-- css 페이지네이션 -->	
<%-- <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/simplePagination.css"/>
 --%>
<style>
</style>
</head>
<body>
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
			</div><!-- (id=tabs)텝값전달 -->
			
			<div id="matchList"></div><!-- 게시판 내용 불러오기 -->

				<!-- 매칭등록 버튼-->
				<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal1">매칭등록</button>
				<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal2">용병신청</button>

				<!-- 매칭 모달 -->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

<!-- 페이지네이션 -->
<div id="pgNation">
	
</div>
	<!-- <div id="pgNation">
		<nav>
		<ul id="pgNation">
			<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
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
	</div> -->

</body>
</html>