<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-LEAGUE</title>

</head>
<body>
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