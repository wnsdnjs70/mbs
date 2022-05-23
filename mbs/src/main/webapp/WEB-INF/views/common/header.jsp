<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$().ready(function(){
		
		$("#mypage").mouseenter(function(){
			$("#mypage").css("color", "black");
		});
		$("#mypage").mouseleave(function(){
			$("#mypage").css("color", "gray");
		});
		
		$("#logout").mouseenter(function(){
			$("#logout").css("color", "black");
		});
		$("#logout").mouseleave(function(){
			$("#logout").css("color", "gray");
		});

	});
</script>
</head>
<body>
	<div id="logo">
		<a href="${contextPath}/main">
			<span id="logo_temp"><i><h1>LOGO</h1></i></span>
		</a>
	</div>
	<div id="search1" style="float:left; padding-left:227">
		<form class="form-inline" >
             <div class="input-group input-group-joined input-group-solid">
                 <input class="form-control" size="30" type="search" placeholder="카테고리, 단어를 입력하세요."/>
                 <span class="input-group-append">
                     <span class="input-group-text" style="margin-right: 0.5rem !important;"><i data-feather="search"></i></span>
                 </span>
             </div>
         </form>
	</div>
	<div id="head_link">
		<ul>
		    <c:choose>
				<c:when test="${isLogOn == true and not empty memberInfo }">
              		<a class="btn btn-icon btn-transparent-dark" href="${contextPath }/board/write?memberInfo=${memberInfo}">글쓰기</a>
					<a class="btn btn-icon btn-transparent-dark" href="#">채팅</a>
                	<a class="btn btn-icon btn-transparent-dark" href="#">알림</a>
					<a class="dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-toggle="dropdown"">
	            		<span style="font-size : large">&nbsp; ${memberInfo }님</span>
	            	</a>
              		<div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up">
                    	<div class="dropdown-user-details">
                       		&nbsp;<img src="${contextPath }/resources/img/user.png" /> ${memberInfo }님
                           <div class="dropdown-user-details-email">&ensp;${email }&nbsp; </div>
                       </div>
                   		<div class="dropdown-divider"></div>
                  		<a href="${contextPath}/member/mypage">
                       		<div id="mypage" class="dropdown-item-icon" style="color:gray;">&ensp;<i data-feather="settings" width="17" height="17"></i>&nbsp;마이페이지</div>
                   		</a>
                   		<a href="${contextPath}/member/logout">
                       		<div id="logout" class="dropdown-item-icon" style="color:gray;">&ensp;<i data-feather="log-out" width="17" height="17"></i>&nbsp;로그아웃</div>
                   		</a>
               		</div>              	
				 </c:when>
				 <c:otherwise>
				   <li><a href="${contextPath}/member/login">로그인</a></li>
				   <li><a href="${contextPath}/member/agree">회원가입</a></li> 
				 </c:otherwise>
			</c:choose>
		</ul>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</body>
</html>