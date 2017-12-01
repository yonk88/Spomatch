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
<<<<<<< HEAD
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
=======
		$("#memberSwitch").load("/spomatch/sideMenu/memberInfo.do");
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
		
		var query = {
				mem_Pass : $("#mem_Pass").val(),
				mem_Local : $("#mem_Local").val()
			};
		
		$.ajax({
			url : "/spomatch/sideMenu/setMemberUpdate.do",
			type : "post",
			data : query,
			success : function(data) {
				alert("회원정보 수정완료");
				$("#memberSwitch").load("/spomatch/sideMenu/memberInfo.do");
			}
		});
		
			
		/* document.updateForm.submit();
		alert("회원정보 수정완료");
		$("#memberSwitch").load("memberInfo.do"); */
		
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
		<form name="updateForm">
			<table class="table" style="text-align:left">

				<tr>
					<td>이름</td>
					<td><input class="form-control" id="team_Name" type="text" placeholder="${result.mem_Name }" disabled></td>
				</tr>

				<tr>
					<td>이메일</td>
					<td><input class="form-control" id="team_Name" type="text" placeholder="${result.mem_Id }" disabled></td>
				</tr>
				
				<tr>
					<td>비밀번호</td>
					<td><input class="form-control" type="password" id="mem_Pass" name="mem_Pass"></td>
				</tr>

				<tr>
					<td>비밀번호 확인</td>
					<td><input class="form-control" type="password" id="mem_Pass2"></td>
				</tr>

				<tr>
					<td>생년월일</td>
					<td><input class="form-control" id="team_Name" type="text" placeholder="${birth }" disabled></td>
				</tr>

				<tr>
					<td>성별</td>
					<td><input class="form-control" id="team_Name" type="text" placeholder="${gender }" disabled></td>
				</tr>

				<tr>
					<td>활동지역</td>
					<td><input type="text" class="form-control" id="mem_Local" name="mem_Local"></td>
				</tr>

				<tr>
					<td>회원유형</td>
					<td><input class="form-control" id="team_Name" type="text" placeholder="${level }" disabled></td>
				</tr>
			</table>
			</form>
		</div>
		<div class="text-right">
			<button type="button" class="btn btn-info" id="memberUpdate" >수정 완료</button>
			<button type="button" class="btn btn-warning" id="memberInfo">취소</button>
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
		</div>
	</div>
</body>
</html>