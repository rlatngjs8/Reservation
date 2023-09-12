<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시물 보기</title>
    <style>
        @font-face {
            font-family: 'HakgyoansimWoojuR';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        button {
            font-family: 'HakgyoansimWoojuR';
            font-weight: bold;
        }

        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px auto;
            background-color: #f5f5f5;
            font-family: 'HakgyoansimWoojuR';
            font-weight: bold;
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

        .comment-container {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px auto;
            max-width: 600px;
            text-align: left;
        }

        .comment-author {
            font-size: 15px;
            color: #555;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .comment-textarea {
            width: 98%;
            height: 50px;
            resize: none;
            border: 1px solid #ccc;
            padding: 5px;
        }

        .comment-button {
            display: block;
            margin-top: 10px;
            padding: 5px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .comment-button:hover {
            background-color: #0056b3;
        }

        .cal {
            font-weight: bold;
        }

        .link-style {
            text-decoration: none;
            color: #25a4cd;
            font-weight: bold;
            background-color: transparent;
            padding: 5px 10px;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .link-style:hover {
            background-color: #f5f5f5;
        }

        .container {
            width: 60%;
            margin: 0 auto;
        }

        /* 추가된 스타일 */
        .reply-list {
            margin-left: -2%; /* 들여쓰기 스타일 지정 */
            list-style: none;
        }

    </style>
</head>
<body>
<div class="container">
    <h1>상세문의내용</h1><br>
    <a href="/Q&A" class="link-style">목록으로</a><br>

    <table>
        <tr><td class="cal">번호</td><td><input type="hidden" id="seqno" name="seqno" value="${bpost.seqno}">${bpost.seqno}</td></tr>
        <tr><td class="cal">제목</td><td>${bpost.title}</td></tr>
        <tr><td class="cal">내용</td><td><textarea rows="13" cols="60" readonly>${bpost.content}</textarea></td></tr>
        <tr><td class="cal">작성자</td><td>${bpost.writer}</td></tr>
        <tr><td class="cal">조회수</td><td>${bpost.hit}</td></tr>
        <tr><td class="cal">작성시간</td><td>${bpost.created}</td></tr>
        <tr><td class="cal">수정시각</td><td>${bpost.updated}</td></tr>
        <tr>
            <td><a href="/write" class="button" id="btnWrite">글쓰기</a></td>
            <td style='text-align: right;'>
                <button id="btnUpdate">수정</button>
                <button id="btnDelete">삭제</button>
            </td>
        </tr>
    </table>

    <h2>댓글 목록</h2>
    <div class="comment-container">
        <ul id="commentList">
            <!-- 댓글 목록이 여기에 추가됩니다. -->
        </ul>
        <div class="comment-author">
            <h3>댓글 작성</h3>
            <input type="hidden" id="comment-writer" name="writer" value="${userid}">
            <input type="hidden" id="parentID" name="parentID" value="${bpost.seqno}">
            ${userid}
        </div>

        <!-- 댓글 입력란 -->
        <textarea class="comment-textarea" id="comment-textarea" name="content" placeholder="댓글을 입력하세요"></textarea>

        <!-- 댓글 등록 버튼 -->
        <button class="comment-button" id="comment-submit">댓글 등록</button>
    </div>
    <!-- 답글 작성 폼 -->
    <div class="comment-container" id="reply-form-container" style="display: none;">
        <h3>답글 작성</h3>
        <input type="hidden" id="reply-writer" name="writer" value="${userid}">
        ${userid}
        <textarea class="comment-textarea" id="reply-textarea" name="content" placeholder="답글을 입력하세요"></textarea>
        <!-- 답글 등록 버튼 -->
        <button class="comment-button" id="reply-submit">답글 등록</button>
        <!-- 답글 취소 버튼 -->
        <button class="comment-button" id="reply-cancel">취소</button>
    </div>

    <!-- 답글 목록 -->
<!--     <div class="comment-container" id="reply-list-container"> -->
<!--         <h3>답글 목록</h3> -->
<!--         <ul id="replyList"> -->
<!--             답글 목록이 여기에 추가됩니다. -->
<!--         </ul> -->
<!--     </div> -->
</div>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function() {
        let loggedIn = ${not empty sessionScope.userid};
        let writer = "${bpost.writer}";
        let manager = "rlatngjs";
        let userid = "${sessionScope.userid}";

        if (loggedIn) {
            if (writer === userid || userid === manager) {
                $("#btnUpdate").show();
                $("#btnDelete").show();
                $("#btnWrite").show();
            } else {
                $("#btnUpdate").hide();
                $("#btnDelete").hide();
                $("#btnWrite").show();
            }
        } else {
            $("#btnUpdate").hide();
            $("#btnDelete").hide();
            $("#btnWrite").hide();
        }

        $("#comment-submit").click(function() {
            var writer = $("#comment-writer").val();
            var parentID = "${bpost.seqno}"; // 댓글의 부모 ID를 글의 seqno로 설정
            var content = $("#comment-textarea").val();

            $.ajax({
                url: "/addComment",
                type: "POST",
                data: {
                    writer: writer,
                    parentID: parentID,
                    content: content
                },
                success: function(response) {
                    $("#comment-textarea").val("");
                    
                    // 댓글을 등록한 후, 즉시 댓글 목록을 업데이트
                    updateCommentList(parentID);
                },
                error: function(xhr, status, error) {
                    console.error("댓글 추가 오류:", error);
                }
            });
        });

        let seqno = "${bpost.seqno}"; // 글의 seqno를 가져옴
        updateCommentList(seqno);

        // 답글 달기 버튼 클릭 시
        $(document).on('click', '.reply-button', function() {
            let commentId = $(this).data("comment-id");
            console.log("답글 commentId=" + commentId);
            $(this).hide();
            $("#reply-form-container").appendTo($(this).closest("li"));
            $("#reply-form-container").show();

            // 답글 목록 업데이트
            updateReplyList(commentId);

            // 답글 등록 버튼에 commentId 설정
            $("#reply-submit").data("comment-id", commentId);
        });

        // 답글 등록 취소 버튼 클릭 시
        $("#reply-cancel").click(function() {
            $("#reply-textarea").val("");
            $("#reply-form-container").hide();
            $(".reply-button").show();
        });
    });

    function updateCommentList(seqno) {
        $.ajax({
            url: "/getComments",
            type: "GET",
            data: {
                seqno: seqno
            },
            success: function(response) {
                let commentList = $("#commentList");
                commentList.empty();

                if (response && response.length > 0) {
                    for (let i = 0; i < response.length; i++) {
                        let comment = response[i];
                        let listItem = $("<li>");
                        listItem.append(comment.writer + "<br>");
                        listItem.append(comment.content + "<br>");
                        listItem.append(comment.created + "<br>");

                        let replyButton = $("<button>")
                            .text("답글 달기")
                            .addClass("reply-button")
                            .data("comment-id", comment.seqno);
                        listItem.append(replyButton);

                        // 답글 목록을 표시할 위치 설정
                        let replyList = $("<ul>").addClass("reply-list");
                        listItem.append(replyList);

                        commentList.append(listItem);

                        // 답글 목록 업데이트
                        updateReplyList(comment.seqno, replyList);
                    }
                } else {
                    commentList.append("<li>댓글이 없습니다.</li>");
                }
            },
            error: function(xhr, status, error) {
                console.error("댓글 목록 로드 오류:", error);
            }
        });
    }

    function updateReplyList(commentId, replyListElement) {
        $.ajax({
            url: "/getReplies",
            type: "GET",
            data: {
                parentID: commentId
            },
            success: function(response) {
                if (response && response.length > 0) {
                    for (let i = 0; i < response.length; i++) {
                        let reply = response[i];
                        let listItem = $("<li>");
                        listItem.append(reply.writer + "<br>");
                        listItem.append(reply.content + "<br>");
                        listItem.append(reply.created + "<br>");

                        replyListElement.append(listItem);
                    }
                } else {
//                     replyListElement.append("<li>답글이 없습니다.</li>");
                }
            },
            error: function(xhr, status, error) {
                console.error("답글 목록 로드 오류:", error);
            }
        });
    }

    $(document)
        .on('click', '#btnDelete', function() {
            if (!confirm('정말로 지울까요?')) return false;
            let seqno = $("#seqno").val();
            document.location = '/delete?seqno=' + seqno;
            return false;
        })
        .on('click', '#btnUpdate', function() {
            let seqno = $("#seqno").val();
            document.location = '/update?seqno=' + seqno;
            return false;
        });

    // 답글 등록 버튼 클릭 시
    $("#reply-submit").click(function() {
        let writer = $("#reply-writer").val();
        let commentId = $(this).data("comment-id"); // 답글을 작성하는 댓글의 ID를 가져옴
        let content = $("#reply-textarea").val();

        console.log("답글 등록 commentId=" + commentId);
        $.ajax({
            url: "/addReply",
            type: "POST",
            data: {
                writer: writer,
                parentID: commentId,
                content: content
            },
            success: function(response) {
                $("#reply-textarea").val("");
                $("#reply-form-container").hide();
                updateReplyList(commentId);

                $(".reply-button").show();
            },
            error: function(xhr, status, error) {
                console.error("답글 추가 오류:", error);
            }
        });
    });
</script>
</html>
