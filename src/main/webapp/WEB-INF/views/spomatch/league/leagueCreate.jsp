<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />

<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">


<!-- JQuery -->
<!-- <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> -->

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<spring:url value="/resources/js/leagueCrt.js" var="leagueCtrJs" />
<script src="${leagueCtrJs }"></script>

</head>
<body>
<div id="headerLoad"></div>
<div style="width:550px; margin:auto;">
<form id="leaCrt" action = "/spomatch/league/leagueCreateAction.do">
	<table class="table" style="width:500px">
		<tr><td colspan=2><p align=center>대회 만들기</p></td></tr>
		<tr>
			<td><p align=center>대회명</p></td> <td><input type="text"></input></td>
			<td>대회 상세정보 입력</td>
		</tr>
		<tr>
			<td><p align=center>종목</p></td> <td>
			<select class="text-center">
				<option id="op1" value="S">축구</option>
				<option id="op2" value="B">야구</option>
				<option id="op3" value="G">게임</option>
				<option id="op4" value="E">기타(직접입력)</option>
			</select></td>
			<td rowspan=8><textarea name="info" style="width:100%; height:250px; resize:none"></textarea></td>
		</tr>
		<tr>
			<td rowspan=2><p align=center>참가 팀 수</p></td>
			<td>최소:<input type="text" name="min" style="width:50px"></input></td>
		</tr>
		<tr>
			<td>최대:<input type="text" name="max" style="width:50px"></input></td>
		</tr>
		<tr>
			<td><p align=center>참가비</p></td><td><p align=left><input type="text" name="cost"></input></p></td>
		</tr>
		<tr>
			<td><p align=center>총 상금</p></td><td><p align=left><input type="text" name="prize"></input></p></td>
		</tr>
		<tr>
			<td><p align=center>마감일</p></td> <td><input type="text" id="deadline"/></td>
		</tr>
		<tr>
			<td><p align=center>개최지역</p></td>
			<td>
			<input type="text" /></td>
			
		</tr>
		<tr><td colspan=3>
		<p align=right><input type="button" value="등록"></input>
		<input type="button"  value="취소"></input></p></td></tr>
	</table>
	</form>
</div>
	<script type="text/javascript">
	
	</script>
</body>

</body>
</html>