<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
$(document).ready(function() {
	$("#memberInfo").click(function() {
		$("#memberSwitch").load("memberInfo.do");
	})
});

$(document).ready(function() {
	$("#memberUpdate").click(function() {
		if(!$("#mem_Pass").val()){
			alert("비밀번호를 입력해주세요")
			return false;
		}
		if(!$("#mem_Pass2").val()){
			alert("비밀번호를 입력해주세요")
			return false;
		}
		if(!$("#mem_Local").val()){
			alert("지역을 입력해주세요")
			return false;
		}
		if($("#mem_Pass").val() != $("#mem_Pass2").val()){
			alert("비밀번호가 일치하지 않습니다.")
			return false;
		}
			
		document.updateForm.submit();
		alert("회원정보 수정완료");
		/* $("#memberSwitch").load("memberInfo.do"); */
		
	})
	$("#memberInfo").click(function() {
		 $("#memberUpdatePage").load("/spomatch/sideMenu/memberInfo.do");
	})
});
</script>

</head>
<body>
	<div id="memberSwitch">
		<div class="page-header">
			<h1>
				회원정보 수정<small>Spomatch</small>
			</h1>
		</div>
		<div >
		<form name="updateForm" action="/spomatch/sideMenu/setMemberUpdate.do" method = "post">
			<table class="table table-striped">

				<tr>
					<td>이름</td>
					<td>${result.mem_Name }</td>
				</tr>

				<tr>
					<td>이메일</td>
					<td>${result.mem_Id }</td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td><input type="password" id="mem_Pass" name="mem_Pass"></td>
				</tr>

				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" id="mem_Pass2"></td>
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
					<td><input type="text" id="mem_Local" name="mem_Local"></td>
				</tr>

				<tr>
					<td>회원유형</td>
					<td>${level }</td>
				</tr>
			</table>
			</form>
		</div>
		<div class="text-right">
			<button type="button" class="btn btn-default" id="memberUpdate" >수정 완료</button>
			<button type="button" class="btn btn-default" id="memberInfo">취소</button>
		</div>
	</div>
</body>
</html>