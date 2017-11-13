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
</head>
<body>

	<form class="form-horizontal" action="#" method="post">
		<div class="form-group ">
			<label style="font-size: 20pt;" class="col-md-4 control-label">
				회원 가입 </label>
		</div>
		<div class="form-group ">
			<div class="col-md-4 col-md-offset-3">
				<div class="input-group">
					<input type="text" class="form-control" name="userid" id="userid"
						placeholder="아이디" /> <span class="input-group-btn">
						<button class="btn btn-default" type="button">중복 확인</button>
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
			<div class="btn-group btn-group-justified" role="group" aria-label="...">
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
				<!-- /input-group -->
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
	</form>
</body>
</html>