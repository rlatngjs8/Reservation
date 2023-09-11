<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        body {
            font-size: 14px;
           
        }

        .log {
            width: 400px;
            height: 420px;
						margin: auto; /* 수평 가운데 정렬 */
				    position: absolute;
				    top: 0; bottom: 400px; left: 0; right: 0; /* 수직 가운데 정렬 */
            padding: 40px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 6px;
            margin-top: 170px;
        }

        .log h2 {
            font-size: 24px;
            color: #6A24FE;
            margin-bottom: 20px;
        }

        .log input[type="text"],
        .log input[type="password"] {
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }

        #btn {
            color: #fff;
            font-size: 16px;
            background-color: #6A24FE;
            margin-top: 20px;
            color: black;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0074d9;
            color: #ffffff;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            
           
        }
        


        .error-message {
            color: red;
            font-size: 16px;
            margin-top: 10px;
        }

        /* 버튼에 호버 효과를 추가합니다. */
        .button:hover {
            background-color: #0056b3; /* 호버 시 배경색 변경 */
        }

        .error-message {
            color: red;
            font-size: 16px;
            margin-top: 10px;
        }

       .modal {
        display: none;
        position: fixed;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(173, 216, 230, 0.5); /* 하늘색 배경 */
        justify-content: center;
        align-items: center;
    }

    .modal-content {
        background-color: #fff;
        padding: 30px; /* 내용물 크기 조정 */
        border-radius: 6px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        width: 500px;
        height: 390px;
        margin: 0 auto;
    }

        .modal h3 {
            text-align: center;
            margin-top: 0;
        }

        .close {
            float: right;
            font-size: 20px;
            cursor: pointer;
        }
        

        .findID, .findPW{
        	cursor: pointer;
	        text-decoration: underline;
	        font-family: 'HakgyoansimWoojuR';
	        font-size: 14px;
	        color: black;
	        display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 중앙 정렬 적용 */
	        
	        font-family: 'HakgyoansimWoojuR';
	        
	        
	        
        }
        #findUser{
        	margin-left: 80px;
    			margin-top: 20px;
        }
				.btnSubmit {
				    margin-left: 60px;
				}
				.data{
					font-size: 23px; 
					font-family: 'TheJamsil5Bold';
					font-weight: bold;
					text-decoration: underline;
				}
				.p3, .q3{
					font-size: 20px;
			    font-family: 'HakgyoansimWoojuR';
			    font-weight: bold;
				}
				
				.btnSubmit,.btnsignup {
					position:relative;
					
					right:10px;
				}
				
				
.forlogP {
	font-family: 'HakgyoansimWoojuR';
	font-weight: bold;
	text-align:center;
}

.c {
	align:center;
	font-family: 'HakgyoansimWoojuR';
	font-weight : bold;
}

.lb{
	font-size : 20px;
}

.forlogH {
	font-size : 30px;
	font-weight : bold;
	font-family: 'HakgyoansimWoojuR';
}

@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

.hover4,.hover5{
	position:relative;
	left:200px;
	font-family: 'TheJamsil5Bold';
	font-weight : bold;
	
	width:80px;
	height: 35px;
	
}
				
    </style>
</head>
<body>



<%@include file="header.jsp"%>
<form id="frmLogin" method="post" action="/doLogin">
<br><br><br>
    <div class="log">
        <h2>로그인</h2>
        <input type="text" id="loginid" name="loginid" placeholder="로그인 아이디" autofocus>
        <input type="password" id="loginpw" name="loginpw" placeholder="패스워드">
        <input type="checkbox" id="auto">로그인저장
        
        <div class="btnSubmit">
        <br>
        	<input type="submit" id="btnSubmit" value="로그인" class="button">&nbsp;&nbsp; <input type="button" id="btnSignup" value="회원가입" class="button">
        </div>
        <c:forEach items="${member}" var="member">
           <input type="hidden" name="name" value="${member.name}">
        </c:forEach>
        <div id="findUser">
            <a class="findID" id="findID" style="font-weight: bold;">아이디찾기</a> /
            <a class="findPW" id="findPW" style="font-weight: bold;">비밀번호찾기</a>
        </div>
    </div>
    <c:if test="${loginFailed}">
        <script>
            // 아이디 혹은 비밀번호가 올바르지 않을 때 메시지를 표시합니다.
            alert("아이디 혹은 비밀번호를 확인하세요.");
        </script>
    </c:if>
</form>
<div id="idModal" class="modal">
    <div class="modal-content">
        <div class="close" id="closeIdModal"></div>
        <h1 align=center class="forlogH">아이디 찾기</h1>
        <!-- 아이디 찾기 내용 -->
        <br><hr/><br>
        <div id="p1">
	        <p class="forlogP">본인확인을 위해 가입당시 입력한</p>
	        <p class="forlogP">이메일과 이름, 전화번호를 입력해주세요</p>
        </div><br>
        <div class="findInput" id="findInput">
        		<div id="p2">
                <div class="c" align=center>
                    <label class="lb"><strong>이메일</strong></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="findEmailID" id="findEmailID" placeholder="아이디@emample.com">
                </div>
                <br>
                <div class="c" align=center>
                    <label class="lb"><strong>이름</strong></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="findNameID" id="findNameID" placeholder="홍길동">
                </div>
                <br>
                <div class="c" align=center>
                    <label class="lb"><strong>전화번호</strong></label>&nbsp;&nbsp;
                    <input type="text" name="findMobileID" id="findMobileID" placeholder="01055555555">
                </div>
                <br>
                <input type="button" id="rollbackID" value="취소" class="hover4" >
                <input type="button" id="subModalID" value="완료" class="hover4">
            </div>    
            <div id="serchID">
            	
            </div>
        </div>
    </div>
</div>
<div id="passwordModal" class="modal">
    <div class="modal-content">
        <span class="close" id="closePasswordModal"></span>
        <h1 align=center class="forlogH">비밀번호 찾기</h1>
        <!-- 비밀번호 찾기 내용 -->
        <br><hr/><br>
        <div id="q1">
        <p class="forlogP">본인확인을 위해 가입당시 입력한</p>
        <p class="forlogP">아이디와 이름, 전화번호를 입력해주세요</p>
        </div><br>
        <div class="findInput" id="findInput">
        		<div id="q2">
                <div class="c" align=center>
                    <label class="lb">아이디</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="findUseridPW" id="findUseridPW" placeholder="아이디">
                </div>
                <br>
                <div class="c" align=center>
                    <label class="lb">이름</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="findNamePW" id="findNamePW" placeholder="홍길동">
                </div>
                <br>
                <div class="c" align=center>
                    <label class="lb">전화번호</label>&nbsp;&nbsp;
                    <input type="text" name="findMobilePW" id="findMobilePW" placeholder="01055555555">
                </div>
                <br>
                <input type="button" id="rollbackPW" value="취소" class="hover4">
                <input type="button" id="subModalPW" value="완료" class="hover4">&nbsp;
            </div>
            <div id="serchPW">
            
            </div>
        </div>
    </div>
</div>

<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script>
    $(document).on('submit', '#frmLogin', function() {
        if ($('#loginid').val() === '' || $('#loginpw').val() === '') {
            alert('아이디 혹은 비밀번호를 입력해주세요');
            return false;
        }
        $.post('/doLogin',{userid:$('#loginid').val(),passcode:$('#loginpw').val()},function(data){
            if (data == '0') { // 로그인 성공
                if ($('#auto').prop('checked') == true) {
                    $.cookie('userid',$('#loginid').val());
                    $.cookie('passcode',$('#loginpw').val());
                }
            } else {// 실패 
							console.log("쿠키저장 실패");
            }
        },'json')
    });
    $(document).ready(function () {
        var useridCookie = $.cookie('userid');
        var passcodeCookie = $.cookie('passcode');
        console.log("userid 쿠키=" + useridCookie);
        console.log("passcode 쿠키=" + passcodeCookie);

        

        if (useridCookie != null && passcodeCookie != null) {
        		$('#loginid').val(useridCookie);
          	$('#loginpw').val(passcodeCookie);
        }
    });

    //----------------------

    $(document).ready(function() {
        // 아이디 찾기 모달 열기
        $('#findID').click(function() {
          $('#idModal').css('display', 'block');
					$('#findEmailID').val('');
			    $('#findNameID').val('');
			    $('#findMobileID').val('');
        });
        // 아이디 찾기 모달 닫기
        $('#closeIdModal').click(function() {
        	$('#serchID').empty();
        	$('#p1').show();
					$('#p2').show();
          $('#idModal').css('display', 'none');
        });
        // 아이디 찾기 모달 내 취소 버튼 클릭 시 닫기
        $('#rollbackID').click(function () {
        	$('#serchID').empty();
        	$('#p1').show();
					$('#p2').show();
          $('#idModal').css('display', 'none');
        });

        // 비밀번호 찾기 모달 열기
        $('#findPW').click(function() {
          $('#passwordModal').css('display', 'block');
        	$('#findUseridPW').val('');
			    $('#findNamePW').val('');
			    $('#findMobilePW').val('');
        });
        // 비밀번호 찾기 모달 닫기
        $('#closePasswordModal').click(function() {
        	$('#serchPW').empty();
        	$('#q1').show();
					$('#q2').show();
         	$('#passwordModal').css('display', 'none');
        });
        // 비밀번호 찾기 모달 내 취소 버튼 클릭 시 닫기
        $('#rollbackPW').click(function () {
        	$('#serchPW').empty();
        	$('#q1').show();
					$('#q2').show();
          $('#passwordModal').css('display', 'none');
        });
        
    });
    
    $(document).on('click', '#subModalID', function () {
        console.log('아이디 찾는중');
        var email = $('#findEmailID').val();
        var name = $('#findNameID').val();
        var mobile = $('#findMobileID').val();
        $.ajax({
            url: '/findID',
            type: 'post',
            data: { email: email, name: name, mobile: mobile },
            datatype: 'text',
            success: function (data) {
                console.log("data="+data);
                if (data === "") {
                    // 아이디를 찾지 못한 경우, 입력값이 일치하는 정보가 없음을 알림
                    alert("일치하는 정보를 찾을 수 없습니다.");
                    $('#findEmailID').val('');
                    $('#findNameID').val('');
                    $('#findMobileID').val('');
                } else {
                    // 아이디를 찾은 경우, 해당 아이디를 표시
                    $('#serchID').empty();
                    $('#p1').hide();
                    $('#p2').hide();
                    i = "<span class='p3'>회원님의 아이디는 </span><span class='data'>" + data + "</span><span class='p3'> 입니다</span><br>" +
                        "<br><button type='button' id='rollbackID1' class='hover5'>닫기</button>";
                    console.log(i);
                    $("#serchID").append(i);
                    $('#rollbackID1').click(function () {
                        $('#serchID').empty();
                        $('#p1').show();
                        $('#p2').show();
                        $('#idModal').css('display', 'none');
                    });
                }
            }
        });
    });
    $(document).on('click', '#subModalPW', function () {
        console.log('비밀번호 찾는중');
        var userid = $('#findUseridPW').val();
        var name = $('#findNamePW').val();
        var mobile = $('#findMobilePW').val();
        $.ajax({
            url: '/findPW',
            type: 'post',
            data: { userid: userid, name: name, mobile: mobile },
            dataType: 'text', // 'datatype' 오타를 'dataType'로 수정
            success: function (data) {
                console.log("data=" + data);
                if (data === "") {
                    // 비밀번호를 찾지 못한 경우, 입력값이 일치하는 정보가 없음을 알림
                    alert("일치하는 정보를 찾을 수 없습니다.");
                    // 입력 필드 값을 초기화
                    $('#findUseridPW').val('');
                    $('#findNamePW').val('');
                    $('#findMobilePW').val('');
                } else {
                    // 비밀번호를 찾은 경우, 해당 비밀번호를 표시
                    $('#serchPW').empty();
                    $('#q1').hide();
                    $('#q2').hide();
                    j = "<span class='q3'>회원님의 비밀번호는 </span><span class='data'>" + data + "</span><span class=q3> 입니다</span><br>" +
                        "<br><button type='button' id='rollbackPW1' class='hover5'>닫기</button>";
                    console.log(j);
                    $('#serchPW').append(j);
                    $('#rollbackPW1').click(function () {
                        $('#serchPW').empty();
                        $('#q1').show();
                        $('#q2').show();
                        $('#passwordModal').css('display', 'none');
                    });
                }
            }
        });
    });
  
    
</script>

</body>
</html>
