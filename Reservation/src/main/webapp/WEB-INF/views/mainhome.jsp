<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta charset="UTF-8">
<title>공간예약 시스템</title>
</head>
<style>



body {
	text-align: center;
}
.first img {
	width: 50%;
	height: 60%;
}
.ffimg img {
margin-top:5px;
	width: 50px;
	height: 44px;
	position: relative;
	left:3px;
	top: 2px;
}
.first {
	display: flex;
	list-style: none;
	justify-content: center;
	margin: 20px 0;
	padding: 0;
}
.second1 {
	display: flex;
	list-style: none;
	justify-content: center;
}

.second13 {
	display: flex;
	list-style: none;
	justify-content: center;
}

.card-container {
	margin-left: 30px;
	align:center;
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* 카드 간격 조절 (원하는 값으로 조절 가능) */
  }
.second {
    display: flex;
    list-style: none;
    justify-content: center;
    width: 1350px;
    margin-left: 236px;
    height: 30%;
    gap: 20px; /* .card 간격 조절 */
    
}

.card {
    display: flex;
    flex-direction: column;
    padding: 10px;
    border: 2px solid #ccc;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
  	width:400px;
    height: 400px;
    margin-bottom: 20px; /* 아래 여백 추가 */
}

.card img {
    width: 400px;
    
    height: 100%; /* 이미지 카드의 높이에 맞추기 위해 100%로 설정 */
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-top: 15px;
}

.demo12 {
	text-align:right;
}

.demo {
	font-size : 30px !important;
}

.demo1 {
    font-size: 20px !important;
}


.card a {
	font-family: 'omyu_pretty';
	font-size: 25px;
}

@font-face {
	font-family: 'omyu_pretty';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

.card p {
	font-family: 'omyu_pretty';
	font-size: 26px;
	font-weight: bold;
}
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
    font-size: 40px;
    text-decoration: underline;
    text-underline-position: under;

}
.banner {
	background-color: #E0F8F7;
	width: 1268px;
	padding: 40px;
	text-align: center;
	color: #333;
	margin-left: 260px;
}
.banner a {
	text-decoration: none;
	color: #0007bff;
	font-weight: bold;
}

.card1 p {
	font-family: 'omyu_pretty';
	font-size: 25px;
}
.card1 img {
	width: 450px;
	height: 300px;
	margin-bottom: 10px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	border-radius: 20px;
}
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
	opacity: 0;
}

.card12 p {
	font-family: 'omyu_pretty';
	font-size: 25px;
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
	margin-right: 27px;
	margin-top: 10px;
	height: 40px;
}

.cDiv1 a {
	position: relative;
}

.wrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.load {
	background: linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color: #ededed;
	border-radius: 6px;
	border: 1px solid #d6bcd6;
	display: inline-block;
	cursor: pointer;
	color: #3a8a9e;
	font-family: Arial;
	font-size: 12px;
	padding: 7px 15px;
	text-decoration: none;
	margin-left: 53px;
	font-family: 'yg-jalnan';
}

.load:hover {
	background: linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color: #bab1ba;
}

.load:active {
	position: relative;
	top: 1px;
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
    font-size: 20px; /* 폰트 크기 증가 */
    font-weight: bold; /* 텍스트를 두껍게 표시 */
    text-decoration: underline; /* 밑줄 추가 */
    text-underline-position: under;
}

.saleEvent {
    font-size: 23px;
    font-weight: bold; 
    color: #FF5733; 
}

.all {
	position: relative;
	top: 7px;
}

.hidden {
	display: none;
}

#demo p {
	white-space: nowrap;
	position: relative;
	bottom: 6px;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#demot {
	font-family: 'GmarketSansMedium';
	text-decoration: underline;
	text-underline-position: under;
}



.rating-container {
    font-size: 30px;
    color: #FFD700; 
}

.review2{
	text-align:right;
}

</style>
<body>
	<!-- header (Share Place, 좌측 상단 햄버거 모양 버튼을 header.jsp로 만들었습니다.) -->
	<%@include file="header.jsp"%>
	<br><br><br>
	<!-- 이벤트 배너를 추가하고, "event"라는 링크를 걸었습니다. -->
	<br><br><br><br>
	<div class="banner">
		<p class="saleEvent">
			🎉 할인 이벤트 진행 중! <a href="event">자세히 보기</a>
		</p>
	</div>
	<br><br><br>
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
			<div class=cDiv style="margin-right: 5px;">
				<a href="allRooms?category=party"><img src="img/파티룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>파티룸</a>
			</div>
			<div class=cDiv style="margin-right: 10px;">
				<a href="allRooms?category=conference"><img src="img/세미나룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>회의실/세미나</a>
			</div>
			<div class=cDiv style="margin-right: 20px;">
				<a href="allRooms?category=study"><img src="img/스터디룸.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br> <a>강의실/스터디룸</a>
			</div>
			<div class=cDiv style="margin-right: 20px;">
				<a href="allRooms?category=studio"><img src="img/녹음실.jpg"></a>&nbsp;&nbsp;
				<br> <a>스튜디오/방송</a>
			</div>
			<div class=cDiv style="margin-right: 20px;">
				<a href="allRooms?category=practice"><img src="img/연습실.jpg"></a>
				<br> <a>연습실</a>
			</div>
		</div>
	</div>
	<hr />
	<div>
		<br> <br> <br> <br> <br>
		<a href="/newrooms"><h3 class="newleft">새로 등록했어요</h3></a>
	</div>
	<div class="second"> <!-- 새로등록 6개만 나오게함. xml에서 asc를 desc로 수정 -->
	<div class="card-container">
		 <c:forEach items="${rooms}" var="prod" varStatus="outerLoop">
        <div class="card" id="card1_${outerLoop.index}" space_id="${prod.space_id}" onclick="window.location.href='/space?space_id=${prod.space_id}'">
            <a href="#" class="fimg"><img src="img/${prod.img1}" alt="이미지 6"  style="height: 200px;"></a>
            
             <br>
   
            
            <a class="demo">${prod.space_name}</a>
            <br>
            <a class="demo1">[${prod.location}]</a>
            <br>
            <a class="demo12"><strong>${prod.price}</strong>&nbsp;원/시간</a>
            <br>
        </div>
    </c:forEach>
    </div>
    <!-- 이거 있어야 한줄에 3개 나올수있 -->
    <c:if test="${outerLoop.index % 3 == 2}">
          <div style="flex-basis: 100%; height: 0;"></div>
    </c:if>
	</div>
	<br><br><br><br><br>
	<div>
		<a href="#"><h3 class="newleft">방금 올라온 후기</h3></a>
	</div>
	
	
	<div class="second13">
    <c:forEach items="${review}" var="review" varStatus="outerLoop">
        <c:if test="${outerLoop.index % 3 == 0}">
            <div class="card-container">
        </c:if>

        <div class="card" style="height: 500px;" id="card2_${outerLoop.index}" space_id="${review.space_id}" onclick="window.location.href='/space?space_id=${review.space_id}'">
            <a href="#" class="fimg"><img src="img/${review.img1}" alt="이미지 6" style="height: 200px; width: 300px !important;"></a>
            <br>
            <a class="demo">${review.space_name}</a>
            <br>
            <!-- 레이팅을 별로 바꿔야함 -->
             <div class="rating-container" data-rating="${review.rating}"></div>
        
             <a class="review2">${review.price}원/시간</a>
            
            <p class="review3">${review.review_content}</p>
          
        </div>

        <c:if test="${outerLoop.index % 3 == 2 || outerLoop.last}">
            </div>
        </c:if>
    </c:forEach>
</div>
<br><br><br><br>
&copy; 2023 Share Place
<br>
	<%@include file="footer.jsp"%>

</body>
<!-- script부분 전체 삭제 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		
		
		
		  function drawRatingStars(container, rating) {
		        const maxRating = 5; // 최대
		        const filledStar = "★";
		        const emptyStar = "☆"; 

		        let stars = '';
		        for (let i = 0; i < maxRating; i++) {
		            if (i < rating) {
		                stars += filledStar;
		            } else {
		                stars += emptyStar;
		            }
		        }

		        container.innerHTML = stars;
		    }

		  
		    const ratingContainers = document.querySelectorAll('.rating-container');
		    ratingContainers.forEach(container => {
		        const rating = parseInt(container.getAttribute('data-rating'));
		        drawRatingStars(container, rating);
		    });
		
		
		
		
		
		
		
		
		
		
		$(window).scroll(function() {
			$('.card12').each(function(i) {
				var bottom = $(this).offset().top + $(this).outerHeight();
				var bottom2 = $(window).scrollTop() + $(window).height();

				if (bottom2 > bottom / 2) {
					$(this).animate({
						'opacity' : '1'
					}, 500);
				}

			})
		});

		var toggleOpacity = true;

		$("#load").click(function() {
			$(".card12").animate({
				'opacity' : toggleOpacity ? '0' : '1'
			}, 500);
			toggleOpacity = !toggleOpacity;
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
