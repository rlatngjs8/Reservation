<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${userid}-${bpost.title}</title>
<style>

@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
    body {
        text-align: center;
        margin: 50px auto;
        background-color: #f5f5f5;
        font-family: 'HakgyoansimWoojuR';
    		font-weight: bold;
    }

    .container {
        width: 40%;
        margin: 0 auto;
    }

    .table-container {
        margin-top: 20px;
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: left;
    }

    h1 {
        text-align: center;
    }

    textarea {
        width: 100%;
        resize: vertical;
    }

    .buttons {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }

    .comment-container {
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
        margin-top: -30px;
    }

    #commentForm {
        margin-top: 20px;
    }

    #commentContent {
        width: 100%;
        padding: 10px;
        resize: vertical;
    }

    #btnSubmit {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 8px 16px;
        cursor: pointer;
    }

    #btnSubmit:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h1>상세문의 내역</h1>
    <div class="table-container">
        <table>
            <input type="hidden" value="${bpost.seqno}">
            <tr>
                <td>제목</td>
                <td>${bpost.title}</td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea rows="10" cols="50" readonly>${bpost.content}</textarea></td>
            </tr>
            <tr>
                <td>작성자</td>
                <td>${bpost.writer}</td>
            </tr>
            <tr>
                <td>조회수</td>
                <td>${bpost.hit}</td>
            </tr>
            <tr>
                <td>작성시간</td>
                <td>${bpost.created}</td>
            </tr>
            <tr>
                <td><a href="/myPage">돌아가기</a></td>
                <td style="text-align: right;">
                    <!-- 수정, 삭제 기능 안넣음, 추가 기능은 상세페이지에서 -->
                    <!-- <button id="btnUpdate">수정</button>
                    <button id="btnDelete">삭제</button> -->
                </td>
            </tr>
        </table>
    </div>
    <br><br>
    <h3 style="text-align: left;">댓글 목록</h3>
    <div class="comment-container">
        <ul id="commentList">
            <li>
                <div class="comment">
                    <div class="comment-info">
                        <span class="comment-author">관리자</span>
                    </div>
                    <p class="comment-content">${bpost.comment}</p>
                </div>
            </li>
        </ul>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
    let loggedIn = ${not empty sessionScope.userid}; // 로그인된 상태인지 확인
    let writer = "${bpost.writer}"; // 작성자의 아이디를 변수에 저장
    let manager = "rlatngjs";    // 매니저 아이디

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

// $(document)
// .on('click', '#btnDelete', function() {
//     if (!confirm('정말로 지울까요?')) return false;

//     document.location = '/delete?seqno=' + $('#seqno').text();
//     return false;
// })
// .on('click', '#btnUpdate', function() {
//     document.location = '/update?seqno=' + $('#seqno').text();
//     return false;
// });
</script>
</html>
