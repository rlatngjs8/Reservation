<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 수정</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
  }
  header {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
  }
  .container {
    max-width: 1000px;
    margin: 2rem auto 0; /* Add top margin to container and remove bottom margin */
    padding: 2rem;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: row; /* Change flex direction to row */
    flex-wrap: wrap; /* Allow wrapping of form-sections */
  }
  .form-section {
    flex: 1;
    width: calc(33.33% - 2rem); /* Divide into 3 equal columns with spacing */
    margin: 1rem; /* Add margin around each form-section */
    padding: 1.5rem; /* Add padding to form sections */
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
  }
  .form-section label {
    font-weight: bold;
    display: block;
    margin-bottom: 0.5rem;
  }
  input[type="text"],
  input[type="number"],
  textarea,
  input[type="file"] {
    width: 80%;
    padding: 0.5rem;
    margin-bottom: 1rem;
    border: 1px solid #ddd;
    border-radius: 5px;
  }
  textarea {
    resize: vertical;
    width: 100%;
  }
  .clearfix {
    clear: both;
  }
  .image-input {
    margin-bottom: 1rem; /* Reduce vertical margin for image-input */
  }

  /* 스타일링된 이미지 제거 버튼 */
  .remove-image-button {
    background-color: #ff4444; /* 버튼 배경색 */
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 0.3rem 1rem; /* 버튼 내부 여백 조절 */
    cursor: pointer;
    font-size: 0.9rem; /* 버튼 폰트 크기 조절 */
    margin-top: -15px; /* 이미지 제거 버튼과 상단 간격 조절 */
  }

  /* 버튼 두 개의 스타일 수정 */
  .button {
    text-align: center;
    margin-top: 1.5rem;
  }

  .submit-button,
  .cancel-button {
    text-decoration: none;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 0.7rem 2rem;
    cursor: pointer;
    font-size: 1.1rem;
    margin-right: 20px;
    height: 50px;
  }

  .submit-button {
    background-color: #607d8b;
  }

  .cancel-button {
    background-color: #f57c00;
    height: 60px;
  }

  .submit-button:hover,
  .cancel-button:hover {
    background-color: #0056b3;
  }
  .centered-button-container {
    text-align: center;
  }
  
  .product-list-link, .product-list-link1 {
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
/*     font-size: 1.0rem; */
/*     margin-right: 20px; /* 두 버튼 사이 간격 늘리기 */ */
/*     margin-bottom: 10px; /* 버튼 아래 여백 추가 */ */
/*     height: 44px; /* 높이 추가 */ */
/* } */

.cancel-button {

    text-decoration: none;
    background-color: #f57c00; /* 수정 필요 */
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 0.7rem 3rem; /* 넓이 늘리기 */
    cursor: pointer;
    font-size: 1.1rem;
    margin-right: 20px; /* 두 버튼 사이 간격 늘리기 */
    margin-bottom: 10px; /* 버튼 아래 여백 추가 */
    height: 60px; /* 높이 추가 */
    
}

.submit-button:hover, .cancel-button:hover {
    background-color: #0056b3;
}
/* >>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git */
</style>
</head>
<body>
<header>
  <h1>상품 수정</h1>
</header>
<form action="/prodModify" method="post" enctype="multipart/form-data" id=frmUpdate name=frmUpdate>
	<div class="centered-button-container">
  	<a href="/manager" class="product-list-link1">관리자메뉴</a>&nbsp;&nbsp;&nbsp;
  	<a href="/productList" class="product-list-link">상품리스트</a>
	</div>
<div class="container">
  <div class="form-section">
  		<input type=hidden id=space_id name=space_id value="${ppost.space_id}">
      <label for="space_name">상품 이름:</label>
      <input type="text" id="space_name" name="space_name" value="${ppost.space_name}" required>
      
      <label for="space_type">상품 타입:</label>
      <input type="text" id="space_type" name="space_type" value="${ppost.space_type}"required>
      
      <label for="location">위치:</label>
      <input type="text" id="location" name="location" value="${ppost.location}"required>
      
      <label for="extent">평수:</label>
      <input type="number" id="extent" name="extent" value="${ppost.extent}" required>
      
      <label for="capacity">수용인원:</label>
      <input type="number" id="capacity" name="capacity" value="${ppost.capacity}"required>
      
      <label for="price">시간당 가격:</label>
      <input type="number" id="price" name="price" value="${ppost.price}"required>
      
      <label for="mobile">전화번호:</label>
      <input type="text" id="mobile" name="mobile" value="${ppost.mobile}" required>
  </div>
  <div class="form-section">
      <div class="image-input">
        <label for="image1">이미지 첨부 1:</label>
        <input type="file" id="image1" name="image1" accept="image/*">
        <input type="text" id="prev_image1" name="prev_image1" value="${ppost.img1}" style="display: none;"><br>
        <button type="button" class="remove-image-button" data-image="image1">이미지 제거</button>
        <span id="image1Removed" style="color: red; display: none; font-weight: bold;">기존 이미지 제거됨</span>
      </div>
      <div class="image-input">
        <label for="image2">이미지 첨부 2:</label>
        <input type="file" id="image2" name="image2" accept="image/*">
        <input type="text" id="prev_image2" name="prev_image2" value="${ppost.img2}" style="display: none;">
        <button type="button" class="remove-image-button" data-image="image2">이미지 제거</button>
        <span id="image2Removed" style="color: red; display: none; font-weight: bold;">기존 이미지 제거됨</span>
      </div>
      <div class="image-input">
        <label for="image3">이미지 첨부 3:</label>
        <input type="file" id="image3" name="image3" accept="image/*">
        <input type="text" id="prev_image3" name="prev_image3" value="${ppost.img3}" style="display: none;">
        <button type="button" class="remove-image-button" data-image="image3">이미지 제거</button>
        <span id="image3Removed" style="color: red; display: none; font-weight: bold;">기존 이미지 제거됨</span>
      </div>
      <div class="image-input">
        <label for="image4">이미지 첨부 4:</label>
        <input type="file" id="image4" name="image4" accept="image/*">
        <input type="text" id="prev_image4" name="prev_image4" value="${ppost.img4}" style="display: none;">
        <button type="button" class="remove-image-button" data-image="image4">이미지 제거</button>
        <span id="image4Removed" style="color: red; display: none; font-weight: bold;">기존 이미지 제거됨</span>
      </div>
      <div class="image-input">
        <label for="image5">이미지 첨부 5:</label>
        <input type="file" id="image5" name="image5" accept="image/*">
        <input type="text" id="prev_image5" name="prev_image5" value="${ppost.img5}" style="display: none;">
        <button type="button" class="remove-image-button" data-image="image5">이미지 제거</button>
        <span id="image5Removed" style="color: red; display: none; font-weight: bold;">기존 이미지 제거됨</span>
      </div>
  </div>
</div>
<div class="container">
  <div class="form-section">
      <label for="description">상세 설명:</label>
      <textarea id="description" name="description" rows="30" required>${ppost.description}</textarea>
      <!-- 상세 설명과 관련된 필드들을 여기에 추가 -->
      <br><br>
 <div class="button">
	<a href="productView?id=${ppost.space_id}" class="cancel-button">취소</a>&nbsp;
	<input type="submit" value="수정" class="submit-button" id="btnSubmit">
</div>
  </div>
</div>
</form>
</body>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
$(document).on('click','#btnSubmit',function(){
	if($('#space_name').val() == ''){
		alert('상품명을 입력하시오'); return false;
	}	
	if($('#space_type').val() == ''){
		alert('유형을 입력하시오'); return false;
	}	
	if($('#location').val() == ''){
		alert('위치를 입력하시오'); return false;
	}	
	if($('#extent').val() == ''){
		alert('면적을 입력하시오'); return false;
	}	
	if($('#capacity').val() == ''){
		alert('수용인원을 입력하시오'); return false;
	}	
	if($('#price').val() == ''){
		alert('시간당 가격을 입력하시오'); return false;
	}	
	if($('#mobile').val() == ''){
		alert('전화번호을 입력하시오'); return false;
	}	
	if($('#description').val() == ''){
		alert('상세설명을 입력하시오'); return false;
	}	
})
// 이미지 제거 버튼에 대한 JavaScript 코드 추가
$(document).on('click', '.remove-image-button', function() {
    var imageInputId = $(this).data('image');
    var imageInput = $('#' + imageInputId);
    var prevImageInput = $('#prev_' + imageInputId);
    var imageRemovedSpan = $('#' + imageInputId + 'Removed');
    imageRemovedSpan.show(); // 이미지가 제거되었음을 표시
    
    // 이미지 제거 버튼을 누르면 이미지 입력 필드와 이전 이미지 경로 필드를 초기화
    imageInput.val('');
    prevImageInput.val('');
});
$(document).on('click','#btnSubmit',function(){
	alert("수정이 완료되었습니다.");
})

</script>
</html>
