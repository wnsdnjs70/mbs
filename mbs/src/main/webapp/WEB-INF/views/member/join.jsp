<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">

<script>

	$().ready(function() {
		
		var dupleId = 0;
		var dupleNickNm = 0;
		var isValidPw = false;
		
		$("#select_email").change(function(){
			$("#email2").val($("#select_email option:selected").val());
		});
		
		$("#idBtn").click(function(){
			
		    var memberId = $("#memberId").val();
		   	
		    if (memberId == ''){
		   		alert("아이디를 입력하세요");
		   		$("#memberId").focus();
		   		return;
		    }
		  
		    $.ajax({
		       type : "get",
		       url  : "${contextPath}/member/idDupleCheck",
		       data : {"checkItem" : memberId},
		       success : function (data){
		          if (data == 'false'){
					  alert("사용할 수 있는 아이디입니다.");
					  dupleId = 10;
		          }
		          else {
		          	  alert("사용할 수 없는 아이디입니다.");
		          	  dupleId = -10;
		          }
		       }
		    });
		 });	
		
		$("#nickNmBtn").click(function(){
			
		   	var nickName = $("#nickName").val();
	
		    if (nickName == ''){
		   		alert("닉네임을 입력하세요");
		   		$("#nickName").focus();
		   		return;
		    }
		   
		    $.ajax({
		       type : "get",
		       url  : "${contextPath}/member/idDupleCheck",
		       data : {"checkItem" : nickName},
		       success : function (data){
		          if (data == 'false'){
					  alert("사용할 수 있는 닉네임입니다.");
					  dupleNickNm = 10;
		          }
		          else {
		          	  alert("사용할 수 없는 닉네임입니다.");
		          	  dupleNickNm = -10;
		          }
		       }
		    });
		 });
		
		$("#pw1").blur(function(){
			var pw = $("#pw1").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

			if(pw.length < 8 || pw.length > 20){
				$("#target1").text("8~20자 이내로 입력해주세요.");
				return false;
			}
			else if(pw.search(/\s/) != -1){
				$("#target1").text("공백 없이 입력해주세요.");
				return false;
			}
			else if(num < 0 || eng < 0 || spe < 0 ){
				$("#target1").text("영문,숫자,특수문자를 혼합해주세요.");
			  	return false;
			 }
			else {
				$("#target1").text("");
				isValidPw = true;
			    return true;
			 }
		});
		
		$("#pw2").blur(function(){
			var pw1 = $("#pw1").val();
			var pw2 = $("#pw2").val();

			if(pw1 != pw2){
				$("#target2").text("비밀번호가 다릅니다.");
			 	return false;
			 }
			else{
				$("#target2").text("");
			}
		});
		
		$("#joinForm").submit(function(){
			if(dupleId == 0){
				alert("아이디 중복확인을 해주세요.");
				return false;
			}
			else if(dupleNickNm == 0){
				alert("닉네임 중복확인을 해주세요.");
				return false;
			}
			else if(dupleId < 0){
				alert("사용할 수 없는 아이디입니다.");
				return false;
			}
			else if(dupleNickNm < 0){
				alert("사용할 수 없는 닉네임입니다.");
				return false;
			}
			else if(!isValidPw){
				alert("유효한 비밀번호가 아닙니다.");
				return false;
			}
		});
	});	

	function checkValidation(){
		var isValidate = true;
	
		var memberId = $("#memberId").val();
		var nickName = $("#nickName").val();
		var pw1 = $("#pw1").val();
		var pw2 = $("#pw2").val();
		var name = $("#memberName").val();
		var hp1 = $("#hp1").val();
		var hp2 = $("#hp2").val();
		var hp3 = $("#hp3").val();
		var email1 = $("#email1").val();
		var email2 = $("#email2").val();
		var intGu1 = $("#intGu1").val();
		var intGu2 = $("#intGu2").val();
		
		if(memberId == ""){
			alert("아이디를 입력하세요.");
			$("#memberId").focus();
			return false;
		}
		if(nickName == ""){
			alert("닉네임을 입력하세요.");
			$("#nickName").focus();
			return false;
		}
		if(pw1 == "" || pw2 == ""){
			alert("비밀번호를 입력하세요.");
			$("#pw1").focus();
			return false;
		}
		if(pw1 != pw2){
			alert("비밀번호가 다릅니다.");
			$("#pw1").focus();
			return false;
		}
		if(name == ""){
			alert("이름를 입력하세요.");
			$("#memberName").focus();
			return false;
		}
		if(hp1 == "" || hp2 == "" || hp3 == ""){
			alert("핸드폰 번호를 확인하세요.");
			$("#hp2").focus();
			return false;
		}
		if(email1 == "" || email2 == ""){
			alert("이메일을 확인하세요.");
			$("#email1").focus();
			return false;
		}
		if(intGu1 == intGu2){
			alert("서로 다른 관심지역을 선택하세요.");
			return false;
		}
		
		return isValidate;
	}
</script>

<style>
	td:first-child {
		text-align: center;
		font-weight: bold;
	}
</style>
</head>
<body>
	<br>
	<span style="font-size:xx-large; text-align: center; width:700px;"><h1>회원가입</h1></span><br>
	<form action="${contextPath}/member/join" method="post" style="padding-left:150px;" id="joinForm" onsubmit="return checkValidation();">
	<table class="table table-bordered table-hover" style="width:700px;">
		<colgroup>
			<col width="20%" >
			<col width="80%">
		</colgroup>
		<tr>
			<td>
				<label for="memberId">아이디</label>
			</td>
			<td>
	            <input type="text" class="form-control" style="display:inline; width:300px;" 
	            	name="memberId"  id="memberId" maxlength="15" placeholder="아이디를 입력하세요." />&emsp;
	            <input type="button" id="idBtn" class="btn btn-outline-primary btn-sm" value="중복확인" />
	        </td>
	    </tr>
		<tr>
			<td>
				<label for="nickName">닉네임</label>
			</td>
			<td>
	            <input type="text" class="form-control" style="display:inline; width:300px;" 
	            	name="nickName"  id="nickName" maxlength="15" placeholder="한글만 입력 가능합니다." />&emsp;
	            <input type="button" id="nickNmBtn" class="btn btn-outline-primary btn-sm" value="중복확인" />
	        </td>
	    </tr>
        <tr>
	        <td>
	        	 <label class="small mb-1" for="memberPw">비밀번호</label>
	        </td>
	        <td>
	        	<input class="form-control" id="pw1" name="memberPw" type="password" placeholder="8자 이상의 영문자/숫자/특수문자" style="width:300px;"/>
	        	<span id="target1" style="color:red; font-size: small;"></span>
	        </td>
        </tr>
        <tr>
	        <td>
	        	 <label class="small mb-1">비밀번호 확인</label>
	        </td>
	        <td>
	        	<input class="form-control" id="pw2" type="password" placeholder="8자 이상의 영문자/숫자/특수문자" style="width:300px;"/>
	        	<span id="target2" style="color:red; font-size: small;"></span>
	        </td>
        </tr>         
        <tr>
	        <td>
	        	<label class="small mb-1" for="memberName">이름</label>
	        </td>
	        <td>
	        	<input type="text" class="form-control" name="memberName"  id="memberName" maxlength="15" placeholder="이름을 입력하세요." style="width:300px;"/>
	        </td>
        </tr>                
	    <tr>
	        <td>
	        	<label for="g1">성별</label>
	        </td>
	        <td>
	        	<input class="custom-control-input" type="radio" id="g1" name="memberGender" value="남" checked />
				<label class="custom-control-label" for="g1">남성</label>&emsp;&emsp;&emsp;
				<input class="custom-control-input" type="radio" id="g2" name="memberGender" value="여" />
				<label class="custom-control-label" for="g2">여성</label>
	        </td>
        </tr>                              
        <tr>
	        <td>
	        	<label class="small mb-1" for="memberBirthY">생년월일</label>
	        </td>
	        <td>
                <select class="form-control" id="memberBirthY" name="memberBirthY" style="display:inline; width:70px; padding:0" >
				<c:forEach var="year" begin="1" end="100">
					<c:choose>
						<c:when test="${year==80}">
							<option value="${1921+year}" selected>${ 1921+year}</option>
						</c:when>
						<c:otherwise>
							<option value="${1921+year}">${ 1921+year}</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				</select> 년 
				<select class="form-control" name="memberBirthM" style="display:inline; width:50px; padding:0">
				  <c:forEach var="month" begin="1" end="12">
				    <c:choose>
				        <c:when test="${month==5}">
						   <option value="${month}" selected>${month }</option>
						</c:when>
						<c:otherwise>
						  <option value="${month}">${month}</option>
						</c:otherwise>
					</c:choose>
				  </c:forEach>
				</select> 월  
				<select class="form-control" name="memberBirthD" style="display:inline; width:50px; padding:0">
				<c:forEach var="day" begin="1" end="31">
				   <c:choose>
					    <c:when test="${day==10}">
						   <option value="${day}" selected>${day}</option>
						</c:when>
						<c:otherwise>
						  <option value="${day}">${day}</option>
						</c:otherwise>
					</c:choose>
				 </c:forEach>
				</select> 일 &nbsp; 
	        </td>
        </tr>                                                
        <tr>
	        <td>
	        	<label class="small mb-1" for="hp1">핸드폰 번호</label>
	        </td>
	        <td>
	        	<input class="form-control"  size="10px"  type="text" id="hp1" name="hp1" value="010" maxlength="3" style="display:inline; width:40px; padding:0; text-align:center;"> - 
				<input class="form-control"  size="10px"  type="text" id="hp2" name="hp2" maxlength="4" style="display:inline; width:50px; padding:0; text-align:center;"> - 
				<input class="form-control"  size="10px"  type="text" id="hp3" name="hp3" maxlength="4" style="display:inline; width:50px; padding:0; text-align:center;"><br><br>
				<input class="custom-control-input" id="smsYn" type="checkbox" name="smsYn"  value="Y" checked/>
                <label for="smsYn" >MBS에서 발송하는 SMS 소식을 수신합니다.</label>
	        </td>
        </tr>                         
        <tr>
	        <td>
	        	<label class="small mb-1" for="email1">이메일</label>
	        </td>
	        <td>
	        	<input class="form-control"  size="10px"  type="text" id="email1" name="email1" style="display:inline; width:100px; padding:0"> @ 
					<input class="form-control"  size="10px"  type="text" id="email2" name="email2" style="display:inline; width:100px; padding:0">
					<select class="form-control" id="select_email" name="email3" style="display:inline; width:100px; padding:0">
						 <option value="none" selected>직접입력</option>
						 <option value="naver.com">naver.com</option>
						 <option value="gmail.com">gmail.com</option>
						 <option value="nate.com">nate.com</option>
						 <option value="daum.net">daum.net</option>
						 <option value="hanmail.net">hanmail.net</option>
					</select><br><br>
                    <input class="custom-control-input" id="emailYn" type="checkbox" name="emailYn"  value="Y" checked/>
                    <label for="emailYn">MBS에서 발송하는 E-mail을 수신합니다.</label>
	        </td>
        </tr>                              
        <tr>
	        <td>
	        	<label class="small mb-1" for="intArea">관심지역1</label>
	        </td>
	        <td>
	        	<select class="form-control" id="intCity1" name="intCity1" style="display:inline; width:60px; padding:0">
					<option selected value="서울">서울</option>
				</select> 시 
	        	<select class="form-control" id="intGu1" name="intGu1" style="display:inline; width:60px; padding:0">
					<option value="강남" selected>강남</option>
					<option value="강동">강동</option>
					<option value="강북">강북</option>
					<option value="강서">강서</option>
					<option value="관악">관악</option>
					<option value="광진">광진</option>
					<option value="구로">구로</option>
					<option value="금천">금천</option>
					<option value="노원">노원</option>
					<option value="도봉">도봉</option>
					<option value="동대문">동대문</option>
					<option value="동작">동작</option>
					<option value="마포">마포</option>
					<option value="서대문">서대문</option>
					<option value="서초">서초</option>
					<option value="성동">성동</option>
					<option value="성북">성북</option>
					<option value="송파">송파</option>
					<option value="양천">양천</option>
					<option value="영등포">영등포</option>
					<option value="용산">용산</option>
					<option value="은평">은평</option>
					<option value="종로">종로</option>
					<option value="중">중</option>
					<option value="중랑">중랑</option>
				</select> 구 
	        </td>
        </tr>                              
        <tr>
	        <td>
	        	<label class="small mb-1" for="intArea">관심지역2</label>
	        </td>
	        <td>
	        	<select class="form-control" id="intCity1" name="intCity2" style="display:inline; width:60px; padding:0">
					<option selected value="서울">서울</option>
				</select> 시 
	        	<select class="form-control" id="intGu2" name="intGu2" style="display:inline; width:60px; padding:0">
					<option value="강남">강남</option>
					<option value="강동">강동</option>
					<option value="강북">강북</option>
					<option value="강서">강서</option>
					<option value="관악">관악</option>
					<option value="광진">광진</option>
					<option value="구로">구로</option>
					<option value="금천">금천</option>
					<option value="노원">노원</option>
					<option value="도봉">도봉</option>
					<option value="동대문">동대문</option>
					<option value="동작">동작</option>
					<option value="마포" selected>마포</option>
					<option value="서대문">서대문</option>
					<option value="서초">서초</option>
					<option value="성동">성동</option>
					<option value="성북">성북</option>
					<option value="송파">송파</option>
					<option value="양천">양천</option>
					<option value="영등포">영등포</option>
					<option value="용산">용산</option>
					<option value="은평">은평</option>
					<option value="종로">종로</option>
					<option value="중">중</option>
					<option value="중랑">중랑</option>
				</select> 구 
	        </td>
        </tr>                              
        <tr>
	        <td colspan="2">
	        	<input type="submit" id="submitBtn" value="회원가입하기" class="btn btn-primary btn-block" >
	        </td>
	    </tr>
	    <tr>
	        <td colspan="2" align="center">
	        	이미 회원가입이 되어있다면 ? <a href="${contextPath}/member/login"><strong>로그인하기</strong></a>
	        </td>
        </tr>                            
     </table>
     <input type="hidden" name="memberInstagram" value="#">
     <input type="hidden" name="memberFacebook" value="#">
     <input type="hidden" name="allAgree" value="${memberDto.allAgree }">
     <input type="hidden" name="serviceAgree" value="${memberDto.serviceAgree }">
     <input type="hidden" name="infoAgree" value="${memberDto.infoAgree }">
     <input type="hidden" name="expirAgree" value="${memberDto.expirAgree }">
     <input type="hidden" name="promAgree" value="${memberDto.promAgree }">
     </form>
</body>
</html>