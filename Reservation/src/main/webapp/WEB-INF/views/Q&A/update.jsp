<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
</head>
<style>
	table {
		width: 100%;
	}

	table {
		border-collapse: collapse;
    }

    table th, table td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
    }

    h1 {
        text-align: center;
    }
</style>
<body align	=center>
<form method="post" action="/modify" id=frmUpdate name=frmUpdate>
<table>
<tr><td>게시물번호</td><td>${bpost.seqno}<input type=hidden id=seqno name=seqno value="${bpost.seqno}"></td><tr>
<tr><td>제목</td><td><input type=text name=title id=title value="${bpost.title }" size=64 maxlength=128></td><tr>
<tr><td>내용</td><td><textarea rows=10 cols=50 name=content id=content>${bpost.content }</textarea></td><tr>
<tr><td>작성자</td><td>${bpost.writer }</td><tr>
<tr><td>조회수</td><td>${bpost.hit }</td><tr>
<tr><td>작성시간</td><td>${bpost.created }</td><tr>
<tr><td>수정시각</td><td>${bpost.updated }</td><tr>
<tr><td><a href="/">목록으로</a></td><td></td><tr>
<td><input type=submit id=btnSubmit name=btnSubmit value='수정완료'>&nbsp;&nbsp;
</td></tr>
</table>
</form>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.on('submit','#frmUpdate',function(){
	if($('#title').val()==''){
		alert('제목을 입력하시오'); return false;
	}
	if($('#cotent').val()==''){
		alert('게시물내용을 입력하시오.'); return false;
	}
	return true;
})
</script>
</html>