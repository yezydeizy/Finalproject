<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
.login{
	width:230px;
	margin-left:10px;
}
#nav-home-tab{
	width:50%;	
}
#nav-profile-tab{
	width:50%;
}
.mainTop{
	width:1155px;
	heigth:397px;
}
</style>
<script>
/**
   function getPosX(targetPos) {
      var currentLeft = 0;
      if (targetPos.offwetParent)
         while (1) {
            currentLeft += obj.offsetLeft;
            if (!targetPos.offsetParent)
               break;
            targetPos = targetPos.offsetParent;
         }
      else if (targetPos.x)
         currentLeft += targetPos.x;
      return currentLeft;
   }
   function getPosY(targetPos) {
      var currentTop = 0;
      if (targetPos.offsetParent)
         while (1) {
            currentTop += targetPos.offsetTop;
            if (!targetPos.offsetParent)
               break;
            targetPos = targetPos.offsetparent;
         }
      else if (targetPos.y)
         currentTop += targetPos.y;
      return currentTop;
   }
   
   function test() {
	      alert("현재 좌표는 " + event.offsetX + "/" + event.offsetY)
	   }
*/
</script>
</head>
<body>
<%@include file="header.jsp" %>
<div class="mainTop">
	<div class="login" style="float:left;">
		<nav>
		  <div class="nav nav-tabs" id="nav-tab" role="tablist" style="text-align:center;">
		    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">개인회원</a>
		    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">기업회원</a>
		  </div>
		</nav>
		  <div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
				<div>
				  <form>
				    <div class="form-group">
				      <label for="exampleDropdownFormEmail1">아이디</label>
				      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="ID">
				    </div>
				    <div class="form-group">
				      <label for="exampleDropdownFormPassword1">비밀번호</label>
				      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
				    </div>
				    <div class="form-group">
				      <div class="form-check">
				        <input type="checkbox" class="form-check-input" id="dropdownCheck">
				        <label class="form-check-label" for="dropdownCheck">
							로그인 상태 유지하기
				        </label>
				      </div>
				    </div>
				    <button type="submit" class="btn btn-primary">로그인</button>
				  </form>
				  <div class="dropdown-divider"></div>
				  <a class="dropdown-item" href="#">회원가입</a>
				  <a class="dropdown-item" href="#">비밀번호 찾기</a>
				</div>
		  </div>
		  
		  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
		  		<div>
				  <form>
				    <div class="form-group">
				      <label for="exampleDropdownFormEmail1">Email address</label>
				      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
				    </div>
				    <div class="form-group">
				      <label for="exampleDropdownFormPassword1">Password</label>
				      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
				    </div>
				    <div class="form-group">
				      <div class="form-check">
				        <input type="checkbox" class="form-check-input" id="dropdownCheck">
				        <label class="form-check-label" for="dropdownCheck">
				          Remember me
				        </label>
				      </div>
				    </div>
				    <button type="submit" class="btn btn-primary">Sign in</button>
				  </form>
				  <div class="dropdown-divider"></div>
				  <a class="dropdown-item" href="#">New around here? Sign up</a>
				  <a class="dropdown-item" href="#">Forgot password?</a>
				</div>
		  </div>
		</div>
	</div>
	<div class="mainImg" style="float:right; width:800; height:373;" >
		<img src="<%=request.getContextPath()%>/resources/img/mainImg.jpg" style="width:850px; height:373px;" onclick="test()" usemap="#Map">
		<map name="Map">
	      <area shape="rect" coords="257,230,392,297" href="http://www.naver.com" target="_blank"> 
	      <area shape="rect" coords="424,230,561,298" href="http://www.google.com" target="_blank"> 
   		</map>
	</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>