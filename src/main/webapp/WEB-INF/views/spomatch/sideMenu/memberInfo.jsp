<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script>
$(document).ready(function() {
	$("#memberUpdate").click(function() {
		 $("#memberUpdatePage").load("/spomatch/sideMenu/memberUpdate.do");
	})
});
</script>

</head>
<body>
	<div id="memberUpdatePage">
		<div class="page-header">
			<h1>
				회원정보 <small>Spomatch</small>
			</h1>
		</div>
		<div >
			<table class="table table-hover" style="text-align:left;">

				<tr>
					<td>이름</td>
					<td>${result.mem_Name }</td>
				</tr>

				<tr>
					<td>이메일</td>
					<td>${result.mem_Id }</td>
				</tr>

				<tr>
					<td>생년월일</td>
					<td>${birth }</td>
				</tr>

				<tr>
					<td>성별</td>
					<td>${gender }</td>
				</tr>

				<tr>
					<td>활동지역</td>
					<td>${result.mem_Local }</td>
				</tr>

				<tr>
					<td>회원유형</td>
					<td>${level }</td>
				</tr>
			</table>
		</div>
		<div class="text-right">
			<button type="button" class="btn btn-info" id="memberUpdate">회원정보 수정&nbsp;
			<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span></button>
		</div>
	</div>
</body>
</html>