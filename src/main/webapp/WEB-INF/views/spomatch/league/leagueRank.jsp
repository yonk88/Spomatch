<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<title>Insert title here</title>
</head>
<body>

<div>
	<div class="table-responsive table-center" style="width:780px;">
	
	<table class="table"><h1 calss="text-center">리그순위표</h1></table>
		<table class="table table-bordered table-hover table-condensed">
		<h1 class="text-center">리그순위표</h1>
		<thead>
		<tr class="active">
			<th>순위</th>
			<th>팀</th>
			<th>승점</th>
			<th>승</th>
			<th>무</th>
			<th>패</th>
			<th>득점</th>
			<th>실점</th>
			<th>득실차</th>
		</tr></thead>
		<tbody>
		
		<c:forEach var="i" items="${leaRkList }" varStatus="index">
		<c:choose>
			<c:when test="${index.count == 1}">
				<tr class="info">
			</c:when>
			<c:when test="${index.count == teamNum}">
				<tr class="danger">
			</c:when>
			<c:otherwise>
				<tr>
			</c:otherwise>
		
		</c:choose>
			<td><p align="center">${index.count }</p></td>
			<td><p align="center">${i.team_Name }</p></td>
			<td><p align="center">${i.lt_Point }</p></td>
			<td><p align="center">${i.lt_Win }</p></td>
			<td><p align="center">${i.lt_Draw }</p></td>
			<td><p align="center">${i.lt_Lose }</p></td>
			<td><p align="center">${i.lt_Goal }</p></td>
			<td><p align="center">${i.lt_LosePnt }</p></td>
			<td><p align="center">${i.lt_Goal - i.lt_LosePnt }</p></td>
		</tr>
		</c:forEach>
		</tbody>
		
		</table>
		</div>
	</div>

</body>
</html>