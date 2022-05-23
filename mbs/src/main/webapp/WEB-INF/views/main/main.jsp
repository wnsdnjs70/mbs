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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

.content{
	margin:0 auto;
	width: 1000px;

}
.content .backgroundImg {
	border: 1px solid gray;
	border-radius: 12%;
	overflow : hidden;

}
.background {
	position:relative;
	float : left;
	margin-left:18px;
	margin-bottom:18px;
}

.background .boardInfo {
	width:198px;
	height:200px;
	position:absolute;
	top:12px;
	left:15px;
	font-size:12px;
	color: black;
}

</style>
<script>

	$().ready(function(){
		
		var srcL = "${contextPath}/resources/image/category";
		var srcR = ".png";
		
		$("#btnRight").click(function(){
			for(var i = 1; i <= 11; i++){		
				
				var target = "#img" + i;
				var temp = $(target).prop("src").toString().split(".png").toString().split("category");
				var imgNum = Number(temp[1].slice(0,-1));		
				var src = srcL + ((imgNum+1) % 12) + srcR;
				
				$(target).prop("src",src);
			}
		});
		$("#btnLeft").click(function(){
			for(var i = 1; i <= 11; i++){		
				
				var target = "#img" + i;
				var temp = $(target).prop("src").toString().split(".png").toString().split("category");
				var imgNum = Number(temp[1].slice(0,-1));
				var src = srcL + ((imgNum+11) % 12) + srcR;

				$(target).prop("src",src);
			}
		});

		
		$(".background").mouseenter(function(){
			$(this).find(".backgroundImg").prop("src", "${contextPath}/resources/image/lightgray2.png");
		});
		$(".background").mouseleave(function(){
			$(this).find(".backgroundImg").prop("src", "${contextPath}/resources/image/1px.gif");
		});
		
		
		$("#new").click(function(){
			if($(this).css("color") == "rgb(128, 128, 128)"){
				$(this).css("color","rgb(0, 0, 0)");
				$("#like").css("color","rgb(128, 128, 128)");
			};
		});
		$("#like").click(function(){
			if($(this).css("color") == "rgb(128, 128, 128)"){
				$(this).css("color","rgb(0, 0, 0)");
				$("#new").css("color","rgb(128, 128, 128)");
			};
		});
		$("#filter").click(function(){
			alert("아직 안만들었지롱");
		});
		
		$(".boardLink").click(function(){
			var member = $("#hidden").val();
			 
			if(member == null) {
				alert("로그인 후 이용 가능합니다.");
				$(".boardLink").prop("href", "${contextPath }/main");
			}
		});
		
	});

</script>
</head>
<body>
	<div id="ad_main_banner">
		<ul class="bjqs">
		    <li><img width="1000px" height="400px" alt="fineple_logo" src="${contextPath}/resources/image/Logo_img.png"></li>
			<li><img width="1000px" height="400px" src="${contextPath}/resources/image/qr.png"></li>
			<li><img width="1000px" height="400px" src="${contextPath}/resources/image/ad1.png"></li>
			<li><img width="1000px" height="400px" src="${contextPath}/resources/image/ad2.png"></li>
			<li><img width="1000px" height="400px" src="${contextPath}/resources/image/ad3.png"></li>
		</ul>
	</div>
	<br><br>
	<div class="category">
		<a><button data-feather="chevron-left" width="32" height="90" id="btnLeft"></button></a>
		<a href="">
			<img id="img1" width="80px" height="95px" src="${contextPath }/resources/image/category0.png" alt="img1">
		</a>
		<a href="">
			<img id="img2" width="80px" height="95px" src="${contextPath }/resources/image/category1.png" alt="img2">
		</a>
		<a href="">
			<img id="img3" width="80px" height="95px" src="${contextPath }/resources/image/category2.png" alt="img3">
		</a>
		<a href="">
			<img id="img4" width="80px" height="95px" src="${contextPath }/resources/image/category3.png" alt="img4">
		</a>
		<a href="">
			<img id="img5" width="80px" height="95px" src="${contextPath }/resources/image/category4.png" alt="img5">
		</a>
		<a href="">
			<img id="img6" width="80px" height="95px" src="${contextPath }/resources/image/category5.png" alt="img6">
		</a>
		<a href="">
			<img id="img7" width="80px" height="95px" src="${contextPath }/resources/image/category6.png" alt="img7">
		</a>
		<a href="">
			<img id="img8" width="80px" height="95px" src="${contextPath }/resources/image/category7.png" alt="img8">
		</a>
		<a href="">
			<img id="img9" width="80px" height="95px" src="${contextPath }/resources/image/category8.png" alt="img9">
		</a>
		<a href="">
			<img id="img10" width="80px" height="95px" src="${contextPath }/resources/image/category9.png" alt="img10">
		</a>
		<a href="">
			<img id="img11" width="80px" height="95px" src="${contextPath }/resources/image/category10.png" alt="img11">
		</a>
		<a><button data-feather="chevron-right" width="32" height="90" id="btnRight"></button></a>
	</div>
	<br><br><br>
	<div style="color:black; font-size:22px; float:left; margin-left: 25px;">
		<a href="#">
			<span id="new" style="color:black;"><i class="fa-solid fa-calendar-check"></i><span style="padding-top:1px;"> 최신</span>&ensp;</span>
		</a>
		<a href="#">
			<span id="like" style="color:gray;"><i class="fa-solid fa-fire-flame-curved"></i><span style="padding-top:1px;"> 인기</span></span>
		</a>
	</div>
	<div style="color:black; font-size:22px; float:right; margin-right: 25px;">
		<a href="#">
			<span id="filter" style="color:black;"><i class="fa-solid fa-filter"></i><span style="padding-top:1px;"> 필터</span></span>
		</a>
	</div>
	<br><br><br><br>
	<input type="hidden" value=${member } id="hidden">
	<div class="content">
		<c:forEach var="item" items="${boardList }">
			<div class="background">
				<a href="${contextPath }/board/boardInfo?boardNumber=${item.boardNumber}&loginMember=${member}" class="boardLink">
					<img id="ex1" class="backgroundImg" width="225px" height="225px" src="${contextPath }/resources/image/1px.gif" alt="img11">
					<div class="boardInfo"><!-- 12글자 -->
						<p style="float:left;">[ ${item.categoryS} ]</p>
						<p style="float:right; margin-right:3px; padding-top:2px;">
							<c:choose>
								<c:when test="${item.peopleQty eq 1}">
									<span style="color:gray; padding-top:5px;"><i data-feather="user" width="14" height="14"></i></span>  ${item.peopleQty}								
								</c:when>
								<c:otherwise>
									<span style="color:gray; padding-top:5px;"><i data-feather="users" width="14" height="14"></i></span>  ${item.peopleQty}								
								</c:otherwise>
							</c:choose>
						</p>
						<br>
						<p style="font-size:16px; text-align:left;"><!-- 12글자씩 3줄 -->
							<br><!-- 여기는 입력 x -->
							<c:set var="title" value="${item.boardTitle }"/>
							<c:set var="length" value="${fn:length(title)}"/>
							<c:choose>
								<c:when test="${length le 13 }">
									${title }<br><br><br>
								</c:when>
								<c:when test="${length le 26 }">
									${fn:substring(title,0,13) }<br>
									${fn:substring(title,13,length) }<br><br>
								</c:when>
								<c:when test="${length le 36 }">
									${fn:substring(title,0,13) }<br>
									${fn:substring(title,13,26) }<br>
									${fn:substring(title,26,length) }<br>
								</c:when>
								<c:otherwise>
									${fn:substring(title,0,13) }<br>
									${fn:substring(title,13,26) }<br>
									${fn:substring(title,26,33) }<strong>···</strong><br>
								</c:otherwise>
							</c:choose>
						</p>
						<br>
						<p style="line-height:180%;"><!-- 주소 14글자씩 -->
							<c:set var="address" value="${item.placeAdd }"/>
							<c:set var="length" value="${fn:length(address)}" />
							<c:set var="time" value="${item.meetTime }"/>
							<c:set var="hour" value="${fn:substring(time,0,2)}" />
							<fmt:parseNumber var="hr" type="number" value="${hour}" />
							<i data-feather="calendar" width="17" height="17"></i>&ensp;${item.meetDate }<br>
							<i data-feather="clock" width="17" height="17"></i>&nbsp;
							<c:choose>
								<c:when test="${hr le 12 }">
									오전 ${hr}시 ${fn:substring(time,3,5)}분<br>
								</c:when>
								<c:otherwise>
									오후 ${hr-12 }시 ${fn:substring(time,3,5)}분<br>
								</c:otherwise>
							</c:choose>   
							<i data-feather="map-pin" width="17" height="17"></i>&nbsp;
							<c:choose>
								<c:when test="${length le 18 }">
									${address }
								</c:when>
								<c:otherwise>
									${fn:substring(address,0,15) }<strong>···</strong>
								</c:otherwise>
							</c:choose>
						</p>
						<br>
						<p style="float:right; margin-right:3px;">
							<span style="color:gray;"><i data-feather="message-circle" width="14" height="14"></i></span> ${item.reply }&nbsp;
							<span style="color:gray;"><i data-feather="eye" width="14" height="14"></i></span> ${item.views }&nbsp;
							<img width="13px" height="13px" src="${contextPath }/resources/image/heart1.png" alt="img11"> ${item.interest }
						</p>				
					</div>
				</a>
				
			</div>		
		</c:forEach>		
		
	</div>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
</body>
</html>