<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 리스트</title>
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
  }
  .product {
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 1rem;
    margin-bottom: 1rem;
    display: flex;
  }
  .product img {
    max-width: 100px;
    margin-right: 1rem;
  }
  .product-info {
    flex: 1;
  }
  .product-title {
    font-size: 1.2rem;
    font-weight: bold;
    margin: 0;
  }
  .product-description {
    margin: 0.5rem 0;
  }
  .product-price {
    font-weight: bold;
    color: #f00;
  }
  .add-product-button {
    text-align: right;
    margin: 1rem 2rem;
  }
  
  
@font-face {
    font-family: 'MaplestoryOTFBold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
  

  #add-product-btn {
    background-color: #00aaff; /* 하늘색(파란색 계열) */
    color: #fff;
    border: none;
    border-radius: 10px; /* 둥근 테두리 */
    padding: 0.3rem 1rem; /* 좀 더 큰 크기 */
    cursor: pointer;
    font-size: 25px; /* 폰트 크기 조정 */
    box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.2); /* 그림자 효과 */
    transition: background-color 0.3s ease; /* 부드러운 전환 효과 */
    font-family: 'GmarketSansMedium';
  }
  #btnDelete{
  background-color: #FE2E2E; 
    color: #fff;
    border: none;
    border-radius: 10px; 
    padding: 0.3rem 1rem; 
    cursor: pointer;
    font-size: 25px; 
    box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.2); 
    transition: background-color 0.3s ease; 
    font-family: 'GmarketSansMedium';
  }
  
  #btnDelete:hover {
  	background-color: #F78181; 
  }
  
  #prev {
  	background-color: #A4A4A4; 
    color: black;
    border: none;
    border-radius: 10px; 
    padding: 0.3rem 1rem; 
    cursor: pointer;
    font-size: 1.1rem; 
    box-shadow: 0px 3px 5px rgba(0, 0, 0, 0.2); 
    transition: background-color 0.3s ease; 
    position:relative;
<<<<<<< HEAD
    margin-left: 20px;
    font-family: 'MaplestoryOTFBold';
=======
    top:63px;
    margin-left: 3px;
    font-family: 'GmarketSansMedium';
>>>>>>> branch 'master' of https://github.com/rlatngjs8/Reservation.git
    font-size: 25px;
  }
  
  #prev:hover{
  	background-color: #D8D8D8; 
  }

  #add-product-btn:hover {
    background-color: #0077cc; /* 더 진한 하늘색(파란색 계열) */
    }
    .selected {
  background-color: #ffc107; /* 원하는 색상으로 변경하세요 */
}


	@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h2,p {
	font-family: 'GmarketSansMedium';
}


     @font-face {
    font-family: 'SBAggroB';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h1 {
font-family: 'SBAggroB';
}
.button-group {
  display: flex;
  justify-content: space-between; /* 요소들을 가로로 고르게 분포시킴 */
  align-items: center; /* 요소들을 수직 가운데 정렬 */
}

.prev, .search-bar, .add-product-button {
  flex: 1; /* 각 요소를 동일한 너비로 설정 */
  margin-right: 10px; /* 요소들 사이 간격 조절 */
}



</style>
</head>
<body>
<header>
  <h1>상품 리스트</h1>
</header><br>
<div class="container">
	<div class="button-group">
			<!-- 글씨체 좀더 얌전한걸로 변경 -->
		<div class="prev">
			<button id="prev">관리자 메뉴</button>
		</div>
		<div class="search-bar">
			<form action="/productList1" method="GET">
		  <input type="text" id="search-input" name="keyword" placeholder="키워드 검색">
		  <button id="search-button">검색</button>
		  </form>
		</div>
		<div class="add-product-button">
		  <button id="add-product-btn">상품추가</button>&nbsp;&nbsp;&nbsp;
		  <button id="btnDelete">상품삭제</button>
		</div>
	</div>
<br><br>
  <c:forEach items="${plist}" var="prod">
    <div class="product" data-space_id="${prod.space_id}">
<%--       <img src="${prod.image}" alt="${product.name}"> --%>
      <div class="space-info">
      	<h2>${prod.space_id}</h2>
        <h2 class="space_name">${prod.space_name}</h2>
        <p class="space_type">${prod.space_type}</p>
        <p class="space-price">${prod.location}</p>
        <p class="space-price">${prod.mobile}</p>

      </div>
    </div>
  </c:forEach>
 	<div align="left">${pagestr}</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	 
	  // 제품을 클릭했을 때 처리
	  $(document).on('click', '.product', function() {
	    // 이전에 선택된 항목의 클래스 제거
	    $('.product.selected').removeClass('selected');

	    // 현재 선택된 항목에 클래스 추가
	    $(this).addClass('selected');
	  });
	
	$(document).on('click','#btnDelete',function(){
		var deleteProd = $('.product.selected');
		if(deleteProd.length == 0) {
			alert("삭제할 상품을 선택하세요.");
			return;
		}
		var confirmDelete = confirm("정말로 선택한 상품을 삭제하시겠습니까?");
		if(confirmDelete){
			var space_id = deleteProd.data("space_id");
			console.log("삭제 상품번호: "+ space_id);
			$.ajax({
				url:'/prodDelete',
				data: {space_id:space_id},
				type:'post',
				dataType:'text',
				success: function(data){
					console.log("삭제성공");
					deleteProd.remove();
					alert("삭제가 완료되었습니다.");
				},fail:function(){
					console.log("실패");
				}
			})
		}
		
	})
});
	$(document).on('click', '#add-product-btn', function() {
	  window.location.href = "/addProduct";
	});

	$(document).on('dblclick', '.product', function() {
	  var space_id = $(this).data("space_id");
	  window.location.href = "/productView?id=" + space_id;
	})
	
	$(document)
	.on('click','#prev',function(){
		window.location.href = "/manager"
		
	})
	
	;
</script>
</html>