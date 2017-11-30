<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-LEAGUE</title>

<spring:url value="/resources/js/league.js" var="leagueJs" />
<script src="${leagueJs }"></script>

</head>

<!-- 대진표 모달 -->
				<div class="modal fade" id="crtModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">순위/대진표</h4>
							</div><!-- modal-header -->
								<div class="modal-body">
									<div id="loadModal"></div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">닫기</button>
								</div><!-- modal-footer -->
						</div><!-- modal-header -->
					</div><!-- modal Content -->
				</div><!-- modal Dialog -->

<body>

<c:set var="mem_Idx" value="${mem_Idx }" />

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
						<td><button type="button" class="btn btn-default btn-sm" 
						onclick="showCre(${i.lea_Idx });">순위/대진표</button></td>		
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<button type="button" class="btn btn-default btn-sm" onclick="showModal();">순위/대진표</button>


</body>
</html>