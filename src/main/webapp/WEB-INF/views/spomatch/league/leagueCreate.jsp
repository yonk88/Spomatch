<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>
<div>
	<table class="table">
		<tr><td colspan=2><p align=center>대회 만들기</p></td></tr>
		<tr>
			<td><p align=center>대회명</p></td> <td><input type="text"></input></td>
			<td>대회 상세정보 입력</td>
		</tr>
		<tr>
			<td><p align=center>종목</p></td> <td>
			<select class="text-center">
				<option id="op">축구</option>
				<option id="op">야구</option>
				<option id="op">게임</option>
				<option id="op">기타(직접입력)</option>
			</select></td>
			<td rowspan=4><textarea name="info" style="width:100%; height:250px; resize:none"></textarea></td>
		</tr>
		<tr>
			<td rowspan=2><p align=center>참가 팀 수</p></td>
			<td>최소:<input type="text" name="min" style="width:30px"></input></td>
		</tr>
		<tr>
			<td>최대:<input type="text" name="max" style="width:30px"></input></td>
		</tr>
		<tr>
			<td><p align=center>참가비</p></td><td><p align=left><input type="text" name="cost"></input></p></td>
		</tr>
		<tr>
			<td><p align=center>총 상금</p></td><td><p align=left><input type="text" name="prize"></input></p></td>
			<td>이미지 첨부</td>
		</tr>
		<tr>
			<td><p align=center>마감일</p></td> <td><input type="text" id="deadline"/></td>
			<td rowspan=3>이미지이이이</td>
		</tr>
		<tr>
			<td><p align=center>개최지역</p></td>
			<td>
			<input type="text" /></td>
			
		</tr>
		<tr>
			<td><p align=center>이미지 첨부</p></td>
			<td>눌러서첨부</td>
		</tr>
		<tr><td colspan=3>
		<p align=right><input type="button" value="등록"></input>
		<input type="button"  value="취소"></input></p></td></tr>
	</table>
</div>
	<script >
		 $(function(){
			$("#deadline").datepicker(); 
		 });
		 $.datepicker.setDefaults({
			 dateFormat:'yy년mm월dd일'
			 });
	</script>
</body>

</body>
</html>