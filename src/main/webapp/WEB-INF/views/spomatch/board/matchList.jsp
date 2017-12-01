<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-BOARD</title>

<!-- js 경로 -->
<spring:url value="/resources/js/matchList.js" var="matchListJs" />
<script src="${matchListJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/matchList.css" />

</head>

<body>
<div id="headerLoad"></div>
<!-- 임시 카테고리 저장 -->
<input type="hidden" id="tempCatg" value="${catg }"/>
<!-- Board List Tab-->
	<div id=mainBoardTab>
		<div id="tabs">
			<ul class="nav nav-tabs" role="tablist" id="catgTab">
				<li role="presentation" id="sTab" class="active"><a href="#sTab"
					aria-controls="home" role="tab" data-toggle="tab" id="#sTab"> 축구 </a></li>

				<li role="presentation" id="bTab"><a href="#bTab"
					aria-controls="profile" role="tab" data-toggle="tab" id="#bTab"> 야구 </a></li>

				<li role="presentation" id="gTab"><a href="#gTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="#gTab"> 게임 </a></li>

				<li role="presentation" id="eTab"><a href="#eTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="#eTab"> 기타 </a></li>
			</ul>
		</div><!-- id = tabs -->
	</div><!-- id = mainBoardTab -->
<!-- <div id= "tabMenu"></div> -->
	<div id="match_bSize">
		<div class="container" id="data-container">
			<table class="table table-striped table-hover" id="match_bItem">
				<tr id="dontOpen" name="dontOpen">
					<th>용병/매칭</th>
					<th>장소</th>
					<th>팀명</th>
					<th>경기 날짜</th>
					<th>경기 시간</th>
					<th>수준</th>
					<th>모집 상태</th>
					<!-- <th>대기인원</th> -->
				</tr>
				<c:forEach var="i" items="${boaList }">
				
					<tr class="mCatgTr" data-toggle="modal" data-target="#matchInfoM">
						
						<td><fmt:formatDate value="${i.mat_Date }" /></td>
						<td onclick="showContent(${i.mat_Idx })">${i.mat_Local }</td>
						<td>${i.team_Name }</td>
						<td>${i.mat_MatchDay }</td>
						<td>${i.mat_Ampm }&nbsp;${i.mat_Stime }&nbsp;~&nbsp;${i.mat_Ftime }</td>
						<td id="matLv">${i.mat_Lv}</td>
						<td id="matStatus">${i.mat_Status }</td>
						<td id="mIdx" class="mIdx">${i.mat_Idx }</td>
						
					</tr>
				</c:forEach>
			</table>
	</div><!-- match_bSize -->
	
	<!-- 매칭등록 버튼-->
	<div id="matchBtn" >
		<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#matchInfoM">매칭등록</button>
	</div>
	
	<!-- 글 조회 모달 -->
		<div class="modal fade" id="matchInfoM" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h2><label class="control-label">매칭 등록</label></h2>
							<div class="modal-body">
								<div class="row">
										<div id="matchInfoGo"></div>
										
								</div><!-- row -->
							</div>
				</div><!-- modal-header -->
			</div><!-- modal Content -->
		</div><!-- modal Dialog -->
		
</body>
</html>