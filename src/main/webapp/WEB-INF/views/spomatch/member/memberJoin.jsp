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

<script>
	//아이디 중복체크
	$(document).ready(function() {
		$("#emailCheck").click(function() {
			if ($("#userid").val()) {
				var query = {
					userid : $("#userid").val()
				};
				$.ajax({
					url : "/spomatch/member/emailCheck.do",
					type : "post",
					data : query,
					success : function(data) {
						if (data == 1) {
							console.log("!");
							alert("사용할 수 없는 아이디입니다.")
							$("#id").val("");
						} else if (data == -1) {
							alert("사용할 수 있는 아이디입니다.");
						}
					}
				});
			} else {
				alert("아이디를 입력하세요.");
				$("#id").focus();
			}
		});
	});

	$(document).ready(function() {
		$("#emailVerify").click(function() {
			if ($("#userid").val()) {
				var query = {
					userid : $("#userid").val()
				};
				$.ajax({
					url : "/spomatch/member/emailVerify.do",
					type : "post",
					data : query,
					success : function(data) {
						if (data == true) {
							alert("인증메일 전송완료")
							$("#id").val("");
						}
					}
				});
			}
		});
	});

	/* function checkMail(){
		var userid = document.getElementById("userid").value;
		var url = "spomatch/member/emailVerify.do";
		
		if(userid == ""){
			alert("메일을 입력해 주세요.")
			return false;
		}
		
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function(){
			if(xhttp.readyState==4){
				var data = JSON.parse(xhttp.responseText);
				if(data != null){
					alert("이미 가입한 메일입니다.");
					$("#joincode").css("display", "none");
				}else{
					sendMail(userid);
					$("#joincode").css("display", "");
				}
			}
		};
		xhttp.open("POST", url , true);
		xhttp.setRequestHeader("Content-Type", "application/x-www-form-unlencoded;charset=UTF-8")
		xhttp.send('userid : ' + userid);
		return false;
	}
	
	function sendMail(userid){
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function(){
			if (xhttp.readyState == 4){
				if(xhttp.status == 200)
					alert("메일을 정상적으로 보냈습니다.")
				else
					alert("올바른 메일 형식이 아닙니다.")
			}
		};
		xhttp.open("POST", 'sendMail/', true);
		xhttp.setRequestHeader("Content-Type", "application/x-www-form-unlencoded;charset=UTF-8")
		xhttp.send('userid : ' + userid);
		return false;
	} */
</script>
</head>
<body>
	<article class="container">
	<div class="page-header">
		<h1>
			회원가입 <small>Spomatch</small>
		</h1>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form role="form">
			<div class="form-group">
				<label for="userid">이메일 주소</label>
				<div class="input-group">
					<input type="email" class="form-control" id="userid"
						placeholder="이메일 주소"> <span class="input-group-btn">
						<button class="btn btn-info" id="emailCheck">
							중복 확인<i class="fa fa-edit spaceLeft"></i>
						</button>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="joincode">인증번호 입력</label>
				<div class="input-group">
					<input type="text" class="form-control" id="joincode"
						placeholder="인증번호"> <span class="input-group-btn">
						<button class="btn btn-info" id="emailVerify">
							인증번호 입력<i class="fa fa-edit spaceLeft"></i>
						</button>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="InputPassword1">비밀번호</label> <input type="password"
					class="form-control" id="userpw1" placeholder="비밀번호">
			</div>
			<div class="form-group">
				<label for="InputPassword2">비밀번호 확인</label> <input type="password"
					class="form-control" id="userpw2" placeholder="비밀번호 확인">
				<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
			</div>
			<div class="form-group">
				<label for="username">이름</label> <input type="text"
					class="form-control" id="username" placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="username">휴대폰 번호</label> <input type="tel"
					class="form-control" id="phonenumber" placeholder="- 없이 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="username">지역</label> <input type="text"
					class="form-control" id="phonenumber" placeholder="시(군) / 구(면)">
			</div>
			<div class="form-group text-center" style="padding: 20px;">
				<button type="submit" class="btn btn-success">
					회원가입<i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="submit" class="btn btn-warning">
					가입취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>
	</article>

	<!-- 	<form class="form-horizontal" action="#" method="post">
		<div class="form-group ">
			<label style="font-size: 20pt;" class="col-md-4 control-label">
				회원 가입 </label>
		</div>
		<div class="form-group ">
			<div class="col-md-4 col-md-offset-3">
				<div class="input-group">
					<input type="text" class="form-control" name="userid" id="userid"
						placeholder="아이디" /> <span class="input-group-btn">
						<button class="btn btn-default" type="button" id="emailCheck">중복
							확인</button>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group ">
			<div class="col-md-4 col-md-offset-3">
				<div class="input-group">
					<input type="text" class="form-control" name="verifynumber"
						id="verifynumber" placeholder="인증번호" /> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button" id="emailVerify">이메일
							인증</button>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group " align="center">

			<div class="col-md-4 col-md-offset-3">
				<input type="password" class="form-control" name="userpw"
					id="userpw" placeholder="비밀번호" />
			</div>
		</div>
		<div class="form-group " align="center">

			<div class="col-md-4 col-md-offset-3">
				<input type="password" class="form-control" name="userpw"
					id="userpw" placeholder="비밀번호 확인" />
			</div>
		</div>
		<div class="form-group ">
			<div class="col-md-4 col-md-offset-3">
				<input type="text" class="form-control" name="username"
					id="username" placeholder="이름" />
			</div>
		</div>
		<div class="form-group ">
			<div class="col-md-4 col-md-offset-3">
				<input type="text" class="form-control" name="userbirth"
					id="userbirth" placeholder="생일" />
			</div>
		</div>
		<div class="form-group ">
			<div class="col-md-4 col-md-offset-3">
				<div class="btn-group btn-group-justified" role="group"
					aria-label="...">
					<div class="input-group">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false">
								Action <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</div>
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false">
								Action <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</div>
					</div>
					/input-group
				</div>
			</div>
		</div>
		<div class="form-group ">

			<div class="col-md-4 col-md-offset-3">
				<input type="text" class="form-control" name="userphone"
					id="userphone" placeholder="전화번호" />
			</div>
		</div>

		<div class="form-group">
			<div class="col-md-4 col-md-offset-3">
				<input type="submit" class="btn btn-default" value="가입완료" />
			</div>
		</div>
	</form> -->
</body>
</html>