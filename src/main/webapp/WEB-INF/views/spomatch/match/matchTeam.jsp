<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>팀 매칭</title>
  
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
 
<!-- js 경로 -->
<script src="<c:url value="/resources/js/matchTeam.js" />"></script>

<script src="<c:url value="/resources/js/bootstrap-datepicker.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap-datepicker.kr.js" />"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/matchTeam.css" />
	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/datepicker3.css" />

<!-- <!-- 지도API 로드 -->
<!-- <script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script> -->
	
</head>

<body>

<form action="#" method="get">
	<table class="table table-bordered" >
		<tr>
			<td id="trLeft">
			<!-- 팀 IDX -->
			<div id="tm_Idx" name="tm_Idx">
				<c:forEach var="i" items="${tmList }">
					<li>${i.team_Idx }</li>
				</c:forEach>
				<input type="hidden" id="team_Idx" name="team_Idx">
			</div>
			
			<!-- 카테고리용 -->
			<div id="tm_Cate" name="mat_Cate">
				<c:forEach var="i" items="${tmList }">
					<li>${i.team_Cate }</li>
				</c:forEach>
				<input type="hidden" id="mat_Cate" name="mat_Cate">
			</div>
		
			<!-- mat_TeamName -->
			<label class="control-label">팀 이름</label><br/>
			<select class="form-control" id="tm_Name" name="mat_Host">
		
				<c:forEach var="i" items="${tmList }">
					<option>${i.team_Name }</option>
				</c:forEach>
			
			</select>
			<br/><br/>
		
			<!-- mat_Matchday -->
			<label class="control-label">날짜</label>
			<br/>
				<div class="input-group date" data-provide="datepicker">
					<input type="text" class="form-control" id="mat_MatchDay" name="mat_MatchDay" value="날짜를 선택하세요">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-th"></span>
					</div>
				</div>
			<br/><br/>
		
			<!-- mat_Time -->
			<label class="control-label">시간</label>
			<br/>
				<div>
					오전&nbsp;<input type="radio" id="mat_Ampm" class= "mat_Ampm" name="mat_Ampm" value="AM" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					오후&nbsp;<input type="radio" id="mat_Ampm" class= "mat_Ampm" name="mat_Ampm" value="PM" checked="checked"/>
				</div>
			<br/>
			
			<div class="col-sm-3">
				<input type="text" id="mat_sHour" name="mat_sHour" size="3" class="form-control" />
			</div>
			 <label class="control-label col-sm-1">시:</label>
			<div class="col-sm-3">
				<input type="text" id="mat_sMin" name="mat_sMin"size="3" class="form-control" />
			</div>
				<label class="control-label col-sm-3">분  부터</label>
			<br/>
			<br/>
		
			<div class="col-sm-3">
				<input type="text" id="mat_fHour" name="mat_fHour" size="3" class="form-control" /> 
			</div>
			 <label class="control-label col-sm-1">시:</label>
		 
			<div class="col-sm-3">
				<input type="text" id="mat_fMin" name="mat_fMin" size="3" class="form-control" />
			</div>
			<label class="control-label col-sm-3">분  까지</label>
			<input type="hidden" id="mat_Stime" name="mat_Stime">
			<input type="hidden" id="mat_Ftime" name="mat_Ftime">
			<br/><br/><br/>
		
			<!-- mat_Local -->
			<div id="mt_Local">
				<label class="control-label">장소, 활동지역</label>
				<br/>
				<input type="text" id="mat_LocalText" name="mat_Local" class="form-control" />
				<br/>
			</div>
		
			<!-- mat_FieldSize -->
			<div id="fieldSize">
				<label class="control-label">구장크기</label><br/>
				<select class="form-control" id="mat_Fsize" name="mat_Fsize">
					<option>풋살</option>
					<option>10:10 이하</option>
					<option>11:11 규격</option>
				</select>
			</div>
			<br/>
		
			<!-- team_Age -->
			<label class="control-label">연령</label><br/>
			<div id="tm_Age">
				<c:forEach var="i" items="${tmList }">
					<li>${i.team_Age }</li>
				</c:forEach>
			</div>
			<select class="form-control" id="team_Age">
				<option>20대 이하</option>
				<option>20대 ~ 30대</option>
				<option>30대 ~ 40대</option>
				<option>40대 ~ 50대</option>
				<option>50대 이상</option>
			</select>
			<br/>
		
			<!-- team_Lv -->
			<label class="control-label">실력</label><br/>
				<div id="tm_Lv">
					<c:forEach var="i" items="${tmList }">
						<li >${i.team_Lv }</li>
					</c:forEach>
				</div>
				<div>
					상&nbsp;<input type="radio" id="mat_Lv" class= "teamLvH" name="mat_Lv" value="H" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					중&nbsp;<input type="radio" id="mat_Lv" class= "teamLvM" name="mat_Lv" value="M" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					하&nbsp;<input type="radio" id="mat_Lv" class= "teamLvL" name="mat_Lv" value="L" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<br/><br/>
		
			<!-- team_Vest -->
			<div id="vestTeam">
				<div id="tm_Vest">
					<c:forEach var="i" items="${tmList }">
						<li>${i.team_Vest }</li>
					</c:forEach>
				</div>
				<label class="control-label">조끼</label>
				<br/>
				<input type="text" id="team_Vest" name="team_Vest" class="form-control" placeholder="없을시 비우셔도 됩니다." value=""/>
			</div>
			<br/>
		
			<!-- team_Color -->
			<div id="colorTeam">
				<div id="tm_Color">
					<c:forEach var="i" items="${tmList }">
						<li>${i.team_Color }</li>
					</c:forEach>
				</div>
				<label class="control-label">유니폼</label>
				<br/>
				<input type="text" id="team_Color" name="team_Color" class="form-control" placeholder="없을시 비우셔도 됩니다." value="" />
			</div>
			<br/>
		
			<!-- mem_Phone -->
			<label class="control-label">대표연락처</label>
				<div id="m_Phone">
					<c:forEach var="i" items="${memList }">
						<li>${i.mem_Phone }</li>
					</c:forEach>
				</div>
			<br/>
			<input type="text" id="mem_Phone" name="mem_Phone" class="form-control" value="" />
			<br/>
		
			<!-- team_Account -->
			<div id="accountTeam">
				<div id="tm_Account">
					<c:forEach var="i" items="${tmList }">
						<li>${i.team_Account }</li>
					</c:forEach>
				</div>
				<label class="control-label">계좌번호</label>
				<br/>
				<input type="text" id="team_Account" name="team_Account" class="form-control" placeholder="없을시 비우셔도 됩니다." />
			</div>
			</td>
		
			<!-- mapAPI -->
			<td rowspan="8" id="tdRight">
				<div id="mapArea">
					<label class="control-label">장소 검색</label>	
 					<input type=text id="keyText" />
 	
    				<button type="button" class="btn btn-primary btn-sm" onclick="keyEnter()">찾기</button>
    				<br/><br/>
    
					<div class="map_wrap">
						<div id="map" style="width:420;height:420px;overflow:hidden; padding-left:"30%"></div><br/>
						<button id="selectLoc" type="button" class="btn btn-primary btn-md">이곳으로 지정</button>
						
    					<!-- mat_Local -->
						<input type="text" id="mat_LocalMap" name="mat_Local" class="form-control" placeholder="위에 버튼 클릭 시 이곳에 주소가 저장됩니다." value=""/>
						<br/>
						<div class="hAddr"></div>
					</div>
				</div>
				<!-- mat_Comment -->
				<label class="control-label">팀 소개</label><br/>
				<textarea rows="10" cols="60" id="mat_Comment" name="mat_Comment"></textarea>
			</td>
		</tr>
	
	</table>
	<div id="matchModalFooter">
		<input type="button" id="sendBtn" class="btn btn-primary btn-md" value="등록 하기" data-dismiss="modal"/>
		<button type="button" class="btn btn-default btn-md" data-dismiss="modal">취소</button>
	</div>
</form>

</body>
</html>