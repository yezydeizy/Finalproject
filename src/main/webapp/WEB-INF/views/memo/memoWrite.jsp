<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메모 작성하기</h1>
<form name="memoWrite" action="memoWrite.do" method="post">
<ul> 
	<li>번호:<input type="text" name="idx"> </li>
	<li>이름:<input type="text" name="writer"> </li>
	<li> 내용 <br>
	<textarea rows="5" cols="45" name="content"> </textarea>
	</li>
</ul>
<div>
	<input type="submit" value="메모작성">
	<input type="reset" value="다시작성">
</div>
</form>
</body>
</html>