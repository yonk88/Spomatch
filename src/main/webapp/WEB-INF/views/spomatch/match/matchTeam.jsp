<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>팀 매칭</title>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<%-- <!-- js 경로 -->
<spring:url value="/resources/js/matchTeam.js" var="matchTeamJs" />
<script src="${matchTeamJs }"></script>
 --%>
<!-- js 경로 -->
<script src="<c:url value="/resources/js/matchTeam.js" />"></script>


</head>

<body>

<table class="table">
	<tr>
		<td>팀 이름</td>
		<td><input type="text" id="teamName" name="teamName" /></td>
	</tr>
	
	<tr>
		<td>날짜</td>
		<td><input type="text" id="matDate" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>장소</td>
		<td><input type="text" id="teamLocal" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>팀 인원</td>
		<td><input type="text" id="teamNum" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>연령</td>
		<td><input type="text" id="teamAge" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>실력</td>
		<td><input type="text" id="teamLv" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>유니폼</td>
		<td><input type="text" id="teamColor" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>조끼</td>
		<td><input type="text" id="teamVest" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>대표연락처</td>
		<td><input type="text" id="teamPhone" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>계좌번호</td>
		<td><input type="text" id="teamAccount" name="teamLocal" /></td>
	</tr>
	
	<tr>
		<td>지도확인</td>
		<td><div id="mapLoad"></div></td>
	</tr>
	
</table>

</body>
</html>