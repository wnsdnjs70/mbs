<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script>  
<style>

#meetDate, #meetTime{
  font-size:15px;
  height:30px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #CCC;
  color: #555;
  box-sizing: border-box;
  outline: none;
}

#placeAdd, #detailAdd{
  font-size:15px;
  width: 400px;
  height:30px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #CCC;
  color: #555;
  box-sizing: border-box;
  outline: none;
}

#url{
  font-size:15px;
  width: 850px;
  height:30px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #CCC;
  color: #555;
  box-sizing: border-box;
  outline: none;
   &:focus {
    outline: none;    
  }
}

.inputTitle {
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #CCC;
  color: #555;
  box-sizing: border-box;
  outline: none;
  font-size : 40px;
  height: 80px;
  width: 1000px;
  &:focus {
    outline: none;    
  }
}

select{
	font-size:15px;
	width:90px;
	height:30px;
}

table tr{
	height: 50px;
}
table th{
	text-align: left;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>

<script>
	$().ready(function(){
		
		$("#online").click(function(){
			$("#placeAdd").prop("disabled",true);
			$("#detailAdd").prop("disabled",true);
			$("#placeBtn").prop("disabled",true);
			$("#placeNego").prop("disabled",true);
		});
		$("#offline").click(function(){
			$("#placeAdd").prop("disabled",false);
			$("#detailAdd").prop("disabled",false);
			$("#placeBtn").prop("disabled",false);
			$("#placeNego").prop("disabled",false);
		});
		
		$("#plus").click(function(){
			var value = Number($("#peopleQty").val());
			$("#peopleQty").val(value+1);
			
		});
		$("#minus").click(function(){
			var value = Number($("#peopleQty").val());
			if(value>=2) $("#peopleQty").val(value-1);
			
		});
		
		
	});
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	
	            var fullRoadAddr = data.roadAddress; 
	            var extraRoadAddr = ''; 
	
	            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            if (data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            if (extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	            if (fullRoadAddr !== ''){
	                fullRoadAddr += extraRoadAddr;
	            }
	            
				if(fullRoadAddr != ""){
		            document.getElementById('placeAdd').value = fullRoadAddr;					
				}
				else if(data.jibunAddress != ""){
		            document.getElementById('placeAdd').value = data.jibunAddress;					
				}	          
	        }
	    }).open();
	}
	
	function cancel(){

		if (confirm("정말 모집 글 작성을 취소하시겠습니까?") == true){    //확인

		    location.href="${contextPath}/main";

		}else{   //취소

		    return;

		}

	}
	
	function checkValidation(){
		var isValidate = true;
	
		var title = $("#boardTitle").val();
		var date = $("#meetDate").val();
		date = new Date(date);
		var time = $("#meetTime").val();
		var place = $("#placeAdd").val();
		var url = $("#url").val();
		var isOffline = $("#offline").prop("checked");
		var content = CKEDITOR.instances['boardContent'].getData()
		var curDate = new Date();
		
		if(title == ""){
			alert("제목을 입력하세요.");
			$("#boardTitle").focus();
			return false;
		}
		if(date == null){
			alert("만남 날짜를 입력하세요.");
			$("#meetDate").focus();
			return false;
		}
		if(date < curDate){
			alert("과거로는 돌아갈 수 없어요. ㅠㅠ");
			$("#meetDate").focus();
			return false;
		}
		if(time == null){
			alert("만남 시간을 입력하세요.");
			$("#meetTime").focus();
			return false;
		}
		if(place == "" && isOffline){
			alert("만남 장소를 입력하세요.");
			$("#placeAdd").focus();
			return false;
		}
		if(url == ""){
			alert("오픈 채팅방 url을 입력하세요.");
			$("#url").focus();
			return false;
		}
		if(content == ""){
			alert("만남에 대해서 설명해주세요.");
			$("#boardContent").focus();
			return false;
		}
				
		return isValidate;
	}
	
	function changeItem(){
		var category0 = ["독서모임","언어스터디","자격증스터디","면접스터디","주식스터디","코인스터디","부동산스터디","프로젝트","기타"];
		var category1 = ["뮤지컬","오페라","연주회","연극","공연",,"경기관람","영화","전시","사진전","페스티벌","콘서트","파티","버스킹","쇼핑","기타"];
		var category2 = ["댄스모임","댄스팀","라틴댄스","사교댄스","방송댄스","힙합댄스","스트릿댄스","재즈댄스","밸리댄스","스윙댄스","현대무용","한국무용","발레","기타"];
		var category3 = ["맛집탐방","카페탐방","번개모임","혼밥 싫어요","술 한잔","기타"];
		var category4 = ["미술/그림","캘리그래피","플라워아트","캔들/디퓨저","비누/화장품","가죽공예","가구공예","목공예","도자/점토 공예","메이크업","네일아트","자수/뜨개질","키덜트/프라모델","기타"];
		var category5 = ["국내여행","해외여행","캠핑","글램핑","차박","호캉스","백패킹","기타"];
		var category6 = ["미팅","데이팅","모임","기혼","돌싱","기타"];
		var category7 = ["등산","산책/트레킹","런닝/조깅","자전거","모터스포츠","요가/필라테스","헬스/크로스핏","다이어트","수영/서핑/수상스포츠","스키/보드/동계","복싱/무술","축구/풋살","농구","야구",
						 "당구/포켓볼","탁구","족구","배구","테니스/스쿼시","배드민턴","볼링","골프","익스트림","클라이밍","기타"];
		var category8 = ["다트","보드게임","방탈출","두뇌심리게임","온라인게임","모바일게임","단체놀이","바둑","마술","타로카드","기타"];
		var category9 = ["노래/보컬","기타/베이스","드럼","피아노","바이올린","플룻","밴드/합주","작사/작곡","인디음악","랩/힙합","DJ","클래식","재즈","락/메탈","일렉트로닉","국악/사물놀이","기타"];
		var category10 = ["분양","입양","찾아요","모임","산책","기타"];
		var category11 = ["기타"];
	
		var categoryL = $("#categoryL").val();
		 
		var changeItem;
		  
		if(categoryL == "독서/스터디"){
		  changeItem = category0;
		}
		else if(categoryL == "문화/공연"){
		  changeItem = category1;
		}
		else if(categoryL == "댄스/무용"){
		  changeItem =  category2;
		}
		else if(categoryL == "밥/술"){
		  changeItem = category3;
		}
		else if(categoryL == "공예/만들기"){
		  changeItem = category4;
		}
		else if(categoryL == "여행"){
		  changeItem =  category5;
		}
		else if(categoryL == "사교/인맥"){
		  changeItem = category6;
		}
		else if(categoryL == "운동/스포츠"){
		  changeItem =  category7;
		}
		else if(categoryL == "게임/오락"){
		  changeItem = category8;
		}
		else if(categoryL == "음악/악기"){
		  changeItem =  category9;
		}
		else if(categoryL == "반려동물"){
		  changeItem =  category10;
		}
		else if(categoryL == "자유주제"){
		  changeItem =  category11;
		}
		 
		$('#categoryS').empty();
		 console.log(changeItem.length);
		for(var count = 0; count < changeItem.length; count++){                
		                var option = $("<option value='" + changeItem[count] + "'>" + changeItem[count] +"</option>");
		                $('#categoryS').append(option);
		            }


	}
</script>
</head>
<body>
	<form action="${contextPath }/board/write" method="post" onsubmit="return checkValidation();">
	<br><br>
	<p><input type="text" class="inputTitle" placeholder="제목을 입력하세요." name="boardTitle" id="boardTitle"></p><br>
	<table style="width:1000px; font-size : 20px;">
		<colgroup>
			<col width="15%" >
			<col width="85%">
		</colgroup>
		<tr>
			<th>카테고리 : </th>
			<td>
				<select id="categoryL" name="categoryL" style="text-align:center;" onchange="changeItem()"> 
					<option value="독서/스터디"  selected>독서/스터디</option>
					<option value="문화/공연" >문화/공연</option>
					<option value="댄스/무용" >댄스/무용</option>
					<option value="밥/술" >밥/술</option>
					<option value="공예/만들기" >공예/만들기</option>
					<option value="여행" >여행</option>
					<option value="사교/인맥" >사교/인맥</option>
					<option value="운동/스포츠" >운동/스포츠</option>
					<option value="게임/오락" >게임/오락</option>
					<option value="음악/악기" >음악/악기</option>
					<option value="반려동물" >반려동물</option>
					<option value="기타" >기타</option>
				</select>
				&nbsp;>&nbsp;
				<select id="categoryS" name="categoryS"  style="text-align:center;"> 
					<option value="독서모임" >독서모임</option>
					<option value="언어스터디" >언어스터디</option>
					<option value="자격증스터디" >자격증스터디</option>
					<option value="면접스터디" >면접스터디</option>
					<option value="주식스터디" >주식스터디</option>
					<option value="코인스터디" >코인스터디</option>
					<option value="부동산스터디" >부동산스터디</option>
					<option value="프로젝트" >프로젝트</option>
					<option value="기타" >기타</option>
				</select>
			</td>
		</tr>
		<tr >
			<th>모집 인원 : </th>
			<td>
				<div>
				  <input type="button" id="minus" value="-">
				  <input type="number" name="peopleQty" id="peopleQty" value="1" min="1" max="20" style="width:50px; height:30px; text-align:center;">
				  <input type="button" id="plus" value="+"><span style="font-size:medium;">&ensp;명</span>
				</div>
			</td>
		</tr>
		<tr>
			<th>날짜 및 시간 : </th>
			<td>
				<input type="date" id="meetDate" name="meetDate" required>
				<input type="checkbox" name="dateNego"> <span style="font-size:small;">&ensp;협의 가능</span>&emsp;&emsp;&emsp;
				<input type="time" id="meetTime" name="meetTime">
				<input type="checkbox" name="timeNego"> <span style="font-size:small;">&ensp;협의 가능</span>
			</td>
		</tr>
		<tr>
			<th>만남 장소 : </th>
			<td>
				<input type="radio" id="offline" name="onOf" checked> <span style="font-size:medium;">오프라인</span>&emsp;&emsp;
				<input type="radio" id="online" name="onOf"> <span style="font-size:medium;">온라인</span>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<div>
					<input type="text" placeholder="주소를 입력하세요." id="placeAdd" name="placeAdd">&ensp;
					<input type="button" id="placeBtn" class="btn btn-outline-primary btn-sm" onclick="javascript:execDaumPostcode()" value="검색"><br><br>
					<input type="text" placeholder="(선택) 상세 주소를 입력하세요." id="detailAdd" name="detailAdd"> &ensp;
					<input type="checkbox" id="placeNego" name="placeNego"><span style="font-size:small;"> 협의 가능</span>
				</div><br>
			</td>
		</tr>
		<tr>
			<th>오픈 채팅 : </th>
			<td>
				<input type="text" placeholder="카카오톡 오픈 채팅방 url을 입력하세요." name="url" id="url">
			</td>
		</tr>
		<tr><th>만남 설명</th></tr>
		<tr>
			<td colspan="2">
				<textarea rows="10" cols="10" name="boardContent" ></textarea>
			    <script>CKEDITOR.replace('boardContent', {height:500});</script>				
			</td>
		</tr>
		<tr>
			<td colspan="2" >
				<span style="float:right;">
					<input type="button" style="width:150px; height:35px;"class="btn btn-outline-primary btn-sm" value="취소하기" onclick="cancel();">
					<input type="submit" style="width:150px; height:35px;"class="btn btn-outline-primary btn-sm" value="모집하기">
				</span>
			</td>
		</tr>
	</table>
	<input type="hidden" name="nickName" value="${memberInfo }">
	<input type="hidden" name="reply" value="0">
	<input type="hidden" name="views" value="0">
	<input type="hidden" name="interest" value="0">
	</form>
	

</body>
</html>