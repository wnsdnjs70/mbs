<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.comment{
	padding-left:40px;
	float:left;
	font-size:12px;
}
.info{
	padding-right:40px;
	float:right;
	font-size:12px;
}
.service{
	float:left;
	padding-left:80px;
	font-size:12px;
}
</style>
</head>
<body>
	<footer>
        <hr>
        <div class="comment">
        	<br>
        	<p style="font-size:16px;"><strong>DEVELOPER COMMENT</strong></p><br>
            <p>Meeting Brokerage System 1.0에 오신 것을 환영합니다.</p><br>
            <p>
            	저희는 온라인으로<br>
           	 	다양한 영역의 사람들을 찾아,<br>
            	나의 취미생활을 같이 할 수 있도록<br>
            	중개해주는 서비스를 운영하고 있습니다.<br><br>
            	고객님들의 많은 이용에 항상 감사드립니다.
        	</p>
        	<br><br>
        </div>
        <div class="service">
        	<br>
        	<p style="font-size:16px;"><strong>고객센터</strong></p><br>
        	<p style="font-size:24px"><strong>1688-0000</strong></p><br>
        	<p>운영시간 9시 ~ 18시</p>
        	<p>(주말/공휴일 휴무, 점심시간 12시 - 13시)</p><br>
	        MBS 1.0 © 2022 <a href="${contextPath }/main"><span style="color:red; text-decoration:underline">main</span></a><br>
	        <a><span style="text-decoration:underline">공지사항</span></a>&emsp;
	        <a><span style="text-decoration:underline">1:1 문의하기</span></a>&emsp;
	        <a><span style="text-decoration:underline">자주 묻는 질문</span></a>&emsp;
        	
        </div>
        <div class="info">
        	<br>
        	<p style="font-size:16px;"><strong>DEVELOPER INFORMATION</strong></p><br>
            <p>Name : Junwon Seo</p>
            <p>Email : wnsdnjs700@gmail.com</p><br>
          
            <a href="https://github.com/wnsdnjs70">
            	<img style="width: 57px; height: 51px; margin-left:0px;" id="github" src="${contextPath }/resources/image/github1.png" alt="github">
            </a>&emsp;&emsp;
            <a href="https://www.instagram.com/seozoonon">
            	<img style="width: 52px; height: 56px; margin-left:0px;" id="instagram" src="${contextPath }/resources/image/instagram2.png" alt="instagram">
            </a>&emsp;&emsp;
            <a href="https://www.facebook.com/">
            	<img style="width: 50px; height: 50px; margin-left:0px;" id="facebook" src="${contextPath }/resources/image/facebook2.png" alt="facebook">
            </a>
            <br>
        
        </div>
        
        <br><br><br><br><br>
        <br><br><br><br><br>
    </footer>
</body>
</html>