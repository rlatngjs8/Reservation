<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<style>

.hall{

	font-size:20px;
}



@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.cboa {
	font-family: 'HakgyoansimWoojuR';
	text-decoration : underline;
}

textarea.area {
  font-family: 'HakgyoansimWoojuR'; /* 원하는 폰트 이름으로 변경 */
}

.area {

  border: 1px solid black;
  background-color: white;
  color: black;
  line-height: 1.5;
  resize: none; /* 크기 조절 비활성화 */
  outline: none; /* 포커스 효과 제거 */
  
  width:300px;
  height:50px;
}








.c {
font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
    position:relative;
    
    top:30px;

}



@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

.signuph2 {
font-family: 'Pretendard-Regular';
font-weight:bold;
font-size: 24px;
    color: black;
    margin-bottom: 20px;
    text-decoration : underline;
}




.inp, .hall, .cboa, .hover4{
 width: 20%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}

button{
border-radius: 6px;
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
        font-family: 'TheJamsil5Bold';
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
    
    
    .cboa2{
    font-family: 'HakgyoansimWoojuR';
    
    }
    
    
    @font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
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
        background-color:#A4A4A4;  
       
        cursor: pointer;  

        color:black;
        transition:all 0.9s, color 0.3;  
        font-family: 'TheJamsil5Bold';
    }
    
    .hover5:hover{color:#fff;}
    


    .hover5:hover{
        box-shadow: 200px 0 0 0 rgba(0,0,0,0.25) inset, 
                   -200px 0 0 0 rgba(0,0,0,0.25) inset;
    }
    
    .hover5:hover{color:#fff;}
    
    
    
    
    
    



/* 버튼에 호버 효과를 추가합니다. */

 
    
    
   .inp {
  width: 20%;
  height: 48px;
  padding: 0 10px;
  box-sizing: border-box;
  margin-bottom: 16px;
  border: none; /* 기존 border 삭제 */
  border-bottom: 1px solid #000; /* 밑줄 스타일 적용 */
  background-color: transparent; /* 배경색 투명으로 설정 */
  border-radius: 0; /* 둥근 모서리 제거 */
  outline: none; /* 포커스 효과 제거 */
}
    
.check{
	width:15px;
	height:15px;
	
}    
    
    
.cboa{
	font-size : 14px;
	color:black;
}    


@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


  
.lb{
	color:black;
	font-size:12px;
	font-family: 'yg-jalnan';
} 


@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}








</style>
<body align=center>
<%@include file="header.jsp"%>
<br><br><br><br>
<form id=frmMember method=post action="/dosignup">
<h2 class="signuph2">회원가입</h2>
<div class="c">
<label class="lb">아이디</label>&nbsp;&nbsp;
<input name=userid id=userid class="inp" placeholder="아이디를 입력하세요.">
</div>
<div class="c">
<label class="lb">비밀번호</label>&nbsp;&nbsp;
<input type=password name=passcode id=passcode class="inp" placeholder="비밀번호를 입력하세요.">
</div>
<div class="c">
<label class="lb">비밀번호 확인</label>&nbsp;&nbsp;
<input type=password id=passcode1 class="inp" placeholder="비밀번호 확인란을 입력하세요.">
</div>
<div class="c">
<label class="lb">실명</label>&nbsp;&nbsp;
<input id=name name=name class="inp" placeholder="실명을 입력하세요.">
</div>
<div class="c">
<label class="lb">생년월일</label>&nbsp;&nbsp;
<input type=date id=birthday name=birthday class="inp" placeholder="생년월일을 입력하세요.">
</div>
<div class="c">
<label class="lb">주소</label>&nbsp;&nbsp;
<input id=address name=address class="inp" placeholder="주소를 입력하세요.">
</div>
<div class="c">
<label class="lb">이메일</label>&nbsp;&nbsp;
<input id=email name=email class="inp" placeholder="이메일을 입력하세요.">
</div>
<div class="c">
<label class="lb">전화번호</label>&nbsp;&nbsp;
<input id=mobile name=mobile class="inp" placeholder="전화번호">
</div>
<br>
<br><br>

<div class="cbox">
<input type="checkbox" id="check-all" class="check"><a class="hall">홈페이지 이용약관 전체동의</a> 
<br><br>

<input type="checkbox" id="check" class="check"><a class="cboa"> [필수] 이용약관 동의 </a> <a href="/service" class="cboa2">&nbsp;&nbsp;<strong>전체보기</strong> </a>
<br>

<input type="checkbox" id="check" class="check"><a class="cboa"> [필수] 개인정보 수집 및 이용 동의 </a> <a href="/personal" class="cboa2">&nbsp;&nbsp;<strong>전체보기</strong></a>
<br>

<input type="checkbox" id="check" class="check"><a class="cboa"> [필수] 14세 이상 회원 확인 </a> <a href="#" class="cboa2">&nbsp;&nbsp;<strong>전체보기</strong></a>
</div>



<!-- 전체동의 -->
<!--[필수]이용약관 동의      전체보기(링크) -->
<!-- 쪼그만한 박스드래그해서 이용약관 쪼로록 나오고 -->
<!-- [필수] 개인정보 수집 및 이용 동의       전체보기(링크) -->
<!-- 쪼그만한 박스드래그해서 이용약관 쪼로록 나오고 -->

<!-- 여기에 숨어있다가 입력안한거 있으면 입력하라고 빨간글씨. 그러고 입력안한칸 라벨이 빨간글씨로 변하게 -->

<div>
	<!-- 취소는 하얀색, 완료는 검은색?	 -->
	
	
	<br><br>
	<button id="home" class="hover5">취소</button>
	<input type="submit" value="완료" class="hover4">&nbsp;
	</div>
	
	
	
</form>
<br><br><br>

	<%@include file="footer.jsp"%>
</body>







<script src='http://code.jquery.com/jquery-Latest.js'></script>
<script>
 $(document)
 .on('click','#home',function(){
	 window.location.href="/";
	 return false;
 })
 
 .on('click','#check-all',function(){
	 
	 $('.check').prop('checked', this.checked);
 })
 
 .on('click','#check',function(){
	  if($('.check:checked').length == $('.check').length){
		  $('#check-all').prop('checked', true);
	    } else {
	      $('#check-all').prop('checked', false);
	    }
	 
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