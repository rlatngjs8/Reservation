<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 상세 보기</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }

  header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 1em 0;
  }

  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  .slider {
    margin-top: 20px;
  }

  .slider img {
    max-width: 100%;
    height: auto;
  }

  .slick-dots {
    text-align: center;
    margin-top: 10px;
  }

  .slick-dots li {
    display: inline-block;
    margin: 0 4px;
  }
  
<<<<<<< HEAD
  .centered-button-container {
    text-align: center;
  }
  .product-list-link, .product-list-link1, .product-list-link2{
    text-decoration: none;
    background-color: #4c95a9;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 0.7rem 1.5rem;
    cursor: pointer;
    font-size: 1.1rem;
    margin-top: 2rem;
    display: inline-block;
  }
  .product-list-link {
    background-color: #4c95a9;
  }
  .product-list-link1 {
    background-color: #00e1b5;
  }
  .product-list-link2 {
  	background-color: #a0a94c;
  }
  .product-list-link:hover,
	.product-list-link1:hover,
	.product-list-link2:hover {
	  background-color: #4CAF50; /* 호버 시 배경색 변경 */
}
  /* 수정된 스타일 */
  #btnEdit {
box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
	background-color:#ffffff;
	border-radius:10px;
	border:1px solid black;
	display:inline-block;
	cursor:pointer;
	color:#666666;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:8px 14px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
  margin-left:21%;
	position:relative;
	
	top:100px;
  }
  
 .btnEdit:hover {
	background:linear-gradient(to bottom, #f6f6f6 5%, #ffffff 100%);
	background-color:#f6f6f6;
}
.btnEdit:active {
	position:relative;
	top:1px;
}



.btnPrev {
	box-shadow:inset 0px 1px 0px 0px #91b8b3;
	background:linear-gradient(to bottom, #768d87 5%, #6c7c7c 100%);
	background-color:#768d87;
	border-radius:10px;
	border:1px solid black;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:8px 14px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2b665e;
	
	position:relative;
	
	right:94px;
	top:40px;
}
.btnPrev:hover {
	background:linear-gradient(to bottom, #6c7c7c 5%, #768d87 100%);
	background-color:#6c7c7c;
}



@font-face {
    font-family: 'GangwonEduPowerExtraBoldA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

div {
	font-family: 'GangwonEduPowerExtraBoldA';
	font-size : 20px;
}

/* 이미지 크기 조절 */
 img {
  max-width: 100%;
  height: auto;
  margin: 0 auto;
}

/* 슬라이더 내 이미지 간 간격 설정 (옵션) */
.slider {
  margin: 0 5px; /* 이미지 간격 조절 */
}

  .slider img {
    width: 100%; /* Set the width to 100% to make images responsive */
    height: 400px; /* Allow images to maintain their aspect ratio */
  }

  /* Optionally, you can set a max-height for the slider to control its size */
  .slider {
    max-height: 400px; /* Adjust this value as needed 


<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git
</style>
<body>
  <header>
    <h1>상품 상세 보기</h1>
  </header><br>
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git
  <div class="centered-button-container">
  	<a href="/manager" class="product-list-link1">관리자메뉴</a>&nbsp;&nbsp;&nbsp;
  	<a href="/productList" class="product-list-link">상품리스트</a>&nbsp;&nbsp;&nbsp;
  	<button id="btnEdit" class="product-list-link2">상품수정</button>
	</div><br>
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git
  
  <!-- 수정된 버튼 ID 적용 -->
  <button id="btnEdit">상품수정</button>
  <button id="btnPrev" class="btnPrev">이전화면</button>

  <div class="container">
    <h2 align=center>상품 정보</h2>
    <div class="slider">
      <div><img src="img/${product.img1}" alt="Image 1"></div>
      <div><img src="img/${product.img2}" alt="Image 2"></div>
      <div><img src="img/${product.img3}" alt="Image 3"></div>
      <div><img src="img/${product.img4}" alt="Image 4"></div>
      <div><img src="img/${product.img5}" alt="Image 5"></div>
    </div>
    <div>
    <hr/>
      <p id='spcae_id'>상품 번호: ${product.space_id}</p>
      <p>상품 이름: ${product.space_name}</p>
      <p>상품 유형: ${product.space_type}</p>
      <p>위치: ${product.location}</p>
      <p>평수: ${product.extent}평</p>
      <p>수용인원: ${product.capacity}명</p>
      <p>시간당 가격: ${product.price}원</p>
      <p>전화번호: ${product.mobile}</p>
      <hr/>
    </div>
    
    
    <div style=" word-wrap: break-word; white-space: pre-line;">
      <p>상세설명:</p>
      <c:out value="${product.description}" />
    </div>
  </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script>



// 슬라이더 초기화
$('.slider').slick({
  dots: true,
  autoplay: true,
  autoplaySpeed: 3000,
});

$(document)
.on('click','#btnPrev',function(){
	window.location.href="/productList";
	
})

.on('click','#btnEdit',function(){
	window.location.href = "/prodEdit?space_id=${product.space_id}";
	return false;
})
    
</script>
</html>
