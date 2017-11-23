<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

</body>
</html>