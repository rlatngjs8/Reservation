<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/signup.css" rel="stylesheet" />
<title>회원가입</title>
</head>
<style>
div {
font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
    position:relative;
    
    top:30px;

}

h2 {
font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
}


#signup {
color:#fff;
font-size: 16px;
    background-color: grey;
    margin-top: 20px;
    color: black;
}


input{
 width: 20%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}

  
     .hover4 {
        width:200px; 
        height:40px; 
        line-height:40px; 
        border:1px #3399dd solid;;
        margin:15px auto; 
        background-color:#F2E0F7;  
       
        cursor: pointer;  

        color:black;
        transition:all 0.9s, color 0.3;  
    }
    
    .hover4:hover{color:#fff;}
    
    
    
    
    
    .home:hover{
        box-shadow: 200px 0 0 0 rgba(0,0,0,0.25) inset, 
                   -200px 0 0 0 rgba(0,0,0,0.25) inset,
                   color:#fff;
    }
    
        .home {
        width:200px; 
        height:40px; 
        line-height:40px; 
        border:1px #3399dd solid;;
        margin:15px auto; 
        background-color:#F2E0F7;  
       
        cursor: pointer;  

        color:black;
        transition:all 0.9s, color 0.3;  
    }
    
    
    
    
    
    
    
    .home:hover{
        box-shadow: 200px 0 0 0 rgba(0,0,0,0.25) inset, 
                   -200px 0 0 0 rgba(0,0,0,0.25) inset;
    }
    
    .home:hover{color:#fff;}
    
    .hover4:hover{
        box-shadow: 200px 0 0 0 rgba(0,0,0,0.25) inset, 
                   -200px 0 0 0 rgba(0,0,0,0.25) inset;
    }
    
    .hover4:hover{color:#fff;}
    
    
    
    
     .hover5 {
       width:200px; 
        height:40px; 
        line-height:40px; 
        border:1px #3399dd solid;;
        margin:15px auto; 
        background-color:#F2E0F7;  
       
        cursor: pointer;  

        color:black;
        transition:all 0.9s, color 0.3;   
    }
    
     .hover5:hover{color:#fff;}
     
       .hover5:hover{
        box-shadow: 200px 0 0 0 rgba(0,0,0,0.25) inset, 
                   -200px 0 0 0 rgba(0,0,0,0.25) inset;
    }
    
    
    
    
    /* CSS 스타일 시트에 아래 스타일을 추가합니다. */
.button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #0074d9; /* 버튼 배경색을 설정합니다. */
    color: #ffffff; /* 텍스트 색상을 설정합니다. */
    text-decoration: none; /* 밑줄을 제거합니다. */
    border: none; /* 테두리를 제거합니다. */
    border-radius: 5px; /* 버튼 모서리를 둥글게 만듭니다. */
    cursor: pointer; /* 커서를 포인터로 변경하여 클릭 가능함을 나타냅니다. */
    font-size: 16px; /* 폰트 크기를 설정합니다. */
}

/* 버튼에 호버 효과를 추가합니다. */
.button:hover {
    background-color: #0056b3; /* 호버 시 배경색 변경 */
}
    
    
</style>
<body align=center>
<form id=frmMember method=post action="/dosignup">
<h2>회원가입</h2>

<div><input name=userid id=userid placeholder="아이디를 입력하세요.">
</div>
<div><input type=password name=passcode id=passcode placeholder="비밀번호를 입력하세요.">
</div>
<div><input type=password id=passcode1 placeholder="비밀번호 확인란을 입력하세요.">
</div>
<div><input id=name name=name placeholder="실명을 입력하세요.">
</div>
<div><input type=date id=birthday name=birthday placeholder="생년월일을 입력하세요.">
</div>
<div><input id=address name=address placeholder="주소를 입력하세요.">
</div>
<div><input id=email name=email placeholder="이메일을 입력하세요.">
</div>
<div><input id=mobile name=mobile placeholder="전화번호">
</div>
<div>

	<input type="submit" value="가입" class="hover4">&nbsp;
	<input type=reset id=btnReset value="비우기" class="hover5">&nbsp;
	<a href="/login" class="button">로그인</a>
	</div>
	<button id="home" class="home">홈으로</button>
</form>
</body>







<script src='http://code.jquery.com/jquery-Latest.js'></script>
<script>
 $(document)
 .on('click','#home',function(){
	 window.location.href="/";
	 return false;
 })
 
 .on('submit','#frmMember',function(){
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