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

.ffimg img{
	width:45px;
	height: 41px;
	position:relative;
	
	right:5px;
	top:7px;
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
	
	width:1350px;
	
	margin-left: 236px;
	
	height:30%;
}


.second1 {
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
	border: 2px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
	width: 520px;
	height: 500px;
	border-radius: 20px;
	
	margin-left: 43px;
}

.card a {
	 font-family: 'omyu_pretty';
	 font-size : 20px;
}

@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.card p{
	font-family: 'omyu_pretty';
	font-size: 26px;
	font-weight: bold;
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
	margin-left: 16%;
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	font-size : 40px;
	text-decoration:underline;
	text-underline-position: under;
}

/*
.banner css 추가
*/
.banner {
	background-color: #E0F8F7;
	width:1268px;
	padding: 40px;
	text-align: center;
	color: #333;
	
	margin-left:260px;
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
	width: 500px;
	height: 400px;
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
	width: 450px;
	height: 300px;
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

.cDiv1 {
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
	border-radius: 30px;
	
	position: relative;
	left: 25px;
	
	width: 526px;
	height: 426px;
}

.card12 p {
	font-family:'omyu_pretty';
	font-size:25px;
}

.card12 img {
	width: 180px;
	height: 146px;
	margin-bottom: 10px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	
	width: 450px;
	height: 300px;
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
	margin-left: 20px;
}

.cDiv1 img {
	margin-left: 10px;
	margin-right:27px;
	margin-top:10px;
	height:40px;
}

.cDiv1 a{
	position:relative;
}

.wrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}



@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}



.load {
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border-radius:6px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:#3a8a9e;
	font-family:Arial;
	font-size:12px;
	padding:7px 15px;
	text-decoration:none;
	
	margin-left:53px;
	font-family: 'yg-jalnan';
	
}
.load:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.load:active {
	position:relative;
	top:1px;
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

.saleEvent {
	font-size:23px;
}


.all{
	position:relative;
	right:8px;
	top: 11px;
}


    .hidden {
            display: none;
        }


#demo p{

white-space: nowrap;
position:relative;

bottom:6px;

}

@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

#demot {
	 font-family: 'GmarketSansMedium';	
	 text-decoration : underline;
	   text-underline-position: under;
}


</style>
<body>



	<!-- header (Share Place, 좌측 상단 햄버거 모양 버튼을 header.jsp로 만들었습니다.) -->
	<%@include file="header.jsp"%>
	<br><br>




	<br>

	<!-- 이벤트 배너를 추가하고, "event"라는 링크를 걸었습니다. -->
	<br><br><br><br>
	<div class="banner">
		<p class="saleEvent">
			🎉 할인 이벤트 진행 중! <a href="event">자세히 보기</a>
		</p>
	</div>
	<br>
	<br>


<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git
	<!-- 이미지 조정 및 룸에 대한 설명을 아이콘 아래에 표시 -->
	

	<br>

	<div class="second1" align="center">
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

<br><br>

<div>
		<div class="first">
		
			<div class="cDiv">
				<a href="allRooms" class="ffimg"><img src="img/전체보기.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>&nbsp;<a class="all">전체보기</a>
			</div>

			
			<div class=cDiv>
				<a href="/dance"><img src="img/연습실.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>연습실</a>
			</div>
			
			
			<div class=cDiv>
				<a href="allRooms?category=party"><img src="img/파티룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>파티룸</a>
			</div>

			<div class=cDiv>
				<a href="allRooms?category=studio"><img src="img/녹음실.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>스튜디오/방송</a>
			</div>

			<div class=cDiv>
				<a href="allRooms?category=conference">&nbsp;<img src="img/세미나룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>&nbsp; <a>회의실/세미나</a>
			</div>

			<div class=cDiv>
				<a href="allRooms?category=study"><img src="img/스터디룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>&nbsp; <a>강의실/스터디룸</a>
			</div>


		</div>
	</div>




	<hr />

	<div>
		<br>
		<br>
		<br>
		<br>
		<br>



		<a href="/newrooms"><h3 class="newleft">새로 등록했어요</h3></a>
	</div>


	<!-- 이미지 작업중입니다. -->
	<div class="second">

		<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
		<div class="card">
			<a href="/#"><img src="img/${rooms[3].img2}" alt="이미지 6"></a>

			<p id="demo">${rooms[3].space_name}</p>
			<a id="demo">${rooms[3].location }</a>
	
		<br>
		<a id="demot" align="right" style="position:relative; top:30px;">${rooms[3].price}원/시간</a>

		</div>


		<div class="card">
			<a href="#"><img src="img/${rooms[9].img2}" alt="이미지 6"></a>

			<p id="demo">${rooms[9].space_name}</p>
			<a id="demo">${rooms[9].location }</a>
			
			<br>
			<a id="demot" align=right>${rooms[9].price}원/시간</a>
		</div>


		<div class="card">
			<a href="#"><img src="img/${rooms[22].img1}" alt="이미지 6"></a>

			<p id="demo">${rooms[22].space_name}</p>
			<a id="demo">${rooms[22].location }</a>
			
			<br>
			<a id="demot" align=right>${rooms[22].price}원/시간</a>
		</div>

	</div>

	<br>
	<br>

	<div class="second">

		<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
		<div class="card">
			<a href="/#"><img src="img/${rooms[1].img2}" alt="이미지 6"></a>

			<p id="demo">${rooms[1].space_name}</p>
			<a id="demo">${rooms[1].location }</a>
			
			
		<br>
		<a id="demot" align="right" style="position:relative; top:3px;">${rooms[1].price}원/시간</a>

		</div>


		<div class="card">
			<a href="#"><img src="img/${rooms[15].img2}" alt="이미지 6"></a>

			<p id="demo">${rooms[15].space_name}</p>
			<a id="demo">${rooms[15].location }</a>
			
			<br>
			<a id="demot" align=right>${rooms[15].price}원/시간</a>
		</div>


		<div class="card">
			<a href="#"><img src="img/${rooms[12].img1}" alt="이미지 6"></a>

			<p id="demo">${rooms[22].space_name}</p>
			<a id="demo">${rooms[22].location }</a>
			
			<br>
			<a id="demot" align=right>${rooms[12].price}원/시간</a>
		</div>

	</div>
	
	
	<br><br>	
	
			
			
			
	<br>
	<br>
	<br>


	<div>
		<a href="#"><h3 class="newleft">방금 올라온 후기</h3></a>
	</div>


	<div class="second1">

		<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
		<div class="card1">
			<a href="#"><img src="img/40.jpg" alt="이미지 2"></a>
			<p id="demo">후기1</p>
		</div>


		<div class="card1">
			<a href="#"><img src="img/14.jpg" alt="이미지 2"></a>
			<p id="demo">후기1</p>
		</div>

		
	
	</div>



	<div class="wrap">
		<input type="button" id="load" name="load" class="load" value="더보기">
	</div>

	<br>
	<br>
	<br>

	<div class="second1">




		<div class="card12">
			<a href="#"><img src="img/3.jpg"></a>
			<p id="demo">goodgoodgood</p>
		</div>

		<div class="card12">
			<a href="#"><img src="img/12.jpg"></a>
			<p id="demo">goodgoodgood</p>
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
