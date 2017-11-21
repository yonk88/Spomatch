<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<!-- 주최자 idx 17110800010 -->
	<div id="leagueMyListSize">
		<div class="container">
			<!-- <table class="table table-striped table-hover" id="leagueItem">
					<tr>
					<th style="width:150px">대회명</th><th style="width:100px">종목</th>
					<th style="width:200px">주최지</th><th style="width:200px">소속 팀</th>
					</tr></table> -->
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				<c:forEach var="i" items="${leaMyList }" varStatus="index">
				
				<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="heading${index.count }">
				<h4 class="panel-title" style="height:30px" cellspacing=0>
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse${index.count }" 
					aria-expanded="false" aria-controls="collapseOne">
					<table class="table table-hover" id="leagueItem${index.count }">
					<tr>
					<td style="width:180px">대회명 : ${i.lea_Name }</td>
					<td style="width:120px">종목 : 
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
					<td style="width:200px">지역 : ${i.lea_Local }</td>
					<td style="width:200px">소속 팀 : ${i.team_Name }</td>
					</tr>
					</table></a></h4>
			</div>
				<div id="collapse${index.count }" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading${index.count }">
      			<div class="panel-body">
      				상세 내용 : ${i.lea_Info }<br/>
      				<input type="button" value="순위/대진표" style="width:100px; height:30px"></input>
				</div>
				</div>
				</div>
				
				</c:forEach>
			</div>
		</div>
	</div>


</body>
</html>