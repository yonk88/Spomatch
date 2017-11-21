<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<div id="match_bSize">
		<div class="container">
			<table class="table table-striped table-hover" id="match_bItem">
				<tr id="dontOpen" name="dontOpen">
					<th>등록 날짜</th>
					<th>지역</th>
					<th>팀명</th>
					<th>경기 날짜</th>
					<th>수준</th>
					<th>초청 / 원정</th>
					<th>대기인원</th>
				</tr>

				<c:forEach var="i" items="${boaList }">
					<tr id="${i.mat_Cate }" class="mCatgTr">
						<td><fmt:formatDate value="${i.mat_Date }"
								pattern="yy-MM-dd" /></td>
						<td>${i.mat_Local }</td>
						<td>${i.mat_Host }</td>
						<td>${i.mat_Matchday }</td>
						<td>${i.mat_Lv}</td>
						<td>${i.mat_Status }</td>
						<td>0</td>
						<td id="mIdx" class="mIdx">${i.mat_Idx }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	
</body>
</html>