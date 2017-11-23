<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

<%int teamNum = (Integer)request.getAttribute("teamNum"); 
int num=0;
int index=1;
while(true){
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
<table border=1 style="width:500px">
<%for(int i=0;i<num;i++){%>
	<tr>
		<%for(int j=0;j<index;j++) {
		System.out.println("j : "+j);	
		if(btn[j]==(int)Math.pow(2,j)){
			System.out.println("btn[j] : "+btn[j]);	
			System.out.println("배수 : "+(int)Math.pow(2,j));	
		
		%>
		
		<td style="height:30px; width:120px" rowspan=<%=(int)Math.pow(2, j) %>>
		
		<%if((int)(num/Math.pow(2, j))==2){%>
			결승
		<%}else if((int)(num/Math.pow(2, j))==4){%>
			준결승
		<%}else{%>
			<%=(int)(num/Math.pow(2, j)) %>강
		<%}%>
		
		</td>
		<%btn[j]=1;}else{
			btn[j]++;
		}%>
	
	
	
<% }%>
</tr>
<%} %>

</body>
</html>