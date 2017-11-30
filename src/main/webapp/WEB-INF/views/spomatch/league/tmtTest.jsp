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

<title>Insert title here</title>

<!-- js 경로 -->
<spring:url value="/resources/js/leagueTmt.js" var="leagueTmtJs" />
<script src="${leagueTmtJs }"></script>

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
<c:set var="host" value="${leaVo.lea_Host }" />
<c:set var="leaSty" value="${leaVo.lea_Style }" />
<script type="text/javascript">
	console.log("s로그그그그"+"${leaVo.lea_Style }");
</script>
<%String lea_Host = (String)pageContext.getAttribute("host");
String lea_Style = pageContext.getAttribute("leaSty").toString();%>

<%int teamNum = (Integer)request.getAttribute("teamNum"); 
int num=0;
int index=1;
while(true){		//몇강 토너먼트 대진표를 작성할것인가 num 변수에 저장
	if(Math.pow(2, index)<teamNum&&teamNum<=Math.pow(2, index+1)){
		num=(int)Math.pow(2, index+1);
		System.out.println("num:"+num);
		index++;
		break;
	}
	index++;
}%><%System.out.println("개수:"+index); %>

<%int[] btn = new int[index];
for(int k=0;k<index;k++){
	btn[k]=(int)Math.pow(2, k);
	System.out.println(btn[k]);//들어가는거 검사
}%>

<form id="upTmtForm" method="post">
	<input type="hidden" id="team_Idx" name="team_Idx" />
	<input type="hidden" id="lt_Group" name="lt_Group"/>
	<input type="hidden" id="lea_Idx" name="lea_Idx" value="${lea_Idx }" />
	<input type="hidden" id="tmtNum" name="tmtNum" value="<%=num %>" />
</form>

<form id="leaForm" method="post" action="/spomatch/league/leagueStAction.do">
	<input type="hidden" id="lea_Idx" name="lea_Idx" value="${lea_Idx }"/>
</form>
	<input type="hidden" id="lea_Style" value="${leaVo.lea_Style }" />
	
	<%
String mem_Idx = (String)request.getAttribute("mem_Idx");
System.out.println("Host : "+lea_Host+", mem : "+mem_Idx);

%>
<input type="button" id="gan" 
<%if(lea_Host.equals(mem_Idx)){ %>
style="visibility:visible" 
<%}else{ %>
style="visibility:hidden" 
<%} %>
onclick="gan(<%=num%>);" 
<%if(lea_Style.equals("N")){ %>
value="대진관리"
<%}else if(lea_Style.equals("T")){ %>
value="결과관리"
<%}%>/>
<button type="button" id="insert" disabled="true" onclick="submitUp(<%=num %>, <%=teamNum %>);">저장</button>
<input type="button" id="ganCan" disabled="true" onclick="ganCan(<%=num%>);" value="취소" />

<table class="table table-condensed" style="width:500px">
<%for(int i=1;i<=num;i++){%>
	<tr><%
		for(int j=0;j<index;j++) {
		System.out.println("j : "+j);	
		if(btn[j]==(int)Math.pow(2,j)){
			System.out.println("btn[j] : "+btn[j]);	
			System.out.println("배수 : "+(int)Math.pow(2,j));	
		
		%>
		
		<td style="height:15px; width:120px" rowspan=<%=(int)Math.pow(2, j) %>>
		
		<%if((int)(num/Math.pow(2, j))==2){%>
			<input type="button" class="btn" id="tmtBtn<%=((num/(int)Math.pow(2, j))*100)+i%>" 
			onclick="chan(<%=(num*100)+i%>, <%=num%>);" style="width:100%; height:100%"
			value="결승" disabled="true"></input>
		<%}else if((int)(num/Math.pow(2, j))==4){%>
			<input type="button" class="btn" id="tmtBtn<%=((num/(int)Math.pow(2, j))*100)+i%>" 
			onclick="chan(<%=(num*100)+i%>, <%=num%>);" style="width:100%; height:100%"
			value="준결승" disabled="true"></input>
		<%}else if(j==0){
			System.out.println("i : "+i);%>
			<input type="button" class="btn" id="tmtBtn<%=((num/(int)Math.pow(2, j))*100)+i%>" 
			onclick="chan(<%=(num*100)+i%>, <%=num%>);" style="width:100%; height:100%"
			value="<%=(int)(num/Math.pow(2, j)) %>강" disabled="true"></input>
			<%
		}else{%>
			<input type="button" class="btn" id="tmtBtn<%=((num/(int)Math.pow(2, j))*100)+i%>" 
			onclick="chan(<%=(num*100)+i%>, <%=num%>);" style="width:100%; height:100%"
			value="<%=(int)(num/Math.pow(2, j)) %>강" disabled="true"></input>
		<%}
		System.out.println("btn : "+btn[j]+" - id : "+i+", = : "+(btn[j]-i));
		%>
		
		</td>
		<%btn[j]=1;}else{
			btn[j]++;
		}%>
	
	
	
<% }%>
</tr>
<%} %>
</table>

<c:if test="${leaVo.lea_Style eq 'T'.charAt(0) }">
	<c:forEach var="i" items="${leaTmList }" varStatus="index">
		<script type="text/javascript">
			document.getElementById("tmtBtn"+${i.lt_Group}).value="${i.team_Name}";
			//console.log("로오오오그 : " +document.getElementById("tmtBtn"+${i.lt_Group}).value);
		</script>
	</c:forEach>
</c:if>

<form id="teamList">
<div id="teamList">
<table class="table">
<tr><td>
<c:forEach var="i" items="${leaTmList }" varStatus="index">
		<input type="button" class="btn" id="${i.team_Idx }" name="teamBtn"
		style="width:100px" value="${i.team_Name }" onclick="setTeam('${i.team_Idx}')"/>
<!-- 		<script type="text/javascript">
			sessionStorage.setItem("teamBtn"+${index.count}, "${i.team_Idx}");
			console.log("teamBtn"+${index.count} +", " + "${i.team_Idx}");
		</script> -->
	<c:if test="${index.count%8==0 }">
		</td>
		</tr>
		<tr>
		<td>
	</c:if>
</c:forEach>
</td></tr>
</table>
</div></form>



<script type="text/javascript">
$("#insert").hide();
$("#ganCan").hide();
$("#teamList").hide();
</script>
</body>

</html>