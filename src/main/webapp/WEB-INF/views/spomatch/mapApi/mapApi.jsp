<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지도API</title>

<style>
    /* .map_wrap {position:relative;width:100%;height:350px;} */
    .title {font-weight:bold;display:block; color:blue;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    /* #centerAddr {display:block;margin-top:2px;font-weight: normal;} */
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    #selectLoc{ text-align:left}
    
</style>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script>
	
	<!-- js 경로 -->
<script src="<c:url value="/resources/js/mapApi.js" />"></script>

<%-- <!-- jQuery -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30fd3b061544e407b75d899b10dec151&libraries=services"></script>

<!-- css 경로 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/mapApi.css" />
 --%>
</head>

<body>
	    
<div class="map_wrap">
    <div id="map" style="width:420;height:420px;overflow:hidden; padding-left:"30%"></div><br/>
	<div class="hAddr"></div>
</div>


</body>
</html>