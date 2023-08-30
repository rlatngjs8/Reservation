<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d35ff5a43bbc9d6ce4be2d8cd14ddba0"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${space.space_name}</title>
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
            word-wrap: break-word;
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
            word-wrap: break-word;
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
		    top: 100px;
		    right: 20px;
		    width: 350px;
		    background-color: #ffffff; /* 흰색 배경 */
		    border: 1px solid #333; /* 검정색 테두리 */
		    padding: 20px;
		    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
		    transition: top 0.3s ease;
		    color: #333; /* 검정색 글자색 */
		}
		
		#datepicker {
		    width: 150px; /* 원하는 크기로 조정하세요 */
		    padding: 5px; /* 내부 여백 조정 */
		    font-size: 14px; /* 글자 크기 조정 */
		    border: 1px solid #ccc;
		    border-radius: 5px;
		}
		
		.time-picker table {
		    width: 100%;
		    border-collapse: collapse;
		    border: 1px solid #ccc;
		}
		
		.time-cell {
		    text-align: center;
		    padding: 10px;
		    border: 1px solid #ccc;
		    cursor: pointer;
		}
		
		.selected-time {
		    background-color: #333; /* 검정색 배경 */
		    color: #fff; /* 흰색 글자색 */
		}
		
		.price-text {
		    font-weight: bold;
		    font-size: 18px;
		    margin-top: 10px;
		    color: #333; /* 검정색 글자색 */
		}
		
		#btnReT,
		#btnReF {
		    background-color: #333; /* 검정색 배경 */
		    color: #fff; /* 흰색 글자색 */
		    border: none;
		    padding: 10px 20px;
		    margin-top: 10px;
		    cursor: pointer;
		    transition: background-color 0.3s ease, color 0.3s ease;
		}
		
		#addReT,#addReF { 
			background-color: #333; /* 검정색 배경 */
		    color: #fff; /* 흰색 글자색 */
		    border: none;
		    padding: 5px 5px;
		    margin-top: 10px;
		    cursor: pointer;
		    transition: background-color 0.3s ease, color 0.3s ease;
		
		}
		
		#btnReT:hover,
		#btnReF:hover {
		    background-color: #fff; /* 흰색 배경 */
		    color: #333; /* 검정색 글자색 */
		}
		
		#addedSlots {
		    font-size: 14px; /* 원하는 크기로 조정 */
		}
		.time-picker {
	  	    /* 기존 스타일 유지 */
		    position: relative; /* 부모 요소를 기준으로 위치 지정 */
		}
		
		.price-container {
		    display: flex;
		    align-items: center;
		    justify-content: space-between;
		    margin-top: 20px; /* 적절한 여백 조절 */
		}
		
		#totalPrice {
		    /* 기존 스타일 유지 */
		    margin: 0; /* 기존 여백 제거 */
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
            
            <div id="wrapper">
                <div class="bxslider">
                    <div>
                        <img src="img/${space.img1}" title="slider 1">
                    </div>
                    <div>
                        <img src="img/${space.img2}" title="slider 2">
                    </div>
                    <div>
                        <img src="img/${space.img3}" title="slider 3">
                    </div>
                    <div>
                        <img src="img/${space.img4}" title="slider 4">
                    </div>
                    <div>
                        <img src="img/${space.img5}" title="slider 5">
                    </div>
                </div>
            </div>
            
            <div class="space-introduction" style="display: flex; align-items: center;">
                <h3></h3>
                <img src="img/user.png" style="width: 50px; height: 50px; margin-right: 10px;">
                <p style="margin-right: 20px;">최대 인원수: ${space.capacity} 명</p>
                <img src="img/wide.png" style="width: 50px; height: 50px; margin-right: 10px;">
                <p>${space.extent}m²</p>
                <h3 style="margin-left: auto;">시간당 가격:${space.price }원</h3>
            </div>
            
            <!-- -@@@@@@@@@@@@@@@@@@@@예약 진행 -->
            <div class="reservation-window" id="reservationWindow">
                <h2>예약 진행</h2>
				<h3>날짜 선택</h3>
				<div class="date-picker">
				    <input type="text" id="datepicker" placeholder="날짜 선택">
				</div>
				<h3>시간 선택</h3>
				<h4>시간당 가격: ${space.price}원</h4>
				<div class="time-picker">
					<table>
				        <tr>
				            <td class="time-cell">09:00 AM</td>
				            <td class="time-cell">10:00 AM</td>
				            <td class="time-cell">11:00 AM</td>
				          	<td class="time-cell">12:00 PM</td>
				            <td class="time-cell">01:00 PM</td>
				        </tr>
				        <tr>
				            <td class="time-cell">02:00 PM</td>
				            <td class="time-cell">03:00 PM</td>
				            <td class="time-cell">04:00 PM</td>
				          	<td class="time-cell">05:00 PM</td>
				            <td class="time-cell">06:00 PM</td>
				        </tr>
				        <tr>
				            <td class="time-cell">07:00 PM</td>
				            <td class="time-cell">08:00 PM</td>
				            <td class="time-cell">09:00 PM</td>
				          	<td class="time-cell">10:00 PM</td>
				        </tr>
				    </table>
				    <div class="price-text" id="totalPrice">총 가격: 0원</div>
				    <c:if test="${not empty sessionScope.username}">
				    <button id="addReT">추가하기 </button>
					</c:if> 
					<c:if test="${empty sessionScope.username}">
				    <button id="addReF">추가하기</button>
					</c:if>
					
				    <div id="addedSlots"></div> <!-- 추가버튼을 누르면 들어가는 곳  -->
				</div>
				
				<br>
				<c:if test="${not empty sessionScope.username}">
				    <button id="btnReT">지금 예약하기</button>
				</c:if>
				<c:if test="${empty sessionScope.username}">
				    <button id="btnReF">지금 예약하기</button>
				</c:if>
            </div>
            
            <div id='imgurlList'>
                
            </div>
            
            <div id='spaceList'>
                <!-- 제품 미리보기 들어가는 곳 -->    
            </div>
            
            <div class="space-rules" style="word-wrap: break-word;">
                <h3>장소 소개 및 이용 규칙</h3>
                <ul>
                    <li><div style="white-space: pre-line;"><c:out value="${space.description.trim()}" /></div></li>
                </ul>
            </div>

            <div class="location-info">
                <h3>위치</h3> <!-- 카카오 지도 부분 -->
                <div id="map" style="width:500px;height:400px;"></div>
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
            
            <div class='review'> Review
            
            </div>
        </section>
    </main>
    <footer>
        <p>Contact us at example@example.com for inquiries.</p>
    </footer>
</body>
<script>
let selectedTimeSlots = [];
$(document).ready(function () {


    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd',
        minDate: new Date(),
        onSelect: function(dateText, inst) {
            $("#selectedDate").text("선택한 날짜: " + dateText);
        }
    });

    $(".time-cell").click(function() {
        $(this).toggleClass("selected-time");

        // 선택한 시간 변수에 저장
        selectedTime = [];
        $(".selected-time").each(function() {
            selectedTime.push($(this).text());
        });

        // calculatePrice(); // calculatePrice 함수 호출 추가
    });

    // 추가하기 버튼 클릭 시
    $("#addReT").click(function() {
        // 선택한 날짜와 시간 가져오기
        const selectedDate = $("#datepicker").val();
        const selectedTimes = $(".selected-time").map(function() {
            return $(this).text();
        }).get();

        let errorMessage = "";

        if (selectedDate === "" && selectedTimes.length === 0) {
            errorMessage = "날짜와 시간을 선택해주세요.";
        } else if (selectedDate === "") {
            errorMessage = "날짜를 선택해주세요.";
        } else if (selectedTimes.length === 0) {
            errorMessage = "시간을 선택해주세요.";
        }

        if (errorMessage !== "") {
            alert(errorMessage);
            return; // 함수 종료
        }

        // 선택한 날짜와 시간을 배열에 추가
        selectedTimeSlots.push({ date: selectedDate, times: selectedTimes });

        // 화면에 추가한 내용 표시
        const addedSlots = selectedTimeSlots.map(slot => {
            return "<p>" + slot.date + ": " + slot.times.join(', ') + "</p>";
        });

        $("#addedSlots").html(addedSlots.join(''));

        // 선택된 시간 초기화
        $(".selected-time").removeClass("selected-time");

        calculateTotalPrice(); // 총 가격 계산 함수 호출 추가
    });
});

function calculateTotalPrice() {
    const hourPrice = parseInt("${space.price}"); // 시간당 가격 설정, 필요에 따라 수정

    let total = 0;
    for (let i = 0; i < selectedTimeSlots.length; i++) {
        const selectedHours = selectedTimeSlots[i].times.length;
        const slotTotalPrice = selectedHours * hourPrice;
        total += slotTotalPrice;
    }

    $("#totalPrice").text("총 가격: " + total + "원");
}

var selectedTime = "";

//데이터 불러오기
function get_space() { 
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

// 이미지 슬라이더
$(function () {
    $('.bxslider').bxSlider({
        slideWidth: 600,
        caption: true,
        auto: false,
        autoControl: true,
        stopAutoOnclick: true,
        adaptiveHeight: true,
        speed: 500,
    });
});

function btnReT() {
   	console.log('btnReT 불러옴');
    $.ajax({
        url: '/ReInsert',    
        data: {},
        type: 'post',
        dataType: 'json',
        success: function(data) {
            console.log(data);
        }
    });	
}


//-------------------------------------------------

const reservationWindow = document.getElementById('reservationWindow'); // 예약 창 띄우기
let reservationWindowTop = reservationWindow.offsetTop;

window.addEventListener('scroll', () => {
  const scrollY = window.scrollY;
  reservationWindow.style.top = reservationWindowTop + scrollY + 'px';
});

$(document).on('click', '#addReF', function() {
    alert("로그인을 해주세요.");
});

$(document).on('click', '#btnReT', function() {
    
});

$(document).on('click', '#btnReF', function() {
    alert("로그인을 해주세요.");
});
</script>
</html>
