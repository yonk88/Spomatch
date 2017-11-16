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
<spring:url value="/resources/js/board.js" var="boardJs" />
<script src="${boardJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/board.css" />

<style>
</style>
</head>
<body>
	<!-- Board List -->
	<div id=mainBoardTab>
				<ul class="nav nav-tabs" role="tablist" id="catgTab">
					<li role="presentation" class="active"><a href="#soccerTab"
						aria-controls="home" role="tab" data-toggle="tab" > 축구 </a></li>

					<li role="presentation"><a href="#baseballTab"
						aria-controls="profile" role="tab" data-toggle="tab" > 야구 </a></li>

					<li role="presentation"><a href="#gameTab"
						aria-controls="messages" role="tab" data-toggle="tab" > 게임 </a></li>

					<li role="presentation"><a href="#etcTab"
						aria-controls="messages" role="tab" data-toggle="tab" > 기타 </a></li>
				</ul>
			
			
			<div id="boardList"></div><!-- 게시판 내용 불러오기 -->

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
							<form action="#" method="post">
								<div class="modal-body">
									<div id="matchLoad"></div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default btn-sm">등록 하기</button>
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
						<form action="#" method="post">
							<div class="modal-body">
								<div id="recuLoad"></div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary">등록 하기</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							</div><!-- modal-footer -->
						</form>
					</div><!-- modal-header -->
				</div><!-- modal Content -->
			</div><!-- modal Dialog -->
		</div><!-- mainBoardTab -->
	
${totalPages }
	<div id="mainNav">
		<nav>
		<ul class="pagination">
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
	</div>

</body>
</html>