<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>SPOMATCH-TOURMENT</title>
</head>
<body>

<%int num = (Integer)request.getAttribute("teamNum"); %>
<%int temp=0, cnt=2; %>

<div id="LTmt" class="table-responsive table-center">

<table class="table" border="1" style="width:50%">
	<tr><td colspan=<%=num %>><h2 class="text-center">대진표</h2></td></tr>
	<tr><td colspan=<%=num %>><p align=right><select class="text-center">
		<option id="op">4강</option>
		<option id="op">8강</option>
		<option id="op">16강</option>
		<option id="op">32강</option>
	</select>
	<button id="click">눌러</button>
	</p>
	</td>
	</tr>

<%temp=num/2; while(true){
	%>
	<tr>
	<%for(int i=1;i<=cnt;i++){ %>
		<td colspan=<%=temp %>>
		<%if(cnt==2){
			if(i==1){%>
				<p align=right>
			<%}else{ %>
				<p align=left>
			<%} %>
			결승 <%=i %>팀
		<%}else if(cnt==4){ %>
			<p align=center>준결승 <%=i %>팀
		<%}else{ %>
			<p align=center><%=cnt %>강 <%=i %>팀
		<%} %>
		</p></td>
	<%} 
	temp=temp/2;
	cnt=cnt*2;%>
	</tr>
	
<%if(cnt==num)break;
} %>

<c:forEach var="i" items="${leaTmList }">
	<td colspan=<%=temp %>><p align=center>${i.team_Name }</p></td>
</c:forEach>
</table>
</div>

</body>
</html>