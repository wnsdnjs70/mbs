<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.title{
	font-size:32px;
	color:black;
}
.content{
	width:800px;
	margin-left:86px;
}
.content a:hover {
	color: black; 
	text-decoration: none;
}
.content table{
	width:788px; 
	font-size : 20px; 
	color:black; 
	border-collapse: separate;
	border-spacing: 0 10px;
	margin-left:12px;
}
.profileImg{
	float:left;
}
.profile{
	float:left;
	padding-left:5px;
	padding-top:3px;
}
.sns{
	float:right;
}
.category{
	font-size:16px;
	color:gray;
}
.detail{
	font-size:20px;
	color:black;
}
.information{
	color:black;
	border: 1px solid gray;
	border-radius: 15px;
	overflow : hidden;
}
.bottomL{
	font-size:15px;
	padding-top:10px;
	color:gray;
	float:left;
}
.bottomR{
	float:right;
}
</style>
<script>
	$().ready(function(){
		
		$("#heart").click(function(){
			
			var temp = $("#heart").prop("src").toString().split(".png").toString().split("heart");
			var imgNum = Number(temp[1].slice(0,-1));
			
			if(imgNum == 11){
				$("#heart").prop("src","${contextPath}/resources/image/heart10.png");			
			}
			else{
				$("#heart").prop("src","${contextPath}/resources/image/heart11.png");	
			}
		});
		
	});
</script>
</head>
<body>
	<br><br><br><br>
	<div class="content">
	<a href="javascript:window.history.back();"><i data-feather="arrow-left" style="width:30px; height:30px;"></i></a><br><br>
	<div class="profileImg">
		<a href="#">
			<img width="50px" height="50px" src="${contextPath }/resources/img/user10.png" alt="user.png">
		</a>
	</div>
	<div class="profile">
		<fmt:parseNumber var="birth" type="number" value="${boardInfo.memberBirthY}" />
		<c:set var="age" value="${2023 - birth}" />
		<span style="font-size:18px;"><strong>${boardInfo.nickName }</strong></span>&emsp;<span style="font-size:15px; color:gray;">${age } ∙ ${boardInfo.memberGender }</span><br>
		<span style="font-size:12px; color:gray; line-height:200%">${boardInfo.intCity1}시 ${boardInfo.intGu1}구 ∙ ${boardInfo.intCity2}시 ${boardInfo.intGu2}구</span> 
	</div>
	<div class="sns">
		
		<a href="${boardInfo.memberInstagram}">
			<img width="50px" height="50px" src="${contextPath }/resources/image/instagram3.png" alt="user.png">
		</a>
		<a href="${boardInfo.memberFacebook}">
			<img width="50px" height="50px" src="${contextPath }/resources/image/facebook3.png" alt="user.png">
		</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="title">
		<strong>${boardInfo.boardTitle}</strong>
	</div>
	<div class="category">
		&nbsp;${boardInfo.categoryL} > ${boardInfo.categoryS}
	</div>
	<br>
	<br>
	<div class="information">
		<table>
			<colgroup>
				<col width="7%" >
				<col width="93%">
			</colgroup>
			<tr>
				<c:choose>
					<c:when test="${boardInfo.peopleQty eq 1}">
						<td>
							<i data-feather="user" style="width:25px; height:25px;"></i>
						</td>
						<td>1</td>								
					</c:when>
					<c:otherwise>
						<td>
							<i data-feather="users" style="width:25px; height:25px;"></i>
						</td>
						<td>2</td>								
					</c:otherwise>
				</c:choose>			
			</tr>
			<tr>
				<td><i data-feather="calendar" style="width:25px; height:25px;"></i></td>
				<td>
					${boardInfo.meetDate} &emsp;&emsp;&ensp;
					<c:choose>
						<c:when test="${boardInfo.dateNego eq 'N' }">
							<input type="checkbox" onclick="return false;">
						</c:when>
						<c:otherwise>
							<input type="checkbox" checked onclick="return false;">
						</c:otherwise>
					</c:choose>
					<span style="color:gray; font-size:15px;">&nbsp;협의가능</span>
				</td>
			</tr>
			<tr>
				<td><i data-feather="clock" style="width:25px; height:25px;"></i></td>
				<td>
					<c:set var="time" value="${boardInfo.meetTime }"/>
					<c:set var="hour" value="${fn:substring(time,0,2)}" />
					<fmt:parseNumber var="hr" type="number" value="${hour}" />
					<c:choose>
						<c:when test="${hr le 12 }">
							오전 ${hr}시 ${fn:substring(time,3,5)}분&emsp;&ensp;&nbsp;
						</c:when>
						<c:otherwise>
							오후 ${hr-12 }시 ${fn:substring(time,3,5)}분&emsp;&ensp;&nbsp;
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${boardInfo.timeNego eq 'N' }">
							<input type="checkbox" onclick="return false;">
						</c:when>
						<c:otherwise>
							<input type="checkbox" checked onclick="return false;">
						</c:otherwise>
					</c:choose>
					<span style="color:gray; font-size:15px;">&nbsp;협의가능</span>
				</td>
			</tr>
			<tr>
				<td><i data-feather="map-pin" style="width:25px; height:25px;"></i></td>
				<td>
					${boardInfo.placeAdd } <c:if test="${boardInfo.detailAdd ne 'undefined' }">${boardInfo.detailAdd }</c:if> 
					<c:choose>
						<c:when test="${boardInfo.placeNego eq 'N' }">
							&nbsp;<input type="checkbox" onclick="return false;">
						</c:when>
						<c:otherwise>
							&nbsp;<input type="checkbox" checked onclick="return false;">
						</c:otherwise>
					</c:choose>
					<span style="color:gray; font-size:15px;">&nbsp;협의가능</span>
				</td>
			</tr>
			<tr>
				<td><i data-feather="link" style="width:25px; height:25px;"></i></td>
				<td>
					<a href="${boardInfo.url }" style="color:navy; text-decoration:underline;">
						${boardInfo.url }
					</a>
				</td>
			</tr>
			
		</table>
	</div>
	<br>
	<br>
	<div class="detail">
		${boardInfo.boardContent }
	</div>
	<br>
	<br>
	<div class="bottom">
		<div class="bottomL">
			관심 ${boardInfo.interest } ∙ 댓글 ${boardInfo.reply } ∙ 조회 ${boardInfo.views } 
		</div>	
		<div class="bottomR">
			<a href="${contextPath }/board/interest?boardNumber=${boardInfo.boardNumber}&loginMember=${loginMember}&operator=${operator}">
				<c:choose>
					<c:when test="${operator eq 'plus' }">
						<img id="heart" width="40px" height="40px" src="${contextPath}/resources/image/heart11.png" alt="heart.png">
					</c:when>
					<c:otherwise>
						<img id="heart" width="40px" height="40px" src="${contextPath}/resources/image/heart10.png" alt="heart.png">
					</c:otherwise>
				</c:choose>
			</a>
		</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
</body>
</html>