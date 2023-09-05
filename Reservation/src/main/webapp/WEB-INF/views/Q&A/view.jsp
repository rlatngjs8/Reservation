<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 50px auto;
        background-color: #f5f5f5;
    }

    table {
        width: 70%;
        margin: 0 auto;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table th, table td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: left;
    }

    h1 {
        text-align: center;
        background-color: #25a4cd;
        color: #fff;
        padding: 20px 0;
        margin: 0;
    }

    textarea {
        width: 90%;
        resize: vertical;
        padding: 10px;
        border: 1px solid #ccc;
    }

    #btnUpdate, #btnDelete {
        background-color: #e74c3c;
        border: none;
        padding: 10px 20px;
        color: #fff;
        cursor: pointer;
        margin-right: 10px;
        border-radius: 5px;
    }

    #btnUpdate:hover, #btnDelete:hover {
        background-color: #c0392b;
    }

    a.button {
        text-decoration: none;
        background-color: #25a4cd;
        padding: 10px 20px;
        color: #fff;
        border-radius: 5px;
        margin-right: 10px;
    }

    a.button:hover {
        background-color: #2980b9;
    }

    h2 {
        margin-top: 40px;
    }

    ul#commentList {
        list-style-type: none;
        padding: 0;
    }

    ul#commentList li {
        background-color: #f2f2f2;
        padding: 10px;
        border: 1px solid #ccc;
        margin-top: 10px;
    }

    #commentForm {
        margin-top: 20px;
    }

    #commentContent {
        width: 68%;
        padding: 10px;
        resize: vertical;
    }

    #btnSubmit {
        background-color: #25a4cd;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 5px;
    }

    #btnSubmit:hover {
        background-color: #0056b3;
    }
    .cal{
    		font-weight: bold;
    }
   .link-style {
    text-decoration: none;
    color: #25a4cd;
    font-weight: bold;
    background-color: transparent; /* 배경색 초기화 */
    padding: 5px 10px; /* 내용물 주위의 여백 추가 */
    border-radius: 5px; /* 둥근 테두리 추가 */
    display: inline-block; /* 텍스트를 왼쪽 정렬 */
    transition: background-color 0.3s ease; /* 배경색 전환 효과 추가 */
}

.link-style:hover {
    background-color: #f5f5f5; /* 호버 시 배경색 변경 */
}
</style>
</head>
<body>
<h1>상세문의내용</h1><br>
<!-- 목록으로 css -->
<a href="/Q&A" class="link-style">목록으로</a><br>
<table>
<tr><td class="cal">번호</td><td id="seqno">${bpost.seqno }</td></tr>
<tr><td class="cal">제목</td><td>${bpost.title }</td></tr>
<tr><td class="cal">내용</td><td><textarea rows="13" cols="60" readonly>${bpost.content }</textarea></td></tr>
<tr><td class="cal">작성자</td><td>${bpost.writer}</td></tr>
<tr><td class="cal">조회수</td><td>${bpost.hit }</td></tr>
<tr><td class="cal">작성시간</td><td>${bpost.created }</td></tr>
<tr><td class="cal">수정시각</td><td>${bpost.updated }</td></tr>
<tr>
    <td><a href="/write" class="button" id="btnWrite">글쓰기</a></td>
    <td style='text-align: right;'>
        <button id="btnUpdate">수정</button>
        <button id="btnDelete">삭제</button>
    </td>
</tr>
</table>
<h2>댓글 목록</h2>
<table id="commentTable">
    <thead style="background-color: #f2f2f2; padding: 8px;">
        <tr>
            <th style="width: 20%;">작성자</th>
            <th style="text-align: center;">내용</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>관리자</td>
            <td>${bpost.comment}</td>
        </tr>
    </tbody>
</table>
<h2>댓글 작성</h2>
<form id="commentForm" action="/addComment" method="post">
    <input type="hidden" name="seqno" value="${bpost.seqno}"> 
    <textarea id="commentContent" rows="4" cols="25" placeholder="댓글 내용" name="comment"></textarea>
    <br>
    <button type="submit" id="btnSubmit">댓글 작성</button>
</form>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
    let loggedIn = ${not empty sessionScope.userid}; // 로그인된 상태인지 확인
    let writer = "${bpost.writer}"; // 작성자의 아이디를 변수에 저장
    let manager = "rlatngjs";	// 매니저 아이디
    
    if (loggedIn) {
        let loggedInUsername = "${sessionScope.userid}";

        if (writer === loggedInUsername || loggedInUsername == manager) {
            // 작성자와 로그인한 사용자의 아이디가 같은 경우
            $("#btnUpdate").show();
            $("#btnDelete").show();
            $("#btnWrite").show();
            
        } else {
            // 작성자와 로그인한 사용자의 아이디가 다른 경우
            $("#btnUpdate").hide();
            $("#btnDelete").hide();
            $("#btnWrite").show();
        }
    } else {
        // 로그인되지 않은 상태
        $("#btnUpdate").hide();
        $("#btnDelete").hide();
        $("#btnWrite").hide();
    }
});

$(document)
.on('click', '#btnDelete', function() {
    if (!confirm('정말로 지울까요?')) return false;

    document.location = '/delete?seqno=' + $('#seqno').text();
    return false;
})
.on('click', '#btnUpdate', function() {
    document.location = '/update?seqno=' + $('#seqno').text();
    return false;
});
</script>
</html>