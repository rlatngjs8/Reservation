<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${space.space_name }</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
        }

        main {
            padding: 20px;
        }

        .space-details {
            border: 1px solid #ccc;
            padding: 20px;
            margin: 10px;
            background-color: #f9f9f9;
        }

        .space-image img {
            max-width: 100%;
            height: auto;
        }

        .space-introduction {
            margin-top: 20px;
        }

        .space-rules, .location-info {
            margin-top: 20px;
            border-top: 1px solid #ccc;
            padding-top: 10px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
        }
        
        /* 추가된 스타일 */
		.reservation-window {
		  position: absolute;
		  top: 500px;
		  right: 20px;
		  width: 300px;
		  background-color: white;
		  border: 1px solid #ccc;
		  padding: 20px;
		  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
		  transition: top 0.3s ease;
		}
		
		.container {
		  width: 300vw;
		  transform: translate(-100vw)
		}
		
		.inner {
		  width: 100vw;
		  float: left;
		}
		
    </style>
</head>
<body>
	<header style="display: flex; justify-content: flex-end; align-items: center;">
	    <h1>${space.space_name}</h1>
	    <div style="margin-left: auto;">
	        <c:if test="${not empty sessionScope.username}">
	            <a href="/logout">로그아웃</a>
	            <p>로그인한 아이디: ${sessionScope.username}</p>
	        </c:if>
	        
	        <!-- 로그인되지 않은 상태일 때 -->
	        <c:if test="${empty sessionScope.username}">
	            <a href="/login">로그인</a>
	            <a href="/signup">회원가입</a>
	        </c:if>
	    </div>
	</header>

    
    <main>
        <section class="space-details" style="max-width: 70%;">
            <h2>${space.space_name}</h2>
            <!-- 
    		 <div class="space-image">
                <div><img src="img/${space.img1}" alt="Space Image" style="width:60%;height:60%;"></div>

         
            </div>  -->
                 
            
            <div class="space-introduction">
                <h3></h3>
                <img src="img/user.png" style="width:50px;height:50px;">
                <p>최대 인원수 : ${space.capacity}  명</p>
                <img src="img/wide.png" style="width:50px;height:50px;">
                <p>${space.extent}m²</p>
                <p>Price: $X per hour</p>
            </div>
            
         	
			<div class="reservation-window" id="reservationWindow">
			    <h2>예약 진행</h2>
			    <p>가격: ${space.price}원/시간</p>
			    <h3>스케줄 선택</h3>
			    <div class="time-slots">
			        <select id="timeSlot">
			            <option value="09:00">09:00 AM</option>
			            <option value="12:00">12:00 PM</option>
			            <option value="15:00">03:00 PM</option>
			            <!-- 다른 시간대 옵션 추가 -->
			        </select>
			        <!-- 로그인 상태 -->
			       	<c:if test="${not empty sessionScope.username}">
	           		<button id="btnReT">지금 예약하기</button>
	        		</c:if>
	    
	       				 <!-- 로그인되지 않은 상태일 때 -->
				    <c:if test="${empty sessionScope.username}">
				    <button id=btnReF>지금 예약하기</button>
					</c:if>
			    </div>
			</div>
            
            <div id='imgurlList'>
            
            </div>
            
            <div id='spaceList'>
                <!-- 제품 미리보기 들어가는 곳 -->    
            </div>
            
            <div class="space-rules">
                <h3>장소 소개 및 이용 규칙</h3>
                <ul>
                    <li><div style="white-space: pre;"><c:out value="${space.description.trim()}" /></div></li>
                </ul>
            </div>
            <div class="location-info">
                <h3>위치</h3> <!-- 카카오 지도 부분 -->
                <div id="map" style="width:500px;height:400px;"></div>
                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d35ff5a43bbc9d6ce4be2d8cd14ddba0"></script>
                <script>
                var container = document.getElementById('map');
                var options = {
                    center: new kakao.maps.LatLng(37.511591207849, 127.03299413456), // 지도 중심 좌표
                    level: 3
                };
                var map = new kakao.maps.Map(container, options);
                </script>
                <p>자세한 주소는 호스트 승인 후, 메시지로 문의 가능합니다.</p>
                <p>전화번호: ${space.mobile}</p>
            </div>
            
            <div class='review'>
            
            </div>
        </section>
    </main>
    <footer>
        <p>Contact us at example@example.com for inquiries.</p>
    </footer>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d35ff5a43bbc9d6ce4be2d8cd14ddba0"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function () {
    get_space();    
});

function get_space() { // 데이터 불러오기
    console.log('space 불러옴');
    $.ajax({
        url: '/get_space',    
        data: {},
        type: 'post',
        dataType: 'json',
        success: function(data) {
            console.log(data);
        }
    });
}


const reservationWindow = document.getElementById('reservationWindow'); // 예약 창 띄우기
let reservationWindowTop = reservationWindow.offsetTop;

window.addEventListener('scroll', () => {
  const scrollY = window.scrollY;

  reservationWindow.style.top = reservationWindowTop + scrollY + 'px';
});

$(document).on('click', '#btnReT', function() {
    alert("로그인이 완료되었습니다.");
});

$(document).on('click', '#btnReF', function() {
    alert("로그인을 해주세요.");
});



</script>
</html>
