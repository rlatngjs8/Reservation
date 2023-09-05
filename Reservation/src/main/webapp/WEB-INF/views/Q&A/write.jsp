<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        background-color: #fff;
        border: 1px solid #ccc;
        padding: 20px;
        width: 400px;
        margin: 0 auto;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
    }
    input[type="text"], textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .Prev {
        background-color: #ccc;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }
    .Prev:hover {
    	background-color: #A9BCF5;
    }
    #btnSubmit {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }
    #btnSubmit:hover {
        background-color: #0056b3;
    }
    #content {
    	resize:none;
    }
</style>
</head>
<body>
<h1>게시물 작성</h1>
<form method="post" action="/insert" id="frmInsert" name="frmInsert">
    <table>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" maxlength="128"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea rows="10" cols="64" name="content" id="content"></textarea></td>
        </tr>
        <tr>
            <td><button id="Prev" class="Prev">목록으로</button></td>
            <td style="text-align:right;">
                <input type="submit" id="btnSubmit" name="btnSubmit" value="작성완료">&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).on('submit', '#frmInsert', function() {
    if ($('#title').val() == '') {
        alert('제목을 입력하시오.');
        return false;
    }
    if ($('#content').val() == '') {
        alert('게시물내용을 입력하시오.');
        return false;
    }
    return true;
})
</script>
</html>
