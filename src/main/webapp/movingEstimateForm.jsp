<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
header {
   position: fixed;
   width: 1155px;
   z-index: 9999;
   top: 0;
   background-color: white;
   margin: 0px auto;
}
body{
	padding-top:85px;
	width:1155px;
	margin:0px auto;
}
.question{
	font-weight: bold;
	margin-bottom:10px;
}
.radio{
	margin-left:50px;
}
.bodyContent{
	margin-left:50px;
}
</style>
<script>
/**
 * 
 //주소찾기(다음 우편번호 API)
$('#zipcode_search').click(function(){
    new daum.Postcode({
         oncomplete: function(data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var fullAddr = ''; // 최종 주소 변수
          var extraAddr = ''; // 조합형 주소 변수

          // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
              fullAddr = data.roadAddress;

          } else { // 사용자가 지번 주소를 선택했을 경우(J)
              fullAddr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
          if(data.userSelectedType === 'R'){
              //법정동명이 있을 경우 추가한다.
              if(data.bname !== ''){
                  extraAddr += data.bname;
              }
              // 건물명이 있을 경우 추가한다.
              if(data.buildingName !== ''){
                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
              fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('m_zipcode').value = data.zonecode; //5자리 새우편번호 사용
          document.getElementById('m_addr1').value = fullAddr;

          // 커서를 상세주소 필드로 이동한다.
          document.getElementById('m_addr2').focus();
      }
  }).open();
 });*/


</script>
</head>
<body>
<%@include file="header.jsp" %>
<label style="font-weight:bold; font-size:30px;">이사 견적 신청</label>
<hr>
<form name="movingEstimate" action="????????">
	<div class="bodyContent">
		<div style="margin-bottom: 20px;">
			<label class="question">이삿날을 입력해주세요</label><br>
			<input type="date" name="mo_date">
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 성함</label><br>
			<input type="text" name="user_name">
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 연락처</label><br>
			<input type="text" name="user_tel">
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">상담은 어떻게 받아보고 싶으세요?</label><br>
			<select name="mo_consult"> 
				<option value="전화">전화 상담 받고 싶어요</option>	
				<option value="방문">방문 상담 받고 싶어요</option>	
			</select>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">출발지 정보</label><br>
			<input type="text" value="우편번호검색 api 여기에" name="mo_saddr">
			<label>도착지 층수</label>
			<select name="mo_sfloor">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				<option>13</option>
				<option>14</option>
				<option>15</option>
				<option>16</option>
				<option>17</option>
				<option>18</option>
				<option>19</option>
				<option>20</option>
			</select>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">출발지 집의 평수, 이사 유형을 알려주세요.</label><br>
			<label>평수&nbsp;&nbsp;</label>
			<select name="mo_size">
				<option>15평 이하</option>
				<option>15~19평</option>		
				<option>20~29평</option>		
				<option>30~39평</option>				
				<option>40~49평</option>				
				<option>50~59평</option>				
			</select>
			<label>이사 유형&nbsp;&nbsp;</label>
			<select name="mo_type">
				<option>가정 이사</option>
				<option>소형 이사</option>		
				<option>사무실 이사</option>		
			</select>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">도착지 정보</label><br>
			<input type="text" value="우편번호검색 api 여기에" name="mo_eaddr">
			<label>도착지 층수</label>
			<select name="mo_efloor">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				<option>13</option>
				<option>14</option>
				<option>15</option>
				<option>16</option>
				<option>17</option>
				<option>18</option>
				<option>19</option>
				<option>20</option>
			</select>
		</div>
		<div style="margin-bottom: 10px;">
			<label class="question">필요한 서비스를 선택해 주세요.</label><br>
			<input type="checkbox" id="r0" name="mo_service"><label for="r0">짐 상하차 서비스</label><br><!-- 추후에 ajax로 이거 체크하면 아래 radio버튼 활성화 되도록 만들기-->
				<div class="radio">
					<input type="radio" id="r1" name="mo_service1" value="포장이사 이용안함"><label for="r1">포장이사 이용안함 </label><br><label for="r1">&nbsp;&nbsp;포장이사 서비스를 원하지 않을 경우</label><br>
					<input type="radio" id="r2" name="mo_service1" value="반/포장이사 서비스"><label for="r2">반/포장이사 서비스 </label><br><label for="r2">&nbsp;&nbsp;출발지에서 대형/소형 가전 및 가구제품 포장만 필요한 경우</label><br>
					<input type="radio" id="r3" name="mo_service1" value="포장이사 서비스"><label for="r3">포장이사 서비스 </label><br><label for="r3">&nbsp;&nbsp;출발지에서 짐을 포장하고 옮긴 후 도착지에서 짐정리까지 모두 필요한 경우</label>
				</div>
			<input type="checkbox" id="r4"name="mo_service2"><label for="r4">보관이사 서비스</label><br>
		</div>
		<div style="text-align:center; margin-bottom: 10px;"><button type="button" class="btn btn-warning" style="width:150px;">제출하기</button></div>
		<div style="text-align:center"><input type="checkbox" id="r5" name="agreement"><label for="r5">서비스 이용약관 동의 <a href="?????????????(약관팝업)">[전문보기]</a></label></div>
	</div>
</form>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>