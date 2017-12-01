<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	
	<!-- 지도API 로드 -->
 <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script> 
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPOMATCH-BOARD</title>

<!-- js 경로 -->
<spring:url value="/resources/js/myBoinfo.js" var="myBoinfoJs" />
<script src="${myBoinfoJs }"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/matchList.css" />

</head><!-- 
<script type="text/javascript">

$(document).ready(function(){
	
	$('#matchTeam').on('shown.bs.modal', function() {
		$('#myInput').focus();
		$("#matchLoad").load("/spomatch/match/matchTeam.do");
	});
	
	$("#headerLoad").load("/spomatch/main/main.do");
	
	var tempCatg = $("#tempCatg").val();
	if(tempCatg == "S" || tempCatg == ""){
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

	var num = "";

///////////////////////최초 로딩 ///////////////
	var catgVal;
	var url = "/spomatch/board/matchList.do?catg=";
	console.log("Start URL:" + url + ", catgVal : " + catgVal);
	//$("#catgTab li:eq(0)").tab("show");
	
///////////////////////////////////////////////////
	$("#match_bItem> table tr").click(function(){
		
	alert("fdasg");	
		
	});
	
	
	$("#tabs> ul li").click(function(){
		
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
		location.href = url + catgVal;
		console.log("final URL: " + url + ", CatgVal : " + catgVal);
	});
	
	$('.mCatgTr').each(function(index, item){
//////////////////수준 한글 변경//////////////////////
		
		var matLv = $(this).children("#matLv").text();
			//console.log("mCatg : " + findCh);
			//console.log("List : " + inLength);
			//console.log("catgL : " + catgList);
			if(matLv == "L"){
				$(this).children("#matLv").text("하");
			}else if(matLv == "M"){
				$(this).children("#matLv").text("중");
			}else if(matLv == "H"){
				$(this).children("#matLv").text("상");
			}
////////////////////////////////////////////////////
			
			
//////////////////현재 상태 한글 변경///////////////////			
		var matStatu = $(this).children("#matStatus").text();
			if(matStatu == "H"){
				$(this).children("#matStatus").text("모집중");
			}else if(matStatu == "A"){
				$(this).children("#matStatus").text("원정");
			}else if(matStatu == "S"){
				$(this).children("#matStatus").text("완료");
			}else if(matStatu == "N"){
				$(this).children("#matStatus").text("거절");
			}else if(matStatu == "D"){
				$(this).children("#matStatus").text("일반");
			}else if(matStatu == "F"){
				$(this).children("#matStatus").text("종료");
			}
		});
////////////////////////////////////////////////////

});

</script> -->
<body>
<div id="headerLoad"></div>
	<!-- 매칭등록 버튼 -->
		<div class="modal fade" id="matchTeam" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h2><label class="control-label">매칭 등록</label></h2>
							<div class="modal-body">
								<div class="row">
										<div id="matchLoad"></div>
								</div><!-- row -->
							</div>
				</div><!-- modal-header -->
			</div><!-- modal Content -->
		</div><!-- modal Dialog -->

		<!-- 매칭등록 버튼 -->
		<div class="modal fade" id="matchInfoM" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						
							<div class="modal-body">
								<div class="row">
										<div id="matchInfoGo"></div>
										
								</div><!-- row -->
							</div>
				</div><!-- modal-header -->
			</div><!-- modal Content -->
		</div><!-- modal Dialog -->
	<div id="match_bSize">
		<div class="container" id="data-container">
			<table class="table table-striped table-hover" id="match_bItem">
				<tr id="dontOpen" name="dontOpen">
					<th>등록날짜</th>
					<th>장소</th>
					<th>팀명</th>
					<th>경기 날짜</th>
					<th>경기 시간</th>
					<th>모집 상태</th>
					<!-- <th>대기인원</th> -->
				</tr>
				<c:forEach var="i" items="${boaList }">
				
					<tr class="mCatgTr" data-toggle="modal" data-target="#matchInfoM" onclick="showContent(${i.mat_Idx })">
						<td><fmt:formatDate value="${i.mat_Date }" /></td>
						<td>${i.mat_Local }</td>
						<td>${i.team_Name }</td>
						<td>${i.mat_MatchDay }</td>
						<td>${i.mat_Ampm }&nbsp;${i.mat_Stime }&nbsp;~&nbsp;${i.mat_Ftime }</td>
						<td id="matLv" style="display:none;">${i.mat_Lv}</td>
						<td id="matStatus">${i.mat_Status }</td>
						<td id="mIdx" class="mIdx">${i.mat_Idx }</td>
					</tr>
				</c:forEach>
			</table>
		</div><!-- match_bSize -->
	</div>

<div id="bInfo" style="width:420;height:420px;overflow:hidden; padding-left:"30%"></div>
	<!-- 매칭등록 버튼 -->
		<div class="modal fade" id="matchTeam" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h2><label class="control-label">매칭 등록</label></h2>
							<div class="modal-body">
								<div class="row">
										<div id="matchLoad"></div>
								</div><!-- row -->
							</div>
				</div><!-- modal-header -->
			</div><!-- modal Content -->
		</div><!-- modal Dialog -->

		<!-- 매칭등록 버튼 -->
		<div class="modal fade" id="matchInfoM" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						
							<div class="modal-body">
								<div class="row">
										<div id="matchInfoGo"></div>
										
								</div><!-- row -->
							</div>
				</div><!-- modal-header -->
			</div><!-- modal Content -->
		</div><!-- modal Dialog -->
</body>
</html>