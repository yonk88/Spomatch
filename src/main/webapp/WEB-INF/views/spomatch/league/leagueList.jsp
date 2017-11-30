<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-LEAGUE</title>

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


<spring:url value="/resources/js/leagueList.js" var="leagueListJs" />
<script src="${leagueListJs }"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#headerLoad").load("/spomatch/main/main.do");
});
</script>
</head>
<body>
<div id="headerLoad"></div>
<!-- <div id= "tabMenu"></div> -->
	<div id="leagueSize">
		<div class="container">
			<table class="table table-striped table-hover" id="leagueItem">
				<tr>
					<th>대회명</th>
					<th>종목</th>
					<th>총 상금</th>
					<th>참가비</th>
					<th>마감일</th>
					<th>주최지</th>
					<th>상세정보</th>
				</tr>

				<c:forEach var="i" items="${leaList }">
					<tr>
						<td>${i.lea_Name }</td>
						<td>
							<c:choose>
								<c:when test="${i.lea_Cate eq 'S'.charAt(0) }">
									축구
								</c:when>
								<c:when test="${i.lea_Cate eq 'B'.charAt(0) }">
									야구
								</c:when>
								<c:when test="${i.lea_Cate eq 'G'.charAt(0) }">
									게임
								</c:when>
								<c:when test="${i.lea_Cate eq 'E'.charAt(0) }">
									기타
								</c:when>
								<c:otherwise>
									??
								</c:otherwise>
							</c:choose>
						</td>
						<td>${i.lea_Prize }</td>
						<td>${i.lea_Cost }</td>
						<td>${i.lea_Deadline }</td>
						<td>${i.lea_Local }</td>
						<td>${i.lea_Info }</td>		
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>


</body>
</html>