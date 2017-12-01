<!-- GIT 테스트 -->
<%@page import="com.spomatch.dto.MatchVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>

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
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="${mainJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/ad.css" />
<style>
</style>
</head>
<body>



	<!-- Board List -->
	<main role="main"> <!-- Jumbotron -->
	<div class="jumbotron" style="text-align: center;">
		<h2>지금바로 신청하세요!</h2>
		<p class="lead">지금 Spomatch의 수많은 회원들에게 당신이 원하는 광고를 소개해보세요!</p>
		<div class="bd-example">
			<button type="button" class="btn btn-primary btn-lg"
				data-toggle="modal" data-target="#adModal">광고신청하기</button>
		</div>
		</p>

	</div>

	<!-- Example row of columns -->
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<h2>저렴하고 효율적인 광고!</h2>
				<p>Spomatch는 저렴한 가격에 광고주들을 모시고 있습니다. 구체적인 가격정책을 확인하려면 아래 버튼을
					클릭하세요</p>
				<p>
					<a class="btn btn-default" href="#" role="button">가격정책 확인 »</a>
				</p>
			</div>
			<div class="col-lg-6">
				<h2>우수한 마케팅 효과!</h2>
				<p>그동안 많은 광고주들이 Spomatch에 광고를 게시하여 톡톡한 마케팅 효과를 보았습니다. 후기를 확인해보세요
				</p>
				<p>
					<a class="btn btn-default" href="#" role="button">후기 확인 »</a>
				</p>
			</div>
		</div>
	</div>

	<div id="adModal" class="modal fade modal-ku" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel" style="text-align: center">광고신청</h4>
				</div>
				<div class="modal-body">
					<p>광고신청을 위해서는 다음 빈칸을 채워 제출해주세요</p>
					<form>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">성명: </span> <input
								type="text" class="form-control" placeholder="ex: 홍길동"
								aria-describedby="name-addon" size="5">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">회사이름: </span> <input
								type="text" class="form-control" placeholder="ex: 삼성전자(주)"
								aria-describedby="name-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">이메일주소: </span> <input
								type="text" class="form-control"
								placeholder="ex: hong@naver.com" aria-describedby="name-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="adUrl-addon">광고URL: </span> <input
								type="text" class="form-control" placeholder="ex: www.naver.com"
								aria-describedby="adUrl-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="stDate-addon">광고시작일자:
							</span> <input type="text" class="form-control"
								placeholder="ex: 2017/05/13" aria-describedby="stDate-addon">
						</div>
						<div class="input-group">
							<span class="input-group-addon" id="name-addon">광고기간(일): </span>
							<input type="text" class="form-control" placeholder="ex: 20"
								aria-describedby="name-addon">
						</div>
						<div class="form-group">
							<label for="exampleFormControlFile1">광고이미지</label> <input
								type="file" class="form-control-file" id="adImage">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">신청</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>


	</main>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="http://getbootstrap.com/assets/js/vendor/popper.min.js"></script>
	<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
	<script>$('#adModal').on('shown.bs.modal', function () {
  $('#name-addon').trigger('focus')
  </script>
	})
</body>
</html>