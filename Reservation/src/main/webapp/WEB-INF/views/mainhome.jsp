<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta charset="UTF-8">
<title>공간예약 시스템</title>
</head>
<style>
body {
	text-align: center;
}

.room-info {
	text-align: center;
	margin: 10px;
	border: 1px solid #ccc;
	padding: 10px;
	background-color: #f5f5f5;
}

.room-info img {
	display: grid;
	margin: 0 auto;
}

/*
.first li css 삭제
*/

/*
.first img css 수정
*/
.first img {
	width: 50%;
	height: 60%;
}

.first {
	display: flex;
	list-style: none;
	justify-content: center;
	margin: 20px 0;
	padding: 0;
}

.second {
	display: flex;
	list-style: none;
	justify-content: center;
}

/*
.card css 부분 수정 
*/
.card {
	display: flex;
	flex-direction: column;
	padding: 10px;
	margin: 10px;
	border: 2px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
	width: 400px;
	height: 380px;
	border-radius: 20px;
}


@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.card p{
	font-family: 'omyu_pretty';
	font-size: 23px;
}

/*
.card img css 부분 수정
*/
.card img {
	max-width: 90%;
	height: 300px;
	width: 2000px;
	border-radius: 15px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	margin-top: 15px;
}

/*
html.open css 삭제
*/

/*
menu.open css 삭제
*/

/*
.page_cover open css 삭제
*/

/*
.btn css 삭제
*/

/*
.close css 삭제
*/

/*
.menu css 삭제
*/

/*
.menu a css 삭제
*/

/*
.menu open css 삭제
*/

/*
.page_cover open css 삭제
*/

/*
.page_cover css 삭제
*/

/*
.menu ul css 삭제
*/

/*
.menu ul.nav li css 삭제
*/

/*
.menu ul.nav li a css 삭제
*/

/*
.menu ul.nav li a:hover css 삭제
*/

/*
.menu ul.nav li. sub_mobile a css 삭제
*/

/*
.menu ul.nav li .sub_mobile a:hover css 삭제
*/

/*
.cc css 삭제
*/

/*
.button css 삭제
*/

/*
.button:hover css 삭제
*/

/*
.my-box css 삭제
*/

/*
.ex1 css 삭제
*/

/*
.button css 삭제
*/

/*
.button:hover css 삭제
*/

/*
.menu css 삭제
*/

/*
h1,h3 css 에서 h1 css만 삭제
*/

/*
img css 삭제
*/

/*
.slider css 삭제
*/

/*
.slide css 삭제
*/

/*
img css 삭제
*/
h3 {
	font-size: 24px;
	color: #333;
}

@font-face {
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

.newleft {
	text-align: left;
	margin-left: 10%;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
}

/*
.banner css 추가
*/
.banner {
	background-color: #E0F8F7;
	padding: 40px;
	text-align: center;
	color: #333;
}

/*
.banner a css 추가
*/
.banner a {
	text-decoration: none;
	color: #0007bff;
	font-weight: bold;
}

/*
card1 css 추가
*/
.card1 {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 10px;
	margin: 10px;
	border: 3px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
	width: 550px;
	height: 450px;
	border-radius: 30px;
	margin-left: 70px;
}

.card1 p {
	font-family:'omyu_pretty';
	font-size:25px;
}

/*
.card1:hover css 추가
*/

/*
.card1 img css 추가
*/
.card1 img {
	width: 500px;
	height: 350px;
	margin-bottom: 10px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	border-radius: 20px;
}

/*
.mli img css 추가
*/
.mli img {
	width: 60%;
}

.cDiv {
	overflow: hidden;
}

.card12 {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 10px;
	margin: 10px;
	border: 3px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
	width: 250px;
	height: 240px;
	border-radius: 30px;
	
	position: relative;
	left: 25px;
	
	width: 550px;
	height: 450px;
}

.card12 p {
	font-family:'omyu_pretty';
	font-size:25px;
}

.card12 img {
	width: 200px;
	height: 166.75px;
	margin-bottom: 10px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	
		width: 500px;
	height: 350px;
}

.slide-button {
	background-color: transparent;
	border: none;
	font-size: 24px;
	cursor: pointer;
	top: 50%;
	transform: translateY(-50%);
	z-index: 2;
	color: #000;
}

.prev {
	left: 10px;
}

.next {
	right: 10px;
}

.slide-container {
	width: 300vw;
	transition: all 1s;
}

.slide-box {
	width: 100vw;
	float: left;
}

.slide-box img {
	width: 1000px;
	height: 200px;
}

.slide-container {
	width: 300vw;
	transition: all 1s;
	transform: translateX(-100vw);
	border-radius: 30px;
}

.cDiv img {
	margin-left: 30px;
}

.wrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.load {
	width: 80px;
	height: 35px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	position: relative;
	left: 27px;
}

.load:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

@font-face {
	font-family: 'BMJUA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.cDiv a {
	font-family: 'BMJUA', sans-serif;
}
</style>
<body>



	<!-- header (Share Place, 좌측 상단 햄버거 모양 버튼을 header.jsp로 만들었습니다.) -->
	<%@include file="header.jsp"%>




	<br>

	<!-- 이벤트 배너를 추가하고, "event"라는 링크를 걸었습니다. -->
	<div class="banner">
		<p>
			🎉 할인 이벤트 진행 중! <a href="event">자세히 보기</a>
		</p>
	</div>
	<br>
	<br>





































	<br>
	<br>

	<!-- 이미지 조정 및 룸에 대한 설명을 아이콘 아래에 표시 -->
	<div>
		<div class="first">

			<div class=cDiv>
				<a href="/PartyRoom"><img src="img/파티룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>&nbsp; <a>파티룸</a>
			</div>

			<div class=cDiv>
				<a href="/RecordingStudio"><img src="img/녹음실.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>스튜디오/방송</a>
			</div>

			<div class=cDiv>
				<a href="/seminarRoom">&nbsp;<img src="img/세미나룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>&nbsp; <a>회의실/세미나</a>
			</div>

			<div class=cDiv>
				<a href="/studyRoom"><img src="img/스터디룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>&nbsp; <a>강의실/스터디룸</a>
			</div>


		</div>
	</div>

	<br>
	<br>
	<br>

	<div class="second" align="center">
		<div style="overflow: hidden">
			<div class="slide-container">

				<div class="slide-box">
					<a href="event1"><img src="img/실험배너2 (1).jpg"></a>
				</div>

				<div class="slide-box">
					<a href="event2"><img src="img/배너2.jpg"></a>
				</div>
			</div>
			<button class="slide-button prev">
				<i class="fas fa-chevron-left"></i>
			</button>
			<button class="slide-button next">
				<i class="fas fa-chevron-right"></i>
			</button>
		</div>

	</div>






	<br>
	<br>
	<hr />

	<div>
		<br>
		<br>
		<br>
		<br>
		<br>



		<h3 class="newleft">새로 등록했어요</h3>
	</div>


	<!-- 이미지 작업중입니다. -->
	<div class="second">

		<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
		<div class="card">
			<a href="/#"><img src="img/16.jpg" alt="이미지 2"></a>

			<p id="demo"></p>
		</div>


		<div class="card">
			<a href="#"><img src="img/24.jpg" alt="이미지 2"></a>

			<p id="demo">안녕하세요. Music Room.</p>
		</div>


		<div class="card">
			<a href="#"><img src="img/45.jpg" alt="이미지 2"></a>

			<p id="demo">안녕하세요. Party Room.</p>
		</div>


		<div class="card">
			<a href="#"><img src="img/36.jpg" alt="이미지 4"></a>

			<p id="demo">안녕하세요. Study Room.</p>
		</div>
	</div>

	<br>
	<br>

	<div class="second">
		<div class="card">
			<a href="#"><img src="img/29.jpg" alt="이미지 4"></a>

			<p id="demo">안녕하세요. Study Room.</p>
		</div>


		<div class="card">
			<a href="#"><img src="img/21.jpg" alt="이미지 4"></a>

			<p id="demo">안녕하세요. Study Room.</p>
		</div>


	</div>

	<br>
	<br>
	<br>


	<div>
		<h3 class="newleft">방금 올라온 후기</h3>
	</div>


	<div class="second">

		<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
		<div class="card1">
			<a href="#"><img src="img/40.jpg" alt="이미지 2"></a>
			<p id="demo">좋아요좋아요좋아요asdfasdfafsdfsadfsdafsadfsadfdsafasdsafdasdfa</p>
		</div>


		<div class="card1">
			<a href="#"><img src="img/14.jpg" alt="이미지 2"></a>
			<p id="demo">좋아요좋아요좋아요</p>
		</div>

	</div>



	<div class="wrap">
		<input type="button" id="load" name="load" class="load" value="더보기">
	</div>

	<br>
	<br>
	<br>

	<div class="second">




		<div class="card12">
			<a href="#"><img src="img/3.jpg"></a>
			<p id="demo">goodgoodgood</p>
		</div>

		<div class="card12">
			<a href="#"><img src="img/12.jpg"></a>
			<p id="demo">goodgoodgood</p>
		</div>

		<div class="card12">
			<a href="#"><img src="img/18.jpg"></a>
			<p id="demo">GoodGoodGood</p>
		</div>

	</div>

	<br>
	<br>
	<br>









	<!-- a태그(id=move top btn)을 삭제 -->







	<!-- header와 마찬가지로 footer.jsp라는 파일을 만들었습니다. -->
	<%@include file="footer.jsp"%>



</body>



<!-- script부분 전체 삭제 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		$(".card12").hide();
		var buttonText = [ "더 보기", "접기" ];
		var toggleIndex = 0;

		$("#load").click(function() {
			var currentScroll = $(window).scrollTop(); // 현재 스크롤 위치 저장
			$(".card12").slideToggle("fast", function() {
				// 스크롤 위치를 이동하지 않도록 설정

				$(window).scrollTop(currentScroll);
			});

			toggleIndex = 1 - toggleIndex;
			$(this).val(buttonText[toggleIndex]);
		});
	});

	$('.prev').on('click', function() {
		$('.slide-container').css('transform', 'translateX(0vw)');
	});

	$('.next').on('click', function() {
		$('.slide-container').css('transform', 'translateX(-100vw)');
	});
</script>
</html>
