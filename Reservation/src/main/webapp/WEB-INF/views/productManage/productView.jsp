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
  
</style>
<body>
테스트
  <header>
    <h1>상품 상세 보기</h1>
  </header><br>
  <button id=btnEdit>상품수정</button>
  <div class="container">
    <h2>상품 정보</h2>
    <div class="slider">
      <div><img src="img/${product.img1}" alt="Image 1"></div>
      <div><img src="img/${product.img2}" alt="Image 2"></div>
      <div><img src="img/${product.img3}" alt="Image 3"></div>
      <div><img src="img/${product.img4}" alt="Image 4"></div>
      <div><img src="img/${product.img5}" alt="Image 5"></div>
    </div>
    <div>
    <p id='spcae_id'>상품 번호: ${product.space_id}</p>
    <p>상품 이름: ${product.space_name}</p>
    <p>상품 유형: ${product.space_type}</p>
    <p>위치: ${product.location}</p>
    <p>평수: ${product.extent}평</p>
    <p>수용인원: ${product.capacity}명</p>
    <p>시간당 가격: ${product.price}원</p>
    <p>전화번호: ${product.mobile}</p>
  </div>
  <div style=" word-wrap: break-word; white-space: pre-line;"><p>상세설명:</p><br><c:out value="${product.description}" /></div>
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
$(document).on('click','#btnEdit',function(){
	window.location.href = "/prodEdit?space_id=" + ${product.space_id};
	return false;
})
    
</script>
</html>