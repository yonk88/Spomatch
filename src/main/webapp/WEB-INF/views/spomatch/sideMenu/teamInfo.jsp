<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<br/>
	내가 가입한 팀:
	<select class="text-center">
		<option>정보교육FC</option>
		<option>우리끼리롤</option>
		<option>천하허접야구단</option>
	</select><br/><br/>
	<div>
		<div class="text-center">
			<table class="table table-bordered">

				<tr>
					<td>팀이름</td>
					<td>정보교육FC</td>
				</tr>

				<tr>
					<td>팀종류</td>
					<td>축구</td>
				</tr>

				<tr>
					<td>팀유니폼</td>
					<td><input type="text" name="teamUniform" size="15"
						value="맨유 홈" /></td>
				</tr>

				<tr>
					<td>팀조끼유무</td>
					<td>
					(선택시 색상 직접입력)<br/>
					<input type="checkbox">
					<input type="text">
					</td>
				</tr>

				<tr>
					<td>팀연령</td>
					<td><select>
							<option>20이하</option>
							<option>20~30</option>
							<option>30~40</option>
							<option>40~50</option>
							<option>50이상</option>
					</select></td>
				</tr>

				<tr>
					<td>팀수준</td>
					<td>
						<input type="radio" name="level" />상 
						<input type="radio" name="level" checked="checked"/>중 
						<input type="radio" name="level" />하
					</td>
				</tr>

				<tr>
					<td>활동지역</td>
					<td><input type="text" name="local" value="서울 강서"size="15" /></td>
				</tr>

				<tr>
					<td>팀대표이름</td>
					<td><input type="text" name="" size="15" value="아무개입니다" /></td>
				</tr>

				<tr>
					<td>대표 연락처</td>
					<td><input type="text" name="" size="15" value="010-1234-5678" /></td>
				</tr>

				<tr>
					<td colspan="2">소개글<br /> <textarea rows="5" cols="30">우린 짱이다</textarea><br/><br/>
					<button value="edit">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;
					<button value="edit" onclick="go_teamList();">팀원보기</button>
					<script>
						function go_teamList(){
							location.href="teamList.jsp";
						}
					</script>
					</td>
				</tr>
			</table>
		</div>
	</div>

=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

   
<script type="text/javascript">

$(document).ready(function() {
	$("#teamCreate").click(function() {
		 $("#teamSwitch").load("/spomatch/sideMenu/teamCreate.do");
	})
});

$(document).ready(function() {
	$("#team_Idx").change(function(){
		var query = {
				team_Idx : $("#team_Idx").val()
			};
			$.ajax({
				url : "/teamInfoAJAX.do",
				type : "get",
				data : query,
				dataType : "JSON",
				success : function(data) {
					console.log("성공");
					console.log(data);
					$("#team_Name").val(data.team_Name);
					$("#team_Cp").val(data.team_Cp);
					if(data.team_Cate == "S")
						$("#team_Cate").val("축구");
					if(data.team_Cate == "B")
						$("#team_Cate").val("야구");
					if(data.team_Cate == "G")
						$("#team_Cate").val("게임");
					if(data.team_Lv == "H")
						$("#team_Lv").val("상");
					if(data.team_Lv == "M")
						$("#team_Lv").val("중");
					if(data.team_Lv == "L")
						$("#team_Lv").val("하");			
					$("#team_Local").val(data.team_Local);
					$("#team_Age").val(data.team_Age);
					$("#team_Color").val(data.team_Color);
					$("#team_Vest").val(data.team_Vest);
					$("#team_Account").val(data.team_Account);
				}
			});
	})
});
</script>
</head>
<body>
	<div id="teamSwitch" >
		<div class="page-header">
			<h1>
				팀 정보 <small>Spomatch</small>
			</h1>
		</div>
		<div style="text-align:left;">
		<div class="text-right">
			<select class="form-control" name="team_Idx" id="team_Idx">
				<option value="">가입한 팀 목록</option>
				<c:forEach var="i" items="${list }">
					<option value="${i.team_Idx }">${i.team_Name }</option>
				</c:forEach>
			</select>
			<button type="button" id="teamCreate" class="btn btn-default">팀 만들기</button>
		</div>
		<div >
			<table class="table table-hover">

				<tr>
					<td>팀명</td>
					<td><input class="form-control" id="team_Name" type="text" placeholder="정보 없음" disabled></td>
				</tr>
				
				<tr>
					<td>팀장</td>
					<td><input class="form-control" id="team_Cp" type="text" placeholder="정보 없음" disabled></td>
				</tr>

				<tr>
					<td>팀 종목</td>
					<td><input class="form-control" id="team_Cate" type="text" placeholder="정보 없음" disabled></td>
				</tr>

				<tr>
					<td>팀 수준</td>
					<td><input class="form-control" id="team_Lv" type="text" placeholder="정보 없음" disabled></td>
				</tr>

				<tr>
					<td>팀 지역</td>
					<td><input class="form-control" id="team_Local" type="text" placeholder="정보 없음" disabled></td>
				</tr>
				
				<tr>
					<td>팀 연령대</td>
					<td><input class="form-control" id="team_Age" type="text" placeholder="정보 없음" disabled></td>
				</tr>

				<tr>
					<td>유니폼 색깔</td>
					<td><input class="form-control" id="team_Color" type="text" placeholder="정보 없음" disabled></td>
				</tr>

				<tr>
					<td>조끼 색깔</td>
					<td><input class="form-control" id="team_Vest" type="text" placeholder="정보 없음" disabled></td>
				</tr>
				
				<tr>
					<td>대표 계좌번호</td>
					<td><input class="form-control" id="team_Account" type="text" placeholder="정보 없음" disabled></td>
				</tr>
				
			</table>
		</div>
		</div>
	</div>
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
</body>
</html>