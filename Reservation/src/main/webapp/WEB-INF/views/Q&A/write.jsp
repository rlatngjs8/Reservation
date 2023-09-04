<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align=center>게시물 작성</h1>
<form method="post" action="/insert" id=frmInsert name=frmInsert>
<table align=center>
<tr><td>제목</td><td><input type=text name=title size=64 maxlength=128></td></tr>
<tr><td>내용</td><td><textarea rows=10 cols=64 name=content id=content></textarea></td></tr>
<tr><td><button id="Prev" class="Prev">목록으로</button></td>
<td style='text-align:right;'>
	<input type=submit id=btnSubmit name=btnSubmit value='작성완료'>&nbsp;&nbsp;
</td></tr>
</table> 
</form>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>




$(document)
.on('click','#Prev',function(){
	window.location.href="/Q&A";
	
})




.on('submit','#frmInsert',function(){
	if($('#title').val()==''){
		alert('제목을 입력하시오.'); return false;
	}
	if($('#content').val()==''){
		alert('게시물내용을 입력하시오.'); return false;
	}
	return true;
})
</script>
</html>