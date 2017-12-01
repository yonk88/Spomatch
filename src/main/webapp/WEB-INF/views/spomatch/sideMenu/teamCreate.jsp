<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	
<script type="text/javascript">
var teambool = false;

$(document).ready(function() {
	$("#teamCheck").click(function() {
		if ($("#team_Name").val()) {
			var query = {
				team_Name : $("#team_Name").val()
			};
			$.ajax({
				url : "/teamCheck.do",
				type : "post",
				data : query,
				success : function(data) {
					if (data == false) {
						//console.log("!");
						alert("사용할 수 없는 팀 이름입니다.")
						$("#team_Name").val("");
					} else {
						alert("사용할 수 있는 팀 이름입니다.");
						teambool = true;
						
					}
				}
			});
		} else {
			alert("팀 이름을 입력하세요.");
			$("#team_Name").focus();
		}
	});
});
function teamCreateAction() {
	if (teambool == false){
		alert("중복체크를 해주세요.");
		return false;
	}
	
	if (!$("input:radio[name='team_Cate']:checked").val()){
		alert("팀 종목을 선택해주세요.");
		return false;
	}
	
	if (!$("input:radio[name='team_Lv']:checked").val()){
		alert("팀 수준을 선택해주세요.");
		return false;
	}
	
	if (!$("#team_Age").val()){
		alert("팀 연령을 선택해주세요.");
		return false;
	}
	
	if (!$("#team_Local").val()) { //전화번호 입력 확인
		alert("팀 지역을 입력해주세요.");
		return false;
	}
	
	if (!$("#team_Local").val()) { //전화번호 입력 확인
		alert("팀 지역을 입력해주세요.");
		return false;
	}

	
	document.joinForm.submit();
	alert("회원가입 완료!");

}

$(document).ready(function() {
	$("#teamInfo").click(function() {
		$("#createSwitch").load("/spomatch/sideMenu/teamInfo.do");
	})
});

</script>
</head>
<body>
	<div id="createSwitch">
	<div class="page-header">
		<h1>
			팀 만들기 <small>Spomatch</small>
		</h1>
	</div>
	<div class="" style="text-align:left;">
		<form name="joinForm" method="post" action="/teamCreateAction.do">
			<div class="form-group">
				<label for="team_Name">팀 이름</label>
				<div class="input-group">
					<input type="text" class="form-control" id="team_Name"
						name="team_Name" placeholder="팀 이름"> <span
						class="input-group-btn">
						<button type="button" class="btn btn-info" id="teamCheck">
							중복 확인&nbsp;<span class="glyphicon glyphicon-share-alt"
								aria-hidden="true"></span>
						</button>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="team_Cate">팀 종목</label> <br />
				<input name="team_Cate" type="radio" value="S">축구 &nbsp;&nbsp; 
				<input name="team_Cate" type="radio" value="B">야구 &nbsp;&nbsp;
				<input name="team_Cate" type="radio" value="G">게임

			</div>
			<div class="form-group">
				<label for="team_Lv">팀 수준</label><br />
				<input name="team_Lv" type="radio" value="H">상 &nbsp;&nbsp;
				<input name="team_Lv" type="radio" value="M">중 &nbsp;&nbsp;
				<input name="team_Lv" type="radio" value="L">하

			</div>

			<div class="form-group">
				<label for="team_Age">팀 연령</label> 
				<select class="form-control" name="team_Age" id="team_Age">
					<option value="">팀 연령 선택</option>
					<option value="10~20">10대 ~ 20대</option>
					<option value="20~30">20대 ~ 30대</option>
					<option value="30~40">30대 ~ 40대</option>
					<option value="40~50">40대 ~ 50대</option>
					<option value="50~60">50대 ~ 60대</option>
					<option value="60~70">60대 ~ 70대</option>
				</select>
			</div>
			<div class="form-group">
				<label for="team_Local">팀 지역</label> <input type="text"
					class="form-control" id="team_Local" name="team_Local"
					placeholder="시(군) / 구(면)">
			</div>
			<div class="form-group">
				<label for="team_Color">팀 유니폼 색깔</label> <input type="text"
					class="form-control" id="team_Color" name="team_Color"
					placeholder="팀 유니폼 색깔">
			</div>
			<div class="form-group">
				<label for="team_Vest">팀 조끼 색깔</label> <input type="text"
					class="form-control" id="team_Vest" name="team_Vest"
					placeholder="팀 조끼 색깔">
			</div>
			<div class="form-group">
				<label for="team_Account">팀 대표 계좌번호</label> <input type="text"
					class="form-control" id="team_Account" name="team_Account"
					placeholder="팀 대표 계좌번호">
			</div>
			<div class="form-group text-center" style="padding: 20px;">
				<button type="button" onclick="teamCreateAction()"
					class="btn btn-success">
					팀 생성&nbsp;<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
				</button>
				<button type="button" id="teamInfo"
					class="btn btn-warning">
					취소&nbsp;<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</div>
		</form>
	</div>
	</div>
</body>
</html>