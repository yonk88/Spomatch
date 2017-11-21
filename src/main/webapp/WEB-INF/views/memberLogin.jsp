<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	background: #f8f8f8;
	padding: 60px 0;
}

#login-form>div {
	margin: 25px 0;
}
</style>

<!-- JQuery -->
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

//	로그인처리
	$(document).ready(function() {
		$("#loginAction").click(function() {
			if ($("#mem_Id").val() && $("#mem_Pass").val()) {
				console.log("1");
				var query = {
					mem_Id : $("#mem_Id").val(),
					mem_Pass : $("#mem_Pass").val()
				};
				$.ajax({
					url : "loginAction.do",
					type : "post",
					data : query,
					dataType : "json",
					success : function(data) {
						console.log("success");
						if (data == true) {
							location.href = "/spomatch/main/main.do";
						} else {
							alert("아이디 또는 비밀번호를 다시 확인하세요.")
							$("#mem_Id").val("");
							$("#mem_Pass").val("");
						}
					},
					error : function() {
						console.log("error");
					}
				});
			} else {
				alert("정보를 입력하세요.");
				$("#mem_Id").focus();
			}
		});
	});

	//	이메일 찾기
	$(document).ready(function() {
		$("#findEmail").click(function() {
			if ($("#mem_Name").val() && $("#mem_Phone").val()) {
				console.log("1");
				var query = {
					mem_Name : $("#mem_Name").val(),
					mem_Phone : $("#mem_Phone").val()
				};
				$.ajax({
					url : "findEmail.do",
					type : "post",
					data : query,
					dataType : "json",
					success : function(data) {
						console.log("success");
						console.log(data.mem_Id);
						if (data.mem_Id == null) {
							alert("입력하신 정보로 가입된 이메일이 없습니다.")
						} else {
							alert("가입하신 이메일은 " + data.mem_Id + " 입니다.")
						}
					},
					error : function() {
						console.log("error");
					}
				});
			} else {
				alert("정보를 입력하세요.");
				$("#mem_Name").focus();
			}
		});
	});

	//	비밀번호 찾기
	$(document).ready(function() {
		$("#findPassword").click(function() {
			if ($("#mem_Id").val()) {
				console.log("1");
				var query = {
					mem_Id : $("#mem_Id").val()
				};
				$.ajax({
					url : "findPassword.do",
					type : "post",
					data : query,
					success : function(data) {
						console.log("success");
						console.log(data.mem_Id);
						if (data.mem_Id == null) {
							alert("입력하신 정보로 가입된 이메일이 없습니다.")
						} else {
							alert("가입하신 이메일은 " + data.mem_Id + " 입니다.")
						}
					},
					error : function() {
						console.log("error");
					}
				});
			} else {
				alert("정보를 입력하세요.");
				$("#mem_Name").focus();
			}
		});
	});
</script>

</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1>
				로그인 <small>Spomatch</small>
			</h1>
		</div>
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

			<div class="panel-body">
				<form id="login-form" action="/loginAction.do" method="post">
					<div>
						<input type="text" class="form-control" name="mem_Id" id="mem_Id"
							placeholder="Email" autofocus>
					</div>
					<div>
						<input type="password" class="form-control" name="mem_Pass" id="mem_Pass"
							placeholder="Password">
					</div>
					<div>
						<button type="button" id="loginAction" class="form-control btn btn-success">로그인</button>
					</div>
					<div>
						<button type="button"
							onclick="location.href='/spomatch/member/memberJoin.do'"
							class="form-control btn btn-info">회원가입</button>
					</div>
				</form>
				<div>
					<a data-toggle="modal" data-target="#emailModal"
						style="cursor: pointer;">email 찾기</a>&nbsp;/&nbsp; <a
						data-toggle="modal" data-target="#passwordModal"
						style="cursor: pointer;">비밀번호 찾기</a>
				</div>

				<!-- Email 찾기 modal -->
				<div class="modal fade" id="emailModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<div>
									<h2>Email 찾기</h2>
								</div>
								<div>회원가입 시 입력했던 이름과 전화번호를 입력해주세요.</div>
							</div>
							<div class="modal-body">
								<div style="padding: 10px;">
									<label for="mem_Name">이름</label> <input type="text"
										class="form-control" id="mem_Name" name="mem_Name"
										placeholder="이름" autofocus>
								</div>
								<div style="padding: 10px;">
									<label for="mem_Phone">휴대폰 번호</label> <input type="text"
										class="form-control" id="mem_Phone" name="mem_Phone"
										placeholder="전화번호">
								</div>
							</div>
							<div class="modal-footer">
								<div class="form-group text-center">
									<button type="button" id="findEmail" class="btn btn-success">
										찾기&nbsp;<span class="glyphicon glyphicon-ok"
											aria-hidden="true"></span>
									</button>
									<button type="button" class="btn btn-warning"
										data-dismiss="modal">
										취소&nbsp;<span class="glyphicon glyphicon-remove"
											aria-hidden="true"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 비밀번호 찾기 modal -->
				<div class="modal fade" id="passwordModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<div>
									<h2>비밀번호 찾기</h2>
								</div>
								<div>가입한 이메일을 입력해주세요</div>
							</div>
							<div class="modal-body">
								<div style="padding: 10px;">
									<label for="mem_Id">Email</label> <input type="text"
										class="form-control" id="mem_Id" name="mem_Id"
										placeholder="이메일" autofocus>
								</div>
							</div>
							<div class="modal-footer">
								<div class="form-group text-center">
									<button type="button" id="findPassword" class="btn btn-success">
										찾기&nbsp;<span class="glyphicon glyphicon-ok"
											aria-hidden="true"></span>
									</button>
									<button type="button" class="btn btn-warning"
										data-dismiss="modal">
										취소&nbsp;<span class="glyphicon glyphicon-remove"
											aria-hidden="true"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>