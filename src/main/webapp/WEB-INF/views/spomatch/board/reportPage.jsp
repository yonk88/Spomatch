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

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/boardPage.css" />

<style>
</style>
</head>
<body>
	<div class="container" style="width: 600px">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col" width="10px">글번호</th>
					<th scope="col" width="10px" style="text-align: center">작성자</th>
					<th scope="col" width="100px" style="text-align: center">신고내용</th>
					<th scope="col" width="20px" style="text-align: right">날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th style="text-align: center" scope="row">1</th>
					<td align="center">Mark</td>
					<td align="center">노쇼신고</td>
					<td align="right">2017/02/11</td>
				</tr>
				<tr>
					<th style="text-align: center" scope="row">2</th>
					<td align="center">Jacob</td>
					<td align="center">사기신고</td>
					<td align="right">2017/02/11</td>
				</tr>
				<tr>
					<th style="text-align: center" scope="row">3</th>
					<td align="center">Larry</td>
					<td align="center">도용신고</td>
					<td align="right">2017/02/11</td>
				</tr>
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
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">신고하기</h4>
				</div>
				<div class="modal-body">
					<p>광고신청을 위해서는 다음 빈칸을 채워 제출해주세요</p>
					<form>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">성명: </span> <input
								type="text" class="form-control" placeholder="ex: 

홍길동"
								aria-describedby="name-addon" size="5">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">회사이름 : </span> <input
								type="text" class="form-control" placeholder="ex: 

삼성전자(주)"
								aria-describedby="name-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">이메일주 소: </span> <input
								type="text" class="form-control"
								placeholder="ex: hong@naver.com" aria- describedby="name-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="adUrl-addon">광고URL: </span> <input
								type="text" class="form-control"
								placeholder="ex: 

www.naver.com"
								aria-describedby="adUrl-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="stDate-addon">광고시 작일자:
							</span> <input type="text" class="form-control"
								placeholder="ex: 2017/05/13" aria- describedby="stDate-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">광고기간 (일):
							</span> <input type="text" class="form-control" placeholder="ex: 20"
								aria-describedby="name-addon">
						</div>
						<div class="form-group">
							<label for="exampleFormControlFile1">광고이미지</label> <input
								type="file" class="form-control-file" id="adImage">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">신청</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>




</body>
</html>