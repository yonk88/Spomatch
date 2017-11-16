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
						<input type="text" class="form-control" name="mem_Id"
							placeholder="Email" autofocus>
					</div>
					<div>
						<input type="password" class="form-control" name="mem_Pass"
							placeholder="Password">
					</div>
					<div>
						<button type="submit" class="form-control btn btn-success">로그인</button>
					</div>
					<div>
						<button type="button" onclick="location.href='/spomatch/member/memberJoin.do'" 
						class="form-control btn btn-info">회원가입</button>
					</div>
				</form>
				<div>
				<a href="#">email 찾기</a>&nbsp;/&nbsp;
				<a href="#">Password 찾기</a>
				</div>
			</div>

		</div>
	</div>


	<!-- <form class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-xs-3">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-xs-3">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2">
      <button type="submit" class="btn btn-default col-xs-1" id="signIn">Sign in</button>
      <button type="submit" class="btn btn-default col-xs-1" id="findId">Find ID</button>
      <button type="submit" class="btn btn-default col-xs-1" id="findPw">Find PW</button>
      <button type="submit" class="btn btn-default col-xs-1" id="join">Join</button>
    </div>
  </div>
</form> -->
</body>
</html>