<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-BOARD</title>


</head>
<body>
	<div id="boardSize">
		<div class="container">
			<table class="table table-striped table-hover" id="boardItem">
				<tr>
					<th>등록 날짜</th>
					<th>지역</th>
					<th>경기 날짜</th>
					<th>수준</th>
					<th>초청 / 원정</th>
				</tr>

				<c:forEach var="i" items="${boaList }">
					<tr>
						<td><fmt:formatDate value="${i.mat_Date }"
								pattern="yyyy-MM-dd" /></td>
						<td>${i.mat_Local }</td>
						<td>${i.mat_Matchday }</td>
						<td>${i.mat_Lv}</td>
						<td>${i.mat_Status }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>


</body>
</html>