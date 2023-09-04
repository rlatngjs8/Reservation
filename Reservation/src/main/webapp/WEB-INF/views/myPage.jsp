<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드바 메뉴</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* 예쁜 글꼴 사용 */
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        text-align: center; /* 내용물 가운데 정렬 */
    }

    .sidebar {
        height: 100%;
        width: 250px;
        position: fixed;
        top: 0;
        left: 0;
        background-color: #3498db;
        padding-top: 20px;
    }

    .sidebar ul {
        list-style-type: none;
        padding: 0;
    }

    .sidebar ul li {
        margin: 0;
        padding: 0;
        margin-bottom: 10px;
    }

    .sidebar ul li a {
        display: block;
        color: white;
        text-decoration: none;
        padding: 10px;
        text-align: center;
        transition: background-color 0.3s;
    }

    .sidebar ul li a:hover {
        background-color: #0073e6;
    }

    .container {
        margin: 0 auto; /* 가운데 정렬 */
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        max-width: 800px; /* 최대 너비 제한 */
        text-align: left; /* 내용물 왼쪽 정렬 */
    }

    h2 {
        text-align: center;
        color: #3498db;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        color: #555;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="tel"] {
        width: 100%;
        padding: 8px; /* 더 작은 패딩 */
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    button {
        background-color: #3498db;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 3px;
        cursor: pointer;
        margin-top: 10px; /* 버튼과 입력란 사이 간격 조정 */
    }

    .hidden {
        display: none;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    /* 버튼 스타일 추가 */
    button[type="submit"] {
        background-color: #0073e6;
        color: #fff;
        border: none;
        padding: 8px 20px; /* 버튼 패딩 조정 */
        border-radius: 3px;
        cursor: pointer;
        margin-left: 10px; /* 버튼과 입력란 사이 간격 조정 */
    }

    /* 비밀번호 확인 입력란 스타일 추가 */
    #passcodeCheck {
        width: 60%; /* 입력란 넓이 조정 */
    }
    
</style>
</head>
<body>
<div class="sidebar">
    <ul>
        <li><a href="#" onclick="showSection('userInfo')">나의 정보</a></li>
        <li><a href="#" onclick="showSection('userEdit')">회원정보 수정</a></li>
        <li><a href="#" onclick="showSection('purchaseHistory')">구매내역</a></li>
        <li><a href="#" onclick="showSection('myQuestions')">나의 문의내역</a></li>
        <li><a href="#" onclick="showSection('userDelete')">회원탈퇴</a></li>
    </ul>
</div>
<div class="container" id="userInfo">
    <h2>나의 정보</h2>
    <c:forEach items="${member}" var="member">
        <div class="form-group">
            <p>ID: ${member.userid}</p>
        </div>
        <div class="form-group">
            <p>이름: ${member.name}</p>
        </div>
        <div class="form-group">
            <p>생년월일: ${member.birthday}</p>
        </div>
        <div class="form-group">
            <p>주소: ${member.address}</p>
        </div>
        <div class="form-group">
            <p>이메일: ${member.email}</p>
        </div>
        <div class="form-group">
            <p>휴대전화: ${member.mobile}</p>
        </div>
        <div class="form-group">
            <p>가입일: ${member.created.substring(0,10)}</p>
        </div>
    </c:forEach>
</div>
<div class="container" id="userEdit" style="display: none;">
    <h2>회원정보 수정</h2>
    <div class="form-group" id="checkForm">
        <form action="checkPasscode" method="post">
            <input type="hidden" name="userid" id="useridCheck" value="${userid}">
            <label for="passcode">비밀번호 확인:</label>
            <input type="password" id="passcodeCheck" name="passcode" required style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 3px;">
            <button type="submit" id="checkPasscodeButton" style="background-color: #3498db; color: #fff; border: none; padding: 10px 20px; border-radius: 3px; cursor: pointer;">확인</button>
        </form>
    </div>
    <form action="userEdit" method="POST" class="hidden" id="editForm">
        <div class="form-group">
            <h3>ID: ${userid}</h3>
            <input type="hidden" name="userid" value="${userid}">
        </div>
        <c:forEach items="${member}" var="member">
        <div class="form-group">
            <label for="passcode">비밀번호:</label> 
            <input type="password" id="passcode" name="passcode" value="${member.passcode}" required style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 3px;">
        </div>
            <div class="form-group">
                <label for="email">이메일:</label> 
                <input type="email" id="email" name="email" value="${member.email}" required style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 3px;">
            </div>
            <div class="form-group">
                <label for="address">주소:</label> 
                <input type="text" id="address" name="address" value="${member.address}" required style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 3px;">
            </div>
            <div class="form-group">
                <label for="mobile">휴대전화:</label> 
                <input type="tel" id="mobile" name="mobile" value="${member.mobile}" required style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 3px;">
            </div>
        </c:forEach>
        <button type="submit" id="edit" style="background-color: #3498db; color: #fff; border: none; padding: 10px 20px; border-radius: 3px; cursor: pointer;">수정</button>
    </form>
</div>
<div class="container" id="purchaseHistory" style="display: none;">
    <h2>구매내역</h2>
    <table>
        <thead>
        <tr>
            <th>번호</th><th>상품명</th><th>이용일자</th><th>이용시간</th><th>결제금액</th><th>결제시각</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${relist}" var="re" varStatus="loop">
            <tr>
                <td>${loop.index+1}</td>
                <td>${re.space_name}</td>
                <td>${re.useday.substring(0,10)}</td>
                <td>${re.startTime}시 ~ ${re.endTime}시</td>
                <td>${re.totalPrice}</td>
                <td>${re.purchaseTime}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="container" id="myQuestions" style="display: none;">
    <h2>문의내역</h2>
    <table id="tblBoard">
        <thead>
        <tr>
            <th>번호</th><th>제목</th><th>작성자</th><th>작성시간</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${blist}" var="bpost" varStatus="loop">
            <tr>
                <td>${loop.index+1}</td>
                <td>${bpost.title}</td>
                <td>${bpost.writer}</td>
                <td>${bpost.created}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="container" id="userDelete" style="display: none;">
    <h2>회원탈퇴</h2>
    <div class="form-group" id="delCheckForm">
        <form action="deleteCheck" method="post">
            <input type="hidden" name="userid" id="useridCheck1" value="${userid}">
            <label for="passcode">비밀번호 확인:</label>
            <input type="password" id="passcodeCheck1" name="passcode" required style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 3px;">
            <button type="submit" id="delCheckPasscodeButton" style="background-color: #3498db; color: #fff; border: none; padding: 10px 20px; border-radius: 3px; cursor: pointer;">확인</button>
        </form>
    </div>
    <form action="delMember" method="post" class="hidden" id="deleteForm">
        <input type="hidden" name="delMember" value="${userid}">
        <input type="submit" id="subDelete" value="회원탈퇴" style="background-color: #3498db; color: #fff; border: none; padding: 10px 20px; border-radius: 3px; cursor: pointer;">
    </form>
</div>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
    $(document).ready(function() {
        $("#checkPasscodeButton").click(function(e) {
            e.preventDefault(); // 폼 제출 막

            var userid = $("#useridCheck").val();
            var passcode = $("#passcodeCheck").val();

            $.ajax({
                type : "POST",
                url : "/checkPasscode",
                data : {
                    userid : userid,
                    passcode : passcode
                },
                success : function(data) {
                    if (data === "true") {
                        // 비밀번호가 일치하면 폼 나오
                        $("#editForm").removeClass("hidden");
                        // 일치하면 비밀번호확인란 숨김
                        $("#checkForm").hide();
                        $("#checkPasscodeButton").hide();
                    } else {
                        alert("비밀번호가 일치하지 않습니다.");
                    }
                }
            });
        });
    });

    // 회원탈퇴 비밀번호체크
    $(document).ready(function() {
        $("#delCheckPasscodeButton").click(function(e) {
            e.preventDefault(); // 폼 제출 막

            var userid = $("#useridCheck1").val();
            var passcode = $("#passcodeCheck1").val();

            $.ajax({
                type : "POST",
                url : "/deleteCheck",
                data : {
                    userid : userid,
                    passcode : passcode
                },
                success : function(data) {
                    if (data === "true") {
                        // 비밀번호가 일치하면 폼 나오
                        $("#deleteForm").removeClass("hidden");
                        // 일치하면 비밀번호확인란 숨김
                        $("#delCheckForm").hide();
                        $("#delCheckPasscodeButton").hide();
                    } else {
                        alert("비밀번호가 일치하지 않습니다.");
                    }
                }
            });
        });
    });

    function showSection(sectionId) {
        // 모든 콘텐츠 숨기기
        var containers = document.querySelectorAll('.container');
        containers.forEach(function(container) {
            container.style.display = 'none';
        });

        // 선택한 섹션 표시
        var selectedSection = document.getElementById(sectionId);
        selectedSection.style.display = 'block';
    }

    $(document).on('click', '#edit', function() {
        alert("수정이 완료되었습니다.");
    })

    $(document).on('click','#subDelete',function(){
        var Message = "탈퇴 후 수정이 불가합니다.\n정말 탈퇴하시겠습니까?";
        // 버튼 비활성화 (없으면 두번실행)
        $(this).prop('disabled', true);	
        
        if (confirm(Message)) {
            $.ajax({
                type: "POST",
                url: "/delMember", // 삭제 요청을 보낼 URL
                data: {
                    userid: $("#useridCheck1").val() // 삭제할 사용자의 ID
                },
                success: function(data) {
                    if (data === "success") {
                        alert("회원탈퇴가 완료되었습니다.");
                        // 여기에서 로그아웃 등 다른 필요한 동작을 수행할 수 있습니다.
                        window.location.href = "/";
                    } else {
                        alert("회원탈퇴에 실패했습니다.");
                    }
                    $(document).off('click','#subDelete');
                }
            });
        } else {
            // 사용자가 취소를 눌렀을 때의 동작을 여기에 추가
            $(document).off('click','#subDelete');
        }
    })

    $(document).on('click','#tblBoard tbody tr',function(){
        document.location='/Q&Aview?title='+$(this).find('td:eq(0)').text();
        return false;
    });
</script>
</body>
</html>