<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컨트롤러에 링크연결 해야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NowRes</title>
</head>
<style>
h1{
margin-top:20px
}



div{

padding:6px;

}

*{
    padding: 0;
    margin: 0;

}
body{
    font-size: 14px;
    font-family: 'Roboto', sans-serif;
    text-align:center;
  
}


.fi {
margin-top:10px;
}


.cc {
padding: 10px;
background-color: grey;
color: aqua;
border: none;
font-size: 16px;
border-radius:4px;
cursor:poointer;
  }


</style>

<body>



<h1 align=center>예약 현황</h1>



<div class="fi" align="center">
   <a>시설명:</a>
   <select name="facility">
      <option th:text="${room}"></option>
   </select>
</div>

<div class="fi" align="center">
   <a>날짜:</a>
   <input type="text" name="date" th:value="${date}" readonly>
</div>

<div class="fi" align="center">
   <a>시간:</a>
   <input type="text" name="time" th:value="${time}" readonly>
</div>

<div class="fi">
   <a>대표자:</a>
   <input type="text" name="user" value= readonly>
</div>


<div class="fi">
	<a>상태:</a>
	<span>확정</span>
</div>

<div class="fi">
	<a>추가 정보:</a>
	<textarea name="memo" readonly>awefewaf</textarea>
</div>

<div>
	<input type="button" name="return" id="return" value="돌아가기" class="cc">
	<input type="button" name="modify" id="modify" value="수정하기" class="cc">
	<input type="button" name="cancel" id="cancel" value="예약취소" class="cc">
</div>
	


</body>



<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.on('click','#return',function(){
	document.location.href="/";
	
})

.on('click','#modify',function(){
	alert("asdf")
	
})
		
.on('click','#cancel',function(){
	alert("asdf")
	
})		
		
		
;
</script>





</html>