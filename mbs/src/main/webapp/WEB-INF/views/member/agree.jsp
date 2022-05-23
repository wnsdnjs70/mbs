<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">

<script>
	$().ready(function() {
		
		
		$("#allAgree").click(function(){
		
			if($("#allAgree").prop("checked")){
				$("#serviceAgree").prop("checked",true);
				$("#infoAgree").prop("checked",true);
				$("#expirAgree").prop("checked",true);
				$("#promAgree").prop("checked",true);				
			}
			else{				
				$("#serviceAgree").prop("checked",false);
				$("#infoAgree").prop("checked",false);
				$("#expirAgree").prop("checked",false);
				$("#promAgree").prop("checked",false);
			}
			
		});
		
		$("#submit").click(function(){
			
			if(!$("#serviceAgree").prop("checked")){
				alert("통합 서비스 이용 약관에 동의하세요.");
			}
			else if(!$("#infoAgree").prop("checked")){
				alert("개인정보 수집 및 이용 약관에 동의하세요.");
				
			}

		});
		
		$("#form1").submit(function(){
			
			if(!$("#serviceAgree").prop("checked") || !$("#infoAgree").prop("checked")){
				return false;
			}
			
		});
			
		
	});
</script>
</head>
<body>
	<form id="form1" style="float: left; margin-left: 160px; color:black;" action="${contextPath }/member/agree" method="post">
		<br><span style="font-size:xx-large; text-align: center;"><h1>약관동의</h1></span><hr><br>
		<p>
			<input type="checkbox" name="allAgree" id="allAgree" style="zoom:1.5;">
			통합 서비스 이용약관, 개인정보 수집 및 이용,<br>
			&ensp;&ensp;유효기간 5년(선택),프로모션 정보 수신(선택) 에 <span style="color:blue;">모두 동의</span>합니다.
		</p><br>
		<div class="card border-secondary" style="max-width: 40rem;">
			<div class="card-header" style="height:30px;">
				<input type="checkbox" id="serviceAgree" name="serviceAgree" style="zoom:1.5;"> 통합 서비스 이용약관 동의
			</div>
			<div class="card-body">
				<p class="card-text">
					<textarea rows="5" cols="65" style="border: none;">
[제1장 총칙]

제1조 (목적)
이 약관은 (주)넥슨코리아(이하 "회사"라고 함)가 제공하는 게임 및 제반 서비스의 이용과 관련하여 회사와 회원의 권리, 의무 및 기타 필요한 사항을 규정함을 목적으로 합니다.

제2조 (용어의 정의)
① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. “회원”이라 함은 이 약관에 동의하여 회사와 게임서비스 등에 대한 이용계약을 체결하고 회사에서 제공하는 모든 게임서비스 등을 이용할 수 있는 권한을 획득한 자를 의미합니다.
2. “플랫폼”이라 함은 콘텐츠를 다운로드 받거나 설치하여 사용할 수 있는 PC, 휴대폰, 태블릿, 휴대용 게임기, 콘솔 게임기, VR 등의 기기를 의미합니다.
3 “게임서비스 등”이라 함은 회사가 회원에게 플랫폼을 통하여 제공하는 게임 및 이에 부수된 제반 서비스를 의미합니다.
4. “콘텐츠”라 함은 회사가 게임서비스 등의 제공과 관련하여 디지털 방식으로 제작된 유료 또는 무료의 내용물 일체(캐릭터, 게임머니, 아이템 등)를 의미합니다.
5. “넥슨 ID” 또는 “계정”이라 함은 회원의 식별과 게임서비스 등의 이용을 위하여 회원이 선정하고 회사가 승인하는, 문자, 특수문자, 숫자 등의 조합 또는 기존에 회원이 사용하고 있던 타 소셜 서비스의 로그인 계정을 의미합니다.
6. “게스트 ID”라 함은 회사에서 제공하는 간소화된 이용신청 절차를 통해 회원의 식별절차 없이 임시로 부여되는 계정을 의미합니다.
7. “계정정보”라 함은 회원의 계정, 비밀번호, 성명 등 회원이 회사에 제공한 개인정보, 기기정보, 게임 이용정보(캐릭터 정보, 아이템, 레벨 등), 이용대금 결제정보 등 계정 또는 넥슨 ID에 대한 일체의 정보를 의미합니다.
8. “게임 ID”라 함은 넥슨 ID 또는 계정에 수반하여 특정 게임서비스 등에서만 사용하기 위해 회원이 별도로 생성하고 회사가 승인하는 문자, 특수문자, 숫자 등의 조합을 의미합니다.
9. “비밀번호”라 함은 회원이 자신의 계정을 사용하고, 계정에 대한 접근 권한을 통제하며, 자신의 정보 및 권익보호를 위해 스스로 선정하여 비밀로 관리하는 문자, 특수문자, 숫자 등의 조합을 의미합니다.
10. “게시물”이라 함은 회원이 게임서비스 등을 이용함에 있어 회원이 게시한 문자, 문서, 그림, 음성, 영상 또는 이들의 조합으로 이루어진 정보를 의미합니다.
11. “회원탈퇴”라 함은 회원이 회사와의 게임서비스 등에 대한 이용계약을 해지하는 것을 의미합니다.
② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관련 법령 및 운영정책에서 정하는 바에 따릅니다. 관련 법령과 운영정책에서 정하지 않는 것은 일반적인 상관례에 따릅니다.
제3조 (회사정보 등의 제공)
회사는 다음 각 호의 사항을 회원이 알아보기 쉽도록 홈페이지(www.nexon.com, 이하 “홈페이지”)나 게임서비스 등 내에 표시합니다. 다만, 제6호와 제7호는 회원이 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

1. 상호 및 대표자의 성명
2. 영업소 소재지 주소(회원의 불만을 처리할 수 있는 곳의 주소를 포함한다)
3. 전화번호, 전자우편주소
4. 사업자 등록번호
5. 통신판매업 신고번호
6. 개인정보처리방침
7. 서비스 이용약관
제4조 (약관의 효력 및 적용과 변경)
① 회사는 이 약관의 내용을 회원이 알 수 있도록 회사에서 운영하는 홈페이지에 게시하거나 연결화면을 제공하는 방법으로 회원에게 공지합니다.
② 이 약관에 동의하고 회원 가입을 한 회원은 약관에 동의한 시점부터 동의한 약관의 적용을 받고 약관의 변경이 있을 경우에는 변경의 효력이 발생한 시점부터 변경된 약관의 적용을 받습니다. 이 약관에 동의하는 것은 정기적으로 홈페이지를 방문하여 약관의 변경 사항을 확인하는 것에 동의하는 것을 의미합니다.
③ 회사는 필요하다고 인정되는 경우 이 약관을 변경할 수 있습니다. 회사는 약관이 변경되는 경우에 변경된 약관의 내용과 시행일을 정하여, 그 시행일로부터 7일전 홈페이지 또는 게임서비스 내 화면을 통해 온라인으로 공시합니다. 다만, 이용자에게 불리하게 약관 내용을 변경하는 경우에는 시행일로부터 30일전 본문과 같은 방법 또는 회원이 회원 가입 시 등록한 전자우편으로 전송하는 방법으로 회원에게 고지합니다. 변경된 약관은 공시하거나 고지한 시행일로부터 효력이 발생합니다.
④ 회원은 변경된 약관에 대해 거부할 권리가 있습니다. 이 약관의 변경에 대해 이의가 있는 회원은 서비스 이용을 중단하고 회원탈퇴를 할 수 있습니다. 회원이 변경된 이용약관의 시행일 이후에도 서비스를 계속 이용하는 경우에는 변경된 약관에 동의한 것으로 봅니다.
제5조 (약관 외 준칙)
이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 회사가 정한 개별 서비스 이용약관, 운영정책 및 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「게임산업진흥에 관한 법률」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「콘텐츠산업 진흥법」, 「개인정보 보호법」 등 관련 법령이 적용됩니다.

제6조 (운영정책)
① 회사는 이 약관을 적용하기 위해 필요한 사항과 회원의 권익을 보호하고 게임세계 내 질서를 유지하기 위하여 이 약관에서 구체적인 범위를 정하여 위임한 사항을 별도 정책 (이하 “운영정책”)으로 정할 수 있습니다. 회원은 이 약관에 동의함으로써 각 게임서비스 및 기타 부가적인 서비스의 개별 운영정책의 적용을 받습니다.
② 회사는 운영정책의 내용을 회원이 알 수 있도록 홈페이지나 게임서비스 내 화면에 게시하거나 그 연결 화면을 제공하는 방법으로 회원에게 공지하여야 합니다.
③ 회원의 권리 또는 의무에 중대한 변경을 가져오거나 약관 내용을 변경하는 것과 동일한 효력이 발생하는 운영정책 개정의 경우에는 제4조 제3항의 절차에 따릅니다. 단, 운영정책 개정이 다음 각 호의 어느 하나에 해당하거나, 약관의 내용을 변경하는 것과 동일한 효력이 발생하는 경우가 아닌 경우에는 회사는 본 조 제2항의 방법으로 사전에 공지한 후 개정 운영정책을 적용합니다.
1. 약관에서 구체적으로 범위를 정하여 위임한 사항을 개정하는 경우
2. 회원의 권리·의무와 관련 없는 사항을 개정하는 경우
3. 운영정책의 내용을 약관에서 정한 내용과 근본적으로 다르지 않고 회원이 예측 가능한 범위 내에서 개정하는 경우

[제2장 개인정보 관리]
제7조 (개인정보의 보호 및 이용)
① 회사는 관련 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 회원 개인정보의 보호 및 이용에 대해서는 관련 법령 및 회사가 별도로 공지하는 개인정보처리방침에 따릅니다.
② 회사는 사전에 고지한 목적 외로 개인정보를 이용하지 않으며, 목적 달성 시 즉시 재생이 불가능한 방법으로 파기합니다.
③ 회사의 개인정보처리방침은 홈페이지나 개별 게임서비스 별 웹사이트에서 링크되어 있는 제3자 제공 서비스에 대해서는 적용되지 않습니다.
④ 회원의 선택 또는 서비스의 특성에 따라, 회원이 입력한 별명, 캐릭터 사진, 상태 정보 등 회원 스스로가 자신을 소개하는 내용이 다른 회원에게 공개될 수 있습니다.
⑤ 회원은 게임서비스 등의 이용을 위하여 자신의 개인정보를 성실히 관리해야 하며 개인정보의 변동 사항이 있을 경우 이를 변경해야 합니다. 회원의 개인정보 변경이 지연되거나 누락되어 발생하는 손해는 회원의 책임으로 합니다. 회사는 회원의 귀책사유로 인하여 유출된 개인정보에 대해서는 일체의 책임을 지지 않습니다.
[제3장 게임서비스 등 이용계약의 체결]
제8조 (이용신청 및 방법)
① 회사가 제공하는 게임서비스 등을 이용하고자 하는 자는 이 약관의 내용에 대한 동의와 함께 회사 홈페이지나 각 게임서비스 또는 플랫폼별 초기화면에서 제공하는 절차에 따라 회원가입 신청(이하 ‘이용신청’)을 하여야 합니다.
② 회원이 되고자 하는 자는 이용신청 시 회사에서 요구하는 제반 정보를 제공하여야 합니다. 단, 회원이 이용하고자 하는 플랫폼에 따라 회사가 요구하는 정보가 다를 수 있습니다.
③ 회원이 되고자 하는 자는 제1항의 이용신청 시 관련 법령에 따라 본인의 실제 정보를 기재하여야 합니다. 실명 또는 식별정보를 허위로 기재하거나 타인의 명의를 도용한 경우 이 약관에 의한 회원의 권리를 주장할 수 없고, 회사는 이용대금의 환급 없이 이용계약을 취소하거나 해지할 수 있습니다.
④ 회사와 회원 간 이용계약이 성립되면, 회사는 계정을 통해 회원에 대한 제반 관리 업무를 수행하며, 회원은 관련 법령, 이 약관 및 운영정책에 따라 게임서비스 등을 이용할 수 있습니다
⑤ 회사는 회원이 이용신청 시 제공한 정보에 따라 제공하는 게임서비스의 이용 범위, 시간 등에 차등을 둘 수 있습니다. 회사는 위와 같은 선택적 서비스의 제공이나 제공 중인 서비스의 범위 조정을 위하여 필요한 경우, 회원에게 추가 정보를 요청할 수 있습니다.
⑥ 회사는 청소년(만 18세 미만의 자로서 「초·중등교육법」 제2조의 규정에 의한 고등학교에 재학 중인 학생을 포함한다)이 이용신청을 할 경우에는 법정대리인의 동의를 요청할 수 있습니다.
⑦ 회원이 회사가 제3자와의 협력을 통해 제공하는 서비스를 이용할 경우, 회사나 제3자가 제공하는 별도의 서비스 이용약관에 대한 동의가 필요할 수 있습니다. 해당 서비스의 내용, 회사와 제3자 및 회원 간의 각 권리, 의무 등에 관한 사항은 해당 서비스에 대하여 회사나 제3자가 제공하는 별도의 약관, 운영정책 등에서 정하는 바에 따릅니다.
제9조 (이용신청에 대한 승낙과 제한)
① 회사는 회원이 되고자 하는 자가 실제 정보를 정확히 기재하여 이용신청을 한 경우 상당한 이유가 없는 한 회원이 되고자 하는 자의 이용신청을 승낙함을 원칙으로 합니다. 다만, 다음 각 호의 어느 하나에 해당하는 경우, 회사는 이용신청을 승낙하지 않거나, 승낙을 하였다 하더라도 사후에 그 승낙을 취소할 수 있습니다.
1. 이 약관 제8조나 제11조 제1항에 위반하여 이용신청을 하는 경우
2. 이 약관 제8조 제6항에 따른 법정대리인의 동의를 얻지 아니하거나 동의를 얻었음을 확인할 수 없는 경우
3. 이 약관 제25조 제4항에 의거, 재가입이 제한된 회원에 해당되는 경우
4. 회원탈퇴 후 1개월 이내에 회원 가입을 재신청하려는 경우
5. 회사가 게임서비스를 제공하지 않는 국가 또는 지역에서 게임서비스 등을 이용하는 경우 또는 비정상적이거나 우회적인 방법을 통해 게임서비스 등을 이용하는 경우
6. 「게임산업진흥에 관한 법률」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 등 관련 법령 등에서 금지하는 행위를 할 목적으로 이용신청을 하는 경우
7. 회사가 제공하는 플랫폼 별 이용 가능한 넥슨 ID 및 게임 ID의 보유제한 혹은 전체 ID 보유제한을 초과하는 경우
8. 부정한 용도 또는 영리를 추구할 목적으로 게임서비스 등을 이용하고자 하는 경우
9. 그 밖에 위 각 호에 준하는 사유로서 승낙이 부적절하다고 판단되는 경우
② 회사는 다음 각 호의 어느 하나에 해당하는 경우에는 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.
1. 회사의 설비에 여유가 없거나 기술적 장애가 있는 경우
2. 회원이 되고자 하는 자가 회사가 제공하는 양식 또는 절차에 따라 이용신청을 하지 않은 경우
3. 회원이 되고자 하는 자가 관련 법령에 따라 이용신청에 필수적인 절차를 완료하지 않은 경우
4. 그 밖에 위 각 호에 준하는 사유로서, 이용신청에 대한 승낙이 곤란한 경우
[제4장 계약 당사자의 의무]
제10조 (회사의 의무)
① 회사는 관련 법령을 준수하고, 이 약관에서 정하는 권리의 행사 및 의무의 이행을 신의에 따라 성실하게 합니다.
② 회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보(신용정보 포함) 보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다.
③ 회사는 관련 법령, 이 약관 및 개인정보처리방침에서 정한 경우를 제외하고는, 회원의 개인정보가 제3자에게 공개 또는 제공되지 않도록 합니다.
④ 회사는 설비에 장애가 생기거나 데이터 등이 멸실⋅훼손되는 등으로 서비스 제공에 장애가 발생한 때에는 천재지변, 비상사태, 현재의 기술로는 해결이 불가능한 장애나 결함 등 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구하도록 최선의 노력을 다합니다.
⑤ 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정될 경우에는 즉시 처리하기 위해 노력하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 회원이 기입한 전화번호나 전자우편으로 그 지연사유와 처리일정을 통보할 수 있습니다.
제11조 (회원의 의무)
① 회원은 회사가 제공하는 게임서비스 등을 이용함에 있어 다음 각 호의 행위 또는 다음 각호에 해당하는 내용을 목적으로 하거나 의도하는 행위를 하여서는 안됩니다.
1. 이용신청이나 회원 정보 변경 시 실명이 아닌 정보 또는 다른 사람의 정보를 사용하거나, 허위 사실을 기재하는 행위
2. 다른 회원의 계정, 게임 ID 및 비밀번호를 도용하거나 부정하게 사용하는 행위
3. 회사가 제공하지 않는 게임서비스나 비정상적인 방법을 통해 게임서비스 등 내 데이터{ID, 캐릭터, 아이템, 게임머니 등}를 유상으로 처분(양도, 매매 등) 증여 또는 타 게임서비스 등의 데이터와 교환하거나 권리의 객체(담보제공, 대여 등)로 하는 행위
4. 회사가 제공하는 게임서비스 등 또는 이를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제, 유통하거나 상업적으로 이용하는 행위
5. 회사의 게임서비스 등을 이용하여, 타인을 기망하여 자기 또는 제3자에게 재산상의 이익을 발생시키는 행위
6. 타인의 명예를 훼손하거나 타인에게 재산상 손해를 가하는 행위
7. 명의자의 동의나 승낙 없이 신용카드⋅휴대폰⋅은행 계좌 등 결제 수단을 무단으로 도용하여 요금이나 이용대금을 결제하는 행위
8. 회사의 지식재산권이나 제3자의 지식재산권, 초상권 등의 권리를 침해하는 행위
9. 회사의 승인을 받지 않고 다른 회원의 개인정보를 수집, 저장, 유포 또는 게시하는 행위
10. 게임서비스 등 내 프로그램의 버그를 악용하는 행위
11. 회사의 게임서비스 등 운영을 고의로 방해하거나, 이의 안정적 운영을 방해할 수 있는 정보 및 다른 회원의 명시적인 수신거부 의사에 반해 광고성 정보를 전송하는 행위
12. 다른 회원으로 가장하는 행위 또는 다른 회원과의 관계를 허위로 명시하는 행위
13. 음란, 저속한 정보를 교류, 게재하거나 음란사이트를 연결(링크)하는 행위 또는 승인되지 않은 광고, 홍보물 등을 게재하는 행위
14. 게임서비스 등을 사행성이 있는 방법 또는 기타 불건전한 방법으로 이용하는 행위
15. 회사의 동의 없이 게임서비스 등을 영리, 영업, 광고, 홍보, 정치활동, 선거운동 등 본래의 용도 이외로 이용하는 행위
16. 수치심이나 혐오감 또는 공포심을 일으키는 말, 음향, 글, 화상 또는 영상을 다른 회원에게 전송하는 행위
17. 게임서비스 등에 게시된 기존 정보를 무단 변경하는 행위
18. 관련 법령에 의하여 그 사용 등이 금지되는 정보를 사용하거나, 회사의 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 바이러스, 소스코드 등을 포함하고 있는 정보 또는 자료를 사용, 전송, 게시, 유포하는 행위
19. 회사로부터 별도의 권한을 부여 받지 않고 게임서비스 등을 변경하거나, 게임서비스 등에 다른 프로그램을 추가⋅삽입하거나, 회사의 서버를 해킹⋅역설계하거나, 회사 프로그램의 소스코드나 데이터를 유출⋅변경하거나, 회사와 별도의 서버를 구축⋅운영하거나, 회사 웹사이트의 일부분을 임의로 변경⋅도용하는 행위
20. 회사의 직원이나 운영자를 가장하거나 사칭하여 또는 다른 회원의 명의를 도용하여 글을 게시하거나 메일을 발송하는 행위
21. 위 제1호 내지 제20호의 행위를 유도하거나 광고하는 행위
22. 그 밖에 관련 법령에 위반되거나 위 각 호에 준하는 것으로서 선량한 풍속 기타 사회통념에 반하는 행위
② 회원이 위 제1항 각 호를 위반하거나 이와 연관되어 발생한 경제적 손실 및 법적 조치 등에 관해서는 전적으로 회원의 책임으로 하며, 회사는 이에 대해 일체 책임을 지지 않습니다. 더하여 회원이 위와 같은 행위를 함으로써 회사에 손해가 발생한 경우, 회원은 회사에게 일체의 손해를 배상할 의무가 있습니다.
③ 회원은 이 약관의 규정, 운영정책 및 회사가 게임서비스 등과 관련하여 공지하거나 통지한 주의사항 등을 수시로 확인하고 준수할 의무가 있습니다.
④ 회원의 계정, PC, 모바일 기기 등 및 각종 인증수단 등에 관한 관리 책임은 모두 회원에게 있습니다. 회원이 회원의 계정, PC, 모바일 기기 등 및 각종 인증수단 등의 관리를 부실하게 하거나, 타인에게 이용을 승낙함으로써 발생하는 손해에 대하여 회사는 책임을 지지 않습니다.
⑤ 회원은 회사 홈페이지 및 이용 중인 플랫폼 등에서 부정한 결제가 이루어지지 아니하도록 결제 비밀번호 기능 등의 보안수단을 설정하고 관리할 의무가 있습니다. 이에 대한 회원의 부주의로 인하여 발생하는 손해에 대해서는 회사는 책임을 지지 않습니다.
⑥ 회사는 위 제1항 내지 제5항이나 다음 각 호의 행위의 구체적인 내용을 운영정책에서 정할 수 있으며, 회원은 이를 준수할 의무가 있습니다.
1. 회원의 계정명, 캐릭터명, 길드명, 다른 회원이 직접 정할 수 있는 게임 내 명칭에 대한 제한
2. 회원의 채팅내용과 방법에 대한 제한
3. 회원의 게시판이용 및 서비스이용 방법에 대한 제한
4. 회원의 게임서비스 내 플레이방법에 대한 제한
5. 다른 회원의 게임서비스 등 이용에 대한 본질적인 권리를 침해하지 않는 범위 내에서 회사가 게임서비스 등의 운영상 필요하다고 인정되는 사항
6. 게임서비스 외 제반서비스 제공 정책
7. 외부 플랫폼 제휴 서비스 정책

본 약관은 2022년 1월 6일부터 시행됩니다.
					</textarea>
				</p>
			</div>
		</div><br>
		<div class="card border-secondary" style="max-width: 40rem;">
			<div class="card-header" style="height:30px;">
				<input type="checkbox" id="infoAgree" name="infoAgree" style="zoom:1.5;"> 개인정보 수집 및 이용 동의
			</div>
			<div class="card-body">
				<p class="card-text">
					<textarea rows="5" cols="65" style="border: none;">
[개인정보 수집 및 이용 동의]

㈜넥슨코리아는 다음과 같이 개인정보를 수집 및 이용하고 있습니다.

- 수집 및 이용 목적: 회원 가입, 게임서비스 제공, 이용자 식별, 공지사항 전달
- 항목: ID, 닉네임, 비밀번호, 이메일주소
- 수집 및 이용 목적: 본인확인, 이용자 식별, 부정이용 방지, 중복가입 방지, 공지사항 전달
- 항목: 이름, 생년월일, 성별, 내외국인정보, 이동통신사정보, 휴대폰번호, 연계정보(CI), 중복가입정보(DI)
- 보유 및 이용기간: 회원탈퇴일로부터 30일 (법령에 특별한 규정이 있을 경우 관련 법령에 따라, 부정이용기록은 회원탈퇴일로부터 1년)
동의를 거부할 경우 회원가입이 불가능 합니다.
외부 계정을 이용하는 경우 이용자가 동의한 범위 내에서만 개인정보를 제공받고 처리합니다.
이벤트 등 프로모션 알림 전송을 위해 선택적으로 개인정보를 이용할 수 있습니다.

※ 그 외의 사항 및 자동 수집 정보와 관련된 사항은 개인정보처리방침을 따릅니다.						
					</textarea>		
				</p>
			</div>
		</div><br>	
		<div class="card border-secondary" style="max-width: 40rem;">
			<div class="card-header" style="height:50px;">
				<input type="checkbox" id="expirAgree" name="expirAgree" style="zoom:1.5;"> 
				<span style="color:blue;"> (선택) </span>개인정보 유효기간을 5년으로 선택합니다.<br>
				&ensp;&ensp;&ensp;<span style="color:gray;">선택하지 않으시면 1년으로 설정됩니다.</span>
			</div>
		</div><br>	
		<div class="card border-secondary" style="max-width: 40rem;">
			<div class="card-header" style="height:50px;">
				<input type="checkbox" id="promAgree" name="promAgree" style="zoom:1.5;">
				<span style="color:blue;"> (선택) </span>프로모션 정보 수신 동의<br>
				&ensp;&ensp;&ensp;<span style="color:gray;">넥슨에서 제공하는 새 게임 출시, 업데이트 안내, 이벤트 등의 정보를 수신합니다.</span>
			</div>
		</div>	
		<br>
		<input type="submit" id="submit" value="다음" class="btn btn-primary btn-block">
	<br>
	<br>
	
	<br>
	<br>
	</form>
	

</body>
</html>