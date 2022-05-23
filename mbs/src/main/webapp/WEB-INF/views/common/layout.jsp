<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href="${contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" media="screen">
<link href="${contextPath}/resources/css/basic-jquery-slider.css" rel="stylesheet" type="text/css" media="screen">
<link href="${contextPath }/resources/css/myStyle.css" rel="stylesheet" type="text/css"/>
<script src="${contextPath}/resources/jquery/jquery-1.6.2.min.js" ></script>
<script src="${contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<script src="${contextPath}/resources/jquery/jquery.easing.1.3.js" ></script>
<script src="${contextPath}/resources/jquery/basic-jquery-slider.js" ></script>
<script src="${contextPath}/resources/jquery/carousel.js" ></script>
<script src="${contextPath}/resources/jquery/tabs.js" ></script>
<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script>    
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${contextPath}/resources/js/feather.js"></script>

<title><tiles:insertAttribute name="title" /></title>
<script>
	// 슬라이드 
	$(document).ready(function() {
		$('#ad_main_banner').bjqs({
			'width' : 1000,
			'height' : 400,
			'showMarkers' : true,
			'showControls' : false,
			'centerMarkers' : false
		});
	});
</script>

</head>
<body>
	<div id="outer_wrap">
		<div id="wrap">
			<header>
				<tiles:insertAttribute name="header" />
			</header>
			<div class="clear"></div>
			
			<article>
			 	<tiles:insertAttribute name="body" />
			</article>
			<div class="clear"></div>
			
			<footer>
        		<tiles:insertAttribute name="footer" />
        	</footer>
		</div>
    </div>      
    
<script>feather.replace()</script>     	
</body>      