<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form id=frmMember method=post action="/dosignup">
<table>
<caption><h1>회원가입</h1></caption>
<tbody>
<tr><td>로그인아이디</td><td><input name=userid id=userid></td></tr>
<tr><td>비밀번호</td><td><input type=password name=passcode id=passcode></td></tr>
<tr><td>비밀번호확인</td><td><input type=password id=passcode1></td></tr>
<tr><td>실명</td><td><input id=name name=name></td></tr>
<tr><td>생년월일</td><td><input type=date id=birthday name=birthday></td></tr>
<tr><td>주소</td><td><input id=address name=address></td>
<tr><td>이메일</td><td><input id=email name=email></td>
<tr><td>전화번호</td><td><input id=mobile name=mobile></td></tr>
<tr><td colspan=2 align=center>
	<input type="submit" value="가입">&nbsp;
	<input type=reset id=btnReset value="비우기">&nbsp;
	<a href="/login">로그인</a>
	</td></tr>
</tbody>
</table>
</form>
</body>
<script src='http://code.jquery.com/jquery-Latest.js'></script>
<script>
 $(document).on('submit','#frmMember',function(){
	 if ($('#passcode').val() !== $('#passcode1').val()) {
		alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
 		return false;
	} else if($('#userid').val()==''){
		alert('아이디를 입력하세요.');
 		return false;
 	} else if($('#passcode').val()=='' || $('#passcode1').val() == ''){
		alert('비밀번호를 입력하세요.');
 		return false;
 	}
 	if($('#name').val()=='') {
 		alert('실명을 입력하세요.');
 		return false;
 	}
 	if($('#birthday').val()=='') {
 		alert('생년월일을 선택하세요.');
 		return false;
 	}
 	if($('#address').val() == ''){
 		alert('주소를 입력하세요.');
 		return false;
 	}
 	if($('#email').val() == ''){
 		alert('이메일을 입력하세요.');
 		return false;
 	}
 	if($('#mobile').val()=='') {
 		alert('모바일번호를 입력하세요.');
 		return false;
 	}
 	$.ajax({
 		url:'/dosignup',
 		data:{
 			userid:$('#userid').val(),
 			passcode:$('#passcode').val(),
 			name:$('#name').val(),
 			birthday:$('#birthday').val(), 
 			address:$('#address').val(),
			email:$('#email').val(),
 			mobile:$('#mobile').val()
 		},
 		type:'post',
 		dataType:'text',
 			success: function(data){
 				alert('가입이 완료되었습니다');
 				window.location.href = '/login';
 		}
 	})
 	return false;
 })
 
</script>

</html>