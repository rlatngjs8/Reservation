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
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.sidebar {
	height: 100%;
	width: 250px;
	position: fixed;
	top: 0;
	left: 0;
	background-color: #333;
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
	background-color: #007bff;
}

.container {
	margin-left: 250px;
	padding: 20px;
}

h2 {
	text-align: center;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="email"], input[type="tel"]
	{
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	cursor: pointer;
}

.hidden {
	display: none;
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
		<div class="form-group" id=checkForm>
			<form action="checkPasscode" method="post">
				<input type="hidden" name="userid" id="useridCheck" value="${userid}">
				<label for="passcode">비밀번호 확인:</label>
				<input type="password" id="passcodeCheck" name="passcode" required>
		</div>
		<input type="submit" id="checkPasscode" value="확인">
		</form>
		<form action="userEdit" method="POST" class="hidden" id="editForm">
			<div class="form-group">
				<p>ID: ${userid}</p>
				<input type="hidden" name="userid" value="${userid}">
			</div>
			<div class="form-group">
				<label for="passcode">비밀번호:</label> <input type="password"
					id="passcode" name="passcode" value="${passcode}" required>
			</div>
			<c:forEach items="${member}" var="member">
				<div class="form-group">
					<label for="email">이메일:</label> <input type="email" id="email"
						name="email" value="${member.email}" required>
				</div>
				<div class="form-group">
					<label for="address">주소:</label> <input type="text" id="address"
						name="address" value="${member.address}" required>
				</div>
				<div class="form-group">
					<label for="mobile">휴대전화:</label> <input type="tel" id="mobile"
						name="mobile" value="${member.mobile}" required>
				</div>
			</c:forEach>
			<button type="submit" id="edit">수정</button>
		</form>
	</div>

	<div class="container" id="purchaseHistory" style="display: none;">
		구매내역
		
		<!-- 구매내역 내용 -->
		<!-- 이 부분에 구매내역을 보여주는 내용을 추가하세요 -->
	</div>
	<div class="container" id="myQuestions" style="display: none;">
		<h2>문의내역</h2>
		<table id="tblBoard">
		<thead>
			<tr>
				<th>제목</th><th>작성자</th><th>작성시간</th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${blist}" var="bpost">
				<tr>
					<td>${bpost.title}</td>
					<td>${bpost.writer}</td>
					<td>${bpost.created}</td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		${pagestr}
		<!-- 나의 문의내역 내용 -->
		<!-- 이 부분에 나의 문의내역을 보여주는 내용을 추가하세요 -->
	</div>
	<div class="container" id="userDelete" style="display: none;">
		<h2>회원탈퇴</h2>
		<div class="form-group" id=delCheckForm>
			<form action="deleteCheck" method="post">
				<input type="hidden" name="userid" id="useridCheck1" value="${userid}">
				<label for="passcode">비밀번호 확인:</label>
				<input type="password" id="passcodeCheck1" name="passcode" required>
		</div>
		<input type="submit" id="delCheckPasscode" value="확인">
			</form>
		
		<form action="delMember" method="post" class="hidden" id=deleteForm>
		<input type="hidden" name="delMember" value="${userid}">
		<input type="submit" id="subDelete" value="회원탈퇴">
		</form>
	</div>
	<script src="http://code.jquery.com/jquery-Latest.js"></script>
	<script>
		$(document).ready(function() {
			$("#checkPasscode").click(function(e) {
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
							$("#checkPasscode").hide();
						} else {
							alert("비밀번호가 일치하지 않습니다.");
						}
					}
				});
			});
		});
		
		// 회원탈퇴 비밀번호체크
		$(document).ready(function() {
			$("#delCheckPasscode").click(function(e) {
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
							$("#delCheckPasscode").hide();
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
