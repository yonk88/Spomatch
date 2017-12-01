<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>
<!-- js matchList 경로 -->
<spring:url value="/resources/js/reportPage.js" var="reportJs" />
<script src="${reportJs }"></script>
<style>
.custom-select {
	display: inline-block;
	margin-top: 4px;
	max-width: 100%;
	height: calc(2.25rem + 10px);
	padding: .375rem 1.75rem .375rem .75rem;
	line-height: 1.5;
	color: #495057;
	vertical-align: middle;
	background: #fff
		url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23333' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E")
		no-repeat right .75rem center;
	background-size: 8px 10px;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	-webkit-appearance: none;
	max-width: 100%;
}

.board_list {
	width: 100%;
	border-top: 2px solid #252525;
	border-bottom: 1px solid #ccc
}

.board_list thead th:first-child {
	background-image: none
}

.board_list thead th {
	border-bottom: 1px solid #ccc;
	padding: 12px 0 13px 0;
	color: #3b3a3a;
	vertical-align: middle
}

.board_list tbody td {
	border-top: 1px solid #ccc;
	padding: 10px 0;
	text-align: center;
	vertical-align: middle
}

.board_list tbody tr:first-child td {
	border: none
}

.board_list tbody td.title {
	text-align: left;
	padding-left: 20px
}

.board_list tbody td a {
	display: inline-block
}

.board_view {
	width: 100%;
	border-top: 2px solid #252525;
	border-bottom: 1px solid #ccc
}

.board_view tbody th {
	text-align: left;
	background: #f7f7f7;
	color: #3b3a3a;
	width: 100px
}

.board_view tbody th.list_tit {
	font-size: 13px;
	color: #000;
	letter-spacing: 0.1px
}

.board_view tbody .no_line_b th, .board_view tbody .no_line_b td {
	border-bottom: none
}

.board_view tbody th, .board_view tbody td {
	padding: 15px 0 16px 16px;
	border-bottom: 1px solid #ccc
}

.board_view tbody td.view_text {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	padding: 45px 18px 45px 18px
}

.board_view tbody th.th_file {
	padding: 0 0 0 15px;
	vertical-align: middle
}

.wdp_90 {
	width: 90%
}
</style>
</head>
<body>
	<div id="adminCheck" title=${result.mem_Lv } style="display: none">
		<h5>관리자</h5>
	</div>
	<div class="container" style="width: 700px">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col" style="text-align: center">글번호</th>
					<th scope="col" style="text-align: center">작성자</th>
					<th scope="col" style="text-align: center">신고내용</th>
					<th scope="col" style="text-align: right">날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach items="${list }" var="row">
							<tr>
								<td style="text-align: center">${row.REP_IDX }</td>
								<td>${row.MEM_ID }</td>
								<td class="title"><a href="#this" name="title">${row.REP_CONTENT }</a>
									<input type="hidden" id="IDX" value="${row.REP_IDX }"></td>
								<td>${row.REP_DATE }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4">조회된 결과가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>

		<button type="button" class="btn btn-danger pull-right"
			data-toggle="modal" data-target="#reportModal">신고하기</button>

		<div class="text-center">
			<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">&laquo;</span>
				</a></li>
				<li class="page-item active"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
						class="sr-only">&raquo;</span>
				</a></li>
			</ul>
			</nav>
		</div>
	</div>



	<div id="reportModal" class="modal fade modal-ku" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">신고하기</h4>
				</div>
				<div class="modal-body" style="text-align: left">
					<p>신고대상과 내용을 작성해주세요</p>
					<form name="reportForm" method="post"
						action="/spomatch/board/newReport.do">
						<label>신고대상 유형: <select class="custom-select"
							name="rep_Ptn" id="rep_Ptn">
								<option>개인</option>
								<option>팀</option>
						</select></label>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">신고대상(ID/팀명):
							</span> <input id="rep_Widx" name="rep_Widx" type="text"
								class="form-control" placeholder="ex: HongGilDong@naver.com"
								aria-describedby="name-addon">
						</div>
						<div id="rep_Midx" style="display: none;">${result.mem_Id }</div>
						<button type="button" class="btn btn-info" id="idCheckBtn"
							style="float: right">아이디 체크</button>
						<br> <label>신고유형: <select class="custom-select"
							id="rep_Type" name="rep_Type">
								<option>사기</option>
								<option>노쇼(no show)</option>
								<option>불량</option>
						</select></label>


						</ul>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">신고내용: </span>
							<textarea type="text" class="form-control" id="rep_Content"
								name="rep_Content"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="newReportAction()">신고접수</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>

	<button id="repDetailBtn" type="button"
		class="btn btn-danger pull-right" style="display: none;"
		data-toggle="modal" data-target="#repDetailModal">글열기버튼</button>


	<c:choose>
		<c:when test="${fn:length(list2) > 0}">
			<c:forEach items="${list2 }" var="row" varStatus="status">
				<c:set var="idx" scope="session"
					value="${fn:length(list2) - status.index}" />
				<c:set var="modalId" scope="session" value="repDetailModal${idx }" />
				<c:set var="formId" scope="session" value="suspendForm${idx }" />
				<form id="${formId }" method="post" name="${formId }"
						action="/spomatch/board/suspend.do" style="display: none;">
				<input type="hidden" name="mem_Idx" value="${row.MEM_IDX}">${row.MEM_IDX}<input>
				</form>
				<div id="${modalId }" class="modal fade modal-ku" tabindex="-1"
					role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">신고내용 조회</h4>
							</div>
							
							<div class="modal-body" style="text-align: left">
								<table class="board_view">
									<colgroup>
										<col width="15%" />
										<col width="35%" />
										<col width="15%" />
										<col width="35%" />
									</colgroup>
									<caption>게시글 상세</caption>
									
									<tbody>
										<tr>
											<th scope="row">글 번호</th>
											<td>${row.REP_IDX}</td>
											<th scope="row">작성자idx</th>
											<td>${row.REP_MIDX }</td>
										</tr>
										<tr>
											<th scope="row">신고대상</th>
											<td>${row.MEM_ID }</td>
											<th scope="row">작성시간</th>
											<td>${row.REP_DATE }</td>
										</tr>
										<tr>
											<th scope="row">신고유형</th>
											<td>${row.REP_TYPE }</td>
											<th scope="row">전화번호</th>
											<td>${row.MEM_PHONE }</td>
										</tr>
										<tr>
											<td colspan="4">${row.REP_CONTENT }</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<div class="input-group number-spinner"
									style="width: 130px; position: absolute; left: 200px">
									<span class="input-group-btn data-dwn">
										<button class="btn btn-default btn-info" data-dir="dwn">
											<span class="glyphicon glyphicon-minus"></span>
										</button>
									</span> <input type="text" class="form-control text-center" value="1"
										min="1" max="30"> <span
										class="input-group-btn dat	a-up">
										<button class="btn btn-default btn-info" data-dir="up">
											<span class="glyphicon glyphicon-plus"></span>
										</button>
									</span>
								</div>
								<button type="button" class="btn btn-danger" onclick="suspendAction(${formId })">정지처리</button>
								<button type="button" class="btn btn-primary" onclick="">경고처리</button>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">취소</button>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="4">조회된 결과가 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose>



	<!-- 						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
								aria-expended="true">
								신고유형<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a class="dropdown-item" href="#">사기</a></li>
								<li><a class="dropdown-item" href="#">노쇼(no show)</a></li>
								<li><a class="dropdown-item" href="#">불량(욕설 등 )</a></li>
						</div> -->


</body>
</html>