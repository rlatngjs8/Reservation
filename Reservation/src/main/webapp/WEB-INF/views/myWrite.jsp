<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>문의하기</title>
    <style>
        body {
	          font-family: Arial, sans-serif;
		     	  text-align: center;
		      	margin: 50px auto;
		      	background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
		        background-color: #25a4cd;
		        color: #fff;
		        padding: 20px 0;
		        margin: 0;
        }

        .form-container {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            width: 60%;
            height: 550px;
            margin: 70px auto 0; /* 상단 여백 추가 */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .form-container input[type="text"],
        .form-container textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        #content {
            resize: none;
        }
        #frmInsert{
        		height: 100%;
        }
        
    </style>
</head>
<body>
<h1>문의내용작성</h1>
<br><br><br>
<div class="form-container">
    <form method="post" action="/myinsert" id="frmInsert" name="frmInsert">
        <label for="title">제목</label>
        <input type="text" name="title" id="title" maxlength="128">

        <label for="content">내용</label>
        <textarea rows="10" cols="64" name="content" id="content"></textarea>

        <div class="btn-container">
            <a href="/Q&A" class="btn">목록으로</a>
            <input type="submit" id="btnSubmit" name="btnSubmit" value="작성완료" class="btn">
        </div>
    </form>
</div>
</body>
</html>
    