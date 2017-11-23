<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH</title>

<!-- js 페이지네이션  -->
<!-- <script type="text/javascript" src="/resources/js/jquery.simplePagination.js"></script> -->

<!-- css 경로 -->


<!-- css 페이지네이션 -->	
<%-- <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/simplePagination.css"/>
 --%>
<style>
</style>
</head>
<body>
	<!-- Board List -->
	<div id=mainBoardTab>
		<div id="tabs">
			<ul class="nav nav-tabs" role="tablist" id="catgTab">
				<li role="presentation" class="active"><a href="#sTab"
					aria-controls="home" role="tab" data-toggle="tab" id="catg"> 축구 </a></li>

				<li role="presentation"><a href="#bTab"
					aria-controls="profile" role="tab" data-toggle="tab" id="catg"> 야구 </a></li>

				<li role="presentation"><a href="#gTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="catg"> 게임 </a></li>

				<li role="presentation"><a href="#eTab"
					aria-controls="messages" role="tab" data-toggle="tab" id="catg"> 기타 </a></li>
				</ul>
				
		<!-- <div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="sTab"><div id="catgSet">1</div></div>
			<div role="tabpanel" class="tab-pane" id="bTab"><div id="catgSet">2</div></div>
			<div role="tabpanel" class="tab-pane" id="gTab"><div id="catgSet">3</div></div>
			<div role="tabpanel" class="tab-pane" id="eTab"><div id="catgSet">4</div></div>
		</div> -->
			</div><!-- (id=tabs)텝값전달 -->
			

</body>
</html>