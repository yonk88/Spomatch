<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<!-- js 경로 -->
<spring:url value="/resources/js/memberJoin.js" var="memberJoinJs" />
<script src="${memberJoinJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
	
</head>
<body>
	<article class="container">
	<div class="page-header">
		<h1>
			회원가입 <small>Spomatch</small>
		</h1>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form name="joinForm" method="post" action="memberJoinAction.do">
			<div class="form-group">
				<label for="mem_Id">이메일 주소</label>
				<div class="input-group">
					<input type="email" class="form-control" id="mem_Id" name="mem_Id"
						placeholder="이메일 주소"> <span class="input-group-btn">
						<button type="button" class="btn btn-info" id="emailCheck">
							이메일 인증&nbsp;<span class="glyphicon glyphicon-envelope"
								aria-hidden="true"></span>
						</button>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="joincode">인증번호 입력</label>
				<div class="input-group">
					<input type="text" class="form-control" id="joincode"
						name="joincode" placeholder="인증번호"> <span
						class="input-group-btn">
						<button type="button" class="btn btn-info" id="joincodeCheck">
							인증번호 확인&nbsp;<span class="glyphicon glyphicon-saved"
								aria-hidden="true"></span>
						</button>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="InputPassword1">비밀번호</label> <input type="password"
					class="form-control" id="mem_Pass" name="mem_Pass"
					placeholder="비밀번호">
			</div>
			<div class="form-group">
				<label for="InputPassword2">비밀번호 확인</label> <input type="password"
					class="form-control" id="mem_Pass2" name="mem_Pass2"
					placeholder="비밀번호 확인">
				<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
			</div>
			<div class="form-group">
				<label for="mem_Name">이름</label> <input type="text"
					class="form-control" id="mem_Name" name="mem_Name"
					placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="mem_Birth">생년월일</label> <input type="text"
					class="form-control" id="mem_Birth" name="mem_Birth"
					placeholder="주민등록번호 뒷자리 첫번째까지">
			</div>
			<div class="form-group">
				<label for="mem_Phone">휴대폰 번호</label> <input type="tel"
					class="form-control" id="mem_Phone" name="mem_Phone"
					placeholder="- 없이 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="mem_Local">지역</label> <input type="text"
					class="form-control" id="mem_Local" name="mem_Local"
					placeholder="시(군) / 구(면)">
			</div>
			<div class="form-group text-center" style="padding: 20px;">
				<button type="button" onclick="memberJoinAction()"
					class="btn btn-success">
					회원가입&nbsp;<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
				</button>
				<button type="button" onclick="location.href='/memberLogin.do'"
					class="btn btn-warning">
					가입취소&nbsp;<span class="glyphicon glyphicon-remove"
						aria-hidden="true"></span>
				</button>
			</div>
		</form>
	</div>
	</article>
</body>
</html>