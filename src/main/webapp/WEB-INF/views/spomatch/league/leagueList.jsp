<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-LEAGUE</title>

<%-- <spring:url value="/resources/js/league.js" var="leagueJs" />
<script src="${leagueJs }"></script> --%>

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

<!-- 대진표 모달 -->
				<div class="modal fade" id="crtModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">순위/대진표</h4>
							</div><!-- modal-header -->
								<div class="modal-body">
									<div id="loadModal"></div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">닫기</button>
								</div><!-- modal-footer -->
						</div><!-- modal-header -->
					</div><!-- modal Content -->
				</div><!-- modal Dialog -->

<body>
<div id="headerLoad"></div>

<input type="hidden" id="tempCatg" value="${catg }"/>

<c:set var="mem_Idx" value="${mem_Idx }" />


<!-- Board List Tab-->
   <div id=mainBoardTab>
      <div id="tabs">
         <ul class="nav nav-tabs" role="tablist" id="catgTab">
            <li role="presentation" id="sTab" class="active"><a href="#sTab"
               aria-controls="home" role="tab" data-toggle="tab" id="#sTab"> 축구 </a></li>

            <li role="presentation" id="bTab"><a href="#bTab"
               aria-controls="profile" role="tab" data-toggle="tab" id="#bTab"> 야구 </a></li>

            <li role="presentation" id="gTab"><a href="#gTab"
               aria-controls="messages" role="tab" data-toggle="tab" id="#gTab"> 게임 </a></li>

            <li role="presentation" id="eTab"><a href="#eTab"
               aria-controls="messages" role="tab" data-toggle="tab" id="#eTab"> 기타 </a></li>
         </ul>
      </div><!-- id = tabs -->
   </div><!-- id = mainBoardTab -->
<!-- <div id= "tabMenu"></div> -->
	<div id="leagueSize">
		<div class="container">
			<table class="table table-striped table-hover" id="leagueItem">
				<tr>
					<th>대회명</th>
					<th>종목</th>
					<th>총 상금</th>
					<th>참가비</th>
					<th>마감일</th>
					<th>주최지</th>
					<th>상세정보</th>
				</tr>

				<c:forEach var="i" items="${leaList }">
					<tr>
						<td>${i.lea_Name }</td>
						<td>
							<c:choose>
								<c:when test="${i.lea_Cate eq 'S'.charAt(0) }">
									축구
								</c:when>
								<c:when test="${i.lea_Cate eq 'B'.charAt(0) }">
									야구
								</c:when>
								<c:when test="${i.lea_Cate eq 'G'.charAt(0) }">
									게임
								</c:when>
								<c:when test="${i.lea_Cate eq 'E'.charAt(0) }">
									기타
								</c:when>
								<c:otherwise>
									??
								</c:otherwise>
							</c:choose>
						</td>
						<td>${i.lea_Prize }</td>
						<td>${i.lea_Cost }</td>
						<td>${i.lea_Deadline }</td>
						<td>${i.lea_Local }</td>
						<td><button type="button" class="btn btn-default btn-sm" 
						onclick="showCre(${i.lea_Idx });">순위/대진표</button></td>		
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<button type="button" class="btn btn-default btn-sm" onclick="showModal();">순위/대진표</button>
	
	
	
	<script type="text/javascript">
		
	$(document).ready(function(){
		
		$("#headerLoad").load("/spomatch/main/main.do");
		var tempCatg = $("#tempCatg").val();
		$("#headerLoad").load("/spomatch/main/main.do");
		var tempCatg = $("#tempCatg").val();
			if(tempCatg == "S" || tempCatg == ""){
				$("#catgTab a:first").tab("show");
				$("#catgTab li:eq(0)").addClass("active");
				$("#catgTab li:eq(1)").removeClass("active");
				$("#catgTab li:eq(2)").removeClass("active");
				$("#catgTab li:eq(3)").removeClass("active");
			}else if(tempCatg == "B"){
				$("#catgTab li:eq(0)").removeClass("active");
				$("#catgTab li:eq(1)").addClass("active");
				$("#catgTab li:eq(2)").removeClass("active");
				$("#catgTab li:eq(3)").removeClass("active");
			}else if(tempCatg == "G"){
				$("#catgTab li:eq(0)").removeClass("active");
				$("#catgTab li:eq(1)").removeClass("active");
				$("#catgTab li:eq(2)").addClass("active");
				$("#catgTab li:eq(3)").removeClass("active");
			}else if(tempCatg == "E"){
				$("#catgTab li:eq(0)").removeClass("active");
				$("#catgTab li:eq(1)").removeClass("active");
				$("#catgTab li:eq(2)").removeClass("active");
				$("#catgTab li:eq(3)").addClass("active");
			}
			
	var tabIndex = $(this).index();
	   var num = "";

	   if(tabIndex == 0){
	      num = 0;
	      catgVal ="S";
	   }else if(tabIndex == 1){
	      num = 1;
	      catgVal ="B";
	   }else if(tabIndex == 2){
	      num = 2;
	      catgVal ="G";
	   }else if(tabIndex == 3){
	      num = 3;
	      catgVal ="E";
	   }
	   
	///////////////////////최초 로딩 ///////////////
	   var catgVal;
	   var url = "/spomatch/league/leagueList.do?catg=";
	   console.log("Start URL:" + url + ", catgVal : " + catgVal);
	   //$("#catgTab li:eq(0)").tab("show");
	   
	///////////////////////////////////////////////////
	   
	   $("#tabs> ul li").click(function(){
		   
	      var tabIndex = $(this).index();
	      var num = "";
	      if(tabIndex == 0){
				num = 0;
				catgVal ="S";
				$("#catgTab li:eq(0)").addClass("active");
				$("#catgTab li:eq(1)").removeClass("active");
				$("#catgTab li:eq(2)").removeClass("active");
				$("#catgTab li:eq(3)").removeClass("active");
			}else if(tabIndex == 1){
				num = 1;
				catgVal ="B";
				$("#sTab").removeClass("active");
				$("#bTab").addClass("active");
				$("#gTab").removeClass("active");
				$("#eTab").removeClass("active");
			}else if(tabIndex == 2){
				num = 2;
				catgVal ="G";
				$("#sTab").removeClass("active");
				$("#bTab").removeClass("active");
				$("#gTab").addClass("active");
				$("#eTab").removeClass("active");
			}else if(tabIndex == 3){
				num = 3;
				catgVal ="E";
				$("#sTab").removeClass("active");
				$("#bTab").removeClass("active");
				$("#gTab").removeClass("active");
				$("#eTab").addClass("active");
			}
	      location.href = url + catgVal;
	      console.log("final URL: " + url + ", CatgVal : " + catgVal);
	   });

	});


	function showModal(mem_Idx){
		console.log("sdf : "+cnt, lea_Idx, status);
		if(status == 'T'){
			$("#loadModal").load("/spomatch/league/leagueTmt.do?lea_Idx="+lea_Idx);
		}else{
			$("#loadModal").load("/spomatch/league/leagueRank.do?lea_Idx="+lea_Idx);
		}
	};

	function showLea(lea_Idx, status){
		if(status == 'T'){
			url="/spomatch/league/tmtTest.do?lea_Idx="+lea_Idx;
		}else{
			url="/spomatch/league/leagueRank.do?lea_Idx="+lea_Idx;
		}
		$("#matchList").load(url);
		$('#mainBoardTab').hide();
		$('#matchBtn').hide();
		//alert("jLeagueBtn");
		console.log("current URL:" + url);
	};
	
	</script>




</body>
</html>