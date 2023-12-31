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
 font-family: 'HakgyoansimWoojuR';
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
	margin-top:10px;
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




.cboa, .hover4{
 width: 20%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}

.inp {
    width: 100%; 
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border: none;
    border-bottom: 1px solid #000;
    background-color: transparent;
    border-radius: 0;
    outline: none;
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
    color:black;
    margin-top:10px;
    
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
input[type="checkbox"] {
    width: 1rem;
    height: 1rem;
    border-radius: 50%;
    border: 1px solid #999;
    appearance: none;
    cursor: pointer;
    transition: background 0.2s;
  }

  input[type="checkbox"]:checked {
    background: black;
    border: none;
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
	width:100px;
} 

.inp:focus {
  border-bottom: 2px solid #E6E6E6; 
}


@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.movet{
	margin-top:10px;
	margin-left:10px;
	text-decoration:underline;
	 text-underline-position : under;
}



  .check-container {
    display: flex;
    flex-direction: row; 
    align-items: center; 
    margin-bottom: 4px;
    width:2000px;
   margin-left:800px;
  }


  .check {
    margin-right: 10px; 
  }

.movet a {
	 font-family: 'HakgyoansimWoojuR';
}




.inp {
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border: none;
    border-bottom: 1px solid #000;
    background-color: transparent;
    border-radius: 0;
    outline: none;
    
    margin-left: 100px;
}


</style>
<body align=center>
<%@include file="header.jsp"%>
<br><br><br><br>
<form id=frmMember method=post action="/dosignup">
<h2 class="signuph2">회원가입</h2>
<br><br><br>




<div class="forbig">
<table style="margin-left:650px;">
  <tr>
    <td><label class="lb">아이디</label></td>
    <td><input name="userid" id="userid" class="inp" placeholder="아이디를 입력하세요."></td>
  </tr>
    <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">비밀번호</label></td>
    <td><input type="password" name="passcode" id="passcode" class="inp" placeholder="비밀번호를 입력하세요."></td>
  </tr>
  <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">비밀번호 확인</label></td>
    <td><input type="password" id="passcode1" class="inp" placeholder="비밀번호 확인란을 입력하세요."></td>
  </tr>
    <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">실명</label></td>
    <td><input id="name" name="name" class="inp" placeholder="실명을 입력하세요."></td>
  </tr>
    <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">생년월일</label></td>
    <td><input type="date" id="birthday" name="birthday" class="inp" placeholder="생년월일을 입력하세요."></td>
  </tr>
    <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">주소</label></td>
    <td><input id="address" name="address" class="inp" placeholder="주소를 입력하세요."></td>
  </tr>
    <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">이메일</label></td>
    <td><input id="email" name="email" class="inp" placeholder="이메일을 입력하세요."></td>
  </tr>
    <tr></tr>  <tr></tr>
  <tr>
    <td><label class="lb">전화번호</label></td>
    <td><input id="mobile" name="mobile" class="inp" placeholder="전화번호"></td>
  </tr>
</table>

</div>





<br><br>
<br>

<div class="check-container">
  <input type="checkbox" id="check-all" class="check">
  <a class="hall" >홈페이지 이용약관 전체동의</a>
</div>
<br>
<div class="check-container">
  <input type="checkbox" id="check1" class="check">
  <div class="movet"><a style="text-decoration:underline">[필수] 이용약관 동의</a></div>
  <a href="/service" class="cboa2">&nbsp;&nbsp;<strong>전체보기</strong></a>
</div>

<div class="check-container">
  <input type="checkbox" id="check2" class="check">
  <div class="movet"><a style="text-decoration:underline">[필수] 개인정보 수집 및 이용 동의</a></div>
  <a href="/personal" class="cboa2">&nbsp;&nbsp;<strong>전체보기</strong></a>
</div>

<div class="check-container">
  <input type="checkbox" id="check3" class="check">
  <div class="movet">
 <a style="text-decoration:underline">[필수] 14세 이상 회원 확인</a>
  </div>
</div>


<div>
	<br><br>
	<button id="home" class="hover5">취소</button>
	<input type="submit" id="btnSubmit" value="완료" class="hover4">&nbsp;
	</div>
	
	
	
</form>
<br><br><br>

	<%@include file="footer.jsp"%>
</body>







<script src='http://code.jquery.com/jquery-Latest.js'></script>
<script>
$(document).ready(function() {
	  $('#check1, #check2, #check3').on('click', function() {
	    if ($('#check1:checked').length == 1 && $('#check2:checked').length == 1 && $('#check3:checked').length == 1) {
	      $('#check-all').prop('checked', true);
	    } else {
	      $('#check-all').prop('checked', false);
	    }
	  });
	});
$(document)
.on('click', '#home', function () {
  window.location.href = "/";
  return false;
})

.on('click', '#check-all', function () {
  $('.check').prop('checked', this.checked);
})


.on('click', '.check', function () {
  if ($('.check:checked').length == $('.check').length) {
    $('#check-all').prop('checked', true);
  } else {
    $('#check-all').prop('checked', false);
  }
})

.on('submit', '#frmMember', function () {
  if ($('#passcode').val() !== $('#passcode1').val()) {
    alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
    return false;
  } else if ($('#userid').val() == '') {
    alert('아이디를 입력하세요.');
    return false;
  } else if ($('#passcode').val() == '' || $('#passcode1').val() == '') {
    alert('비밀번호를 입력하세요.');
    return false;
  }
  if ($('#name').val() == '') {
    alert('실명을 입력하세요.');
    return false;
  }
  if ($('#birthday').val() == '') {
    alert('생년월일을 선택하세요.');
    return false;
  }
  if ($('#address').val() == '') {
    alert('주소를 입력하세요.');
    return false;
  }
  if ($('#email').val() == '') {
    alert('이메일을 입력하세요.');
    return false;
  }
  if ($('#mobile').val() == '') {
    alert('모바일번호를 입력하세요.');
    return false;
  }
  if ($('#check1:checked').length == 0 || $('#check2:checked').length == 0 || $('#check3:checked').length == 0) {
    alert('모든 이용약관에 동의해야 가입이 가능합니다.');
    return false; // 폼 제출을 막음
  }
  $.ajax({
    url: '/dosignup',
    data: {
      userid: $('#userid').val(),
      passcode: $('#passcode').val(),
      name: $('#name').val(),
      birthday: $('#birthday').val(),
      address: $('#address').val(),
      email: $('#email').val(),
      mobile: $('#mobile').val()
    },
    type: 'post',
    dataType: 'text',
    success: function (data) {
      alert('가입이 완료되었습니다');
      window.location.href = '/login';
    }, error : function(error){
    	alert('중복되는 아이디가 있습니다');
    } 
  })
  return false;
});


 
</script>

</html>