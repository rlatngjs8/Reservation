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
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
    }

    .log {
        width: 400px;
        height: 350px;
        margin: 100px auto;
        padding: 40px;
        box-sizing: border-box;
        border: 1px solid #ddd;
        border-radius: 6px;
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
    border-radius: 5px; /
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
    
</style>
</head>
<body>
<form id="frmLogin" method="post" action="/doLogin">
    <div class="log">
        <h2>로그인</h2>
        <input type="text" id="loginid" name="loginid" placeholder="로그인 아이디" autofocus>
        <input type="password" id="loginpw" name="loginpw" placeholder="패스워드">
        <input type="submit" id="btnSubmit" value="로그인" class="button">&nbsp;&nbsp;<a href="/signup" class="button">회원가입</a>
        <c:forEach items="${member}" var="member">
        	<input type="hidden" name="name" value="${member.name}">
        </c:forEach>
        <input type="checkbox" id="auto">자동로그인
    </div>
    <c:if test="${loginFailed}">
			<script>
        // 아이디 혹은 비밀번호가 올바르지 않을 때 메시지를 표시합니다.
        alert("아이디 혹은 비밀번호를 확인하세요.");
    	</script>
    </c:if>
</form>
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
//                 document.cookie = "userid=" + $('#loginid').val() + "; passcode=" + $('#loginpw').val();
	  	  				$.cookie('userid',$('#loginid').val());
  	  					$.cookie('passcode',$('#loginpw').val());
    		}
    	} else {// 실패 
    		
    	}
    },'json')
});
$(document).ready(function () {
    let useridCookie = $.cookie('userid');
    let passcodeCookie = $.cookie('passcode');
    console.log("userid 쿠키=" + useridCookie);
    console.log("passcode 쿠키=" + passcodeCookie);
    
    $('#loginid').val(useridCookie);
    $('#loginpw').val(passcodeCookie);
    
    if (useridCookie != null && passcodeCookie != null) {
        $('#btnSubmit').trigger('click');
    }
});

</script>
</body>
</html>