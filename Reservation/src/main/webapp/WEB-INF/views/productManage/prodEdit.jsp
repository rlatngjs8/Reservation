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
    margin: 0 auto;
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
    margin: 1rem; /* Add some margin around each form-section */
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
    width: 100%;
    padding: 0.5rem;
    border: 1px solid #ddd;
    border-radius: 5px;
  }
  textarea {
    resize: vertical;
  }
  .submit-button {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 0.7rem 1.5rem;
    cursor: pointer;
    font-size: 1.1rem;
  }
  .clearfix {
    clear: both;
  }
  .image-input {
    margin-bottom: 0.5rem;
  }
</style>
</head>
<body>
<header>
  <h1>상품 수정</h1>
</header>
<form action="/prodModify" method="post" enctype="multipart/form-data" id=frmUpdate name=frmUpdate>
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
        <input type="file" id="image1" name="image1" accept="image/*">${ppost.img1}
      </div>
      <div class="image-input">
        <label for="image2">이미지 첨부 2:</label>
        <input type="file" id="image2" name="image2" accept="image/*">${ppost.img2}
      </div>
      <div class="image-input">
        <label for="image3">이미지 첨부 3:</label>
        <input type="file" id="image3" name="image3" accept="image/*">${ppost.img3}
      </div>
      <div class="image-input">
        <label for="image4">이미지 첨부 4:</label>
        <input type="file" id="image4" name="image4" accept="image/*">${ppost.img4}
      </div>
      <div class="image-input">
        <label for="image5">이미지 첨부 5:</label>
        <input type="file" id="image5" name="image5" accept="image/*">${ppost.img5}
      </div>
  </div>
</div>
<div class="container">
  <div class="form-section">
      <label for="description">상세 설명:</label>
      <textarea id="description" name="description" rows="30" required>${ppost.description}</textarea>
      <!-- 상세 설명과 관련된 필드들을 여기에 추가 -->
      <input type="submit" value="수정" class="submit-button" id="btnSubmit">
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

</script>
</html>
