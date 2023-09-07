<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추첨 이벤트</title>
</head>
<style>
.container{
justify-content: flex-direction: column;
justify-content: space-evenly;

}

.ev img{
	height:700px;
}

@font-face {
    font-family: 'RixYeoljeongdo_Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2102-01@1.0/RixYeoljeongdo_Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.sh2{
	font-familt : "RixYeoljeongdo_Regular";
	font-size : 40px;
	
}
.fdiv{
background-color: #EFFBEF;
}

.ev{
	background-color: #EFFBF8;
}

.forTxt textarea{
	width:575px;
	height:90px;
	resize:none;
}

.EventComment {
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	background-color:#33bdef;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
	
	position:relative;
}
.EventComment:hover {
	background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
	background-color:#019ad2;
}
.EventComment:active {
	position:relative;
	top:1px;
}
</style>

<body>
<%@include file="header.jsp" %>
<br><br><br><br>




<div class="fdiv">
<h2 align=center class="sh2">Share Place에서만 드리는 혜택 !</h2>
</div>
<br><br>



<div class="container">

	<div class="ev" align=center>
		<img src="img/추첨이벤트1.jpg">
	</div>
	
	<br><br>
	<div class="ev" align=center>
		<img src="img/추첨이벤트2.jpg">
	</div>
	<br><br>
	
	<div class="ev" align=center>
		<img src="img/추첨이벤트3.jpg">
	</div>

</div>

<br><br>












<br><br>
<%@include file="footer.jsp" %>

























</body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>

$(document).ready(function(){
    let name = "${userid}";
    console.log(name);
})





.on('submit', '#frmComment', function(){
   
    if ($('#comment').val() == '') {
        alert('내용을 입력하세요.');
        return false;
    }
    
    $.ajax({
 		url:'/EventComment',
 		data:{
 			userid:$('#userid').val(),
 			comment:$('#comment').val(),
 		},
 		type:'post',
 		dataType:'text',
 			success: function(data){
 				alert('성공적으로 작성되었습니다.');
 				window.location.href ='/event2';
 		}
 	})
 	return false;
});












</script>

</html>