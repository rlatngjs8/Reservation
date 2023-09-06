<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
	
	.space-rules, .location-info, .review, .review_content {
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
	
	.selected-start-time {
		background-color: #C8A2C8; /* 검정색 배경 */
		color: #333; /* 흰색 글자색 */
	}
	
	.selected-end-time {
		background-color: #C8A2C8; /* 검정색 배경 */
		color: #333; /* 흰색 글자색 */
	}
	
	.price-text {
		font-weight: bold;
		font-size: 18px;
		margin-top: 10px;
		color: #333; /* 검정색 글자색 */
	}
	
	#btnReT, #btnReF {
		background-color: #333; /* 검정색 배경 */
		color: #fff; /* 흰색 글자색 */
		border: none;
		padding: 10px 20px;
		margin-top: 10px;
		cursor: pointer;
		transition: background-color 0.3s ease, color 0.3s ease;
	}
	
	#addReT, #addReF {
		background-color: #333; /* 검정색 배경 */
		color: #fff; /* 흰색 글자색 */
		border: none;
		padding: 5px 5px;
		margin-top: 10px;
		cursor: pointer;
		transition: background-color 0.3s ease, color 0.3s ease;
	}
	
	#btnReT:hover, #btnReF:hover {
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
	.container {
      width: 400px;
      background-color: #fff;
      padding: 20px 30px;
      border: 1px solid #ddd;
      border-radius: 5px;
      text-align: center;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .post {
      display: none;
    }

    .text {
      font-size: 25px;
      color: #333;
      font-weight: 500;
    }

    .edit {
      position: absolute;
      right: 10px;
      top: 5px;
      font-size: 16px;
      color: #666;
      font-weight: 500;
      cursor: pointer;
    }

    .edit:hover {
      text-decoration: underline;
    }

    .star-widget input {
      display: none;
    }

    .star-widget label {
      font-size: 40px;
      color: #444;
      padding: 10px;
      float: right;
      transition: all 0.2s ease;
    }

    .star-widget input:not(:checked) ~ label:hover,
    .star-widget input:not(:checked) ~ label:hover ~ label {
      color: #fd4;
    }

    .star-widget input:checked ~ label {
      color: #fd4;
    }

    .star-widget input#rate-5:checked ~ label {
      color: #fe7;
      text-shadow: 0 0 20px #952;
    }

    .star-widget input:checked ~ form {
      display: block;
    }

    form header {
      font-size: 25px;
      color: #fe7;
      font-weight: 500;
      margin: 5px 0 20px;
      transition: all 0.2s ease;
    }

    form .textarea textarea {
      height: 150px;
      width: 100%;
      outline: none;
      color: #333;
      border: 1px solid #ccc;
      background: #f8f8f8;
      padding: 10px;
      font-size: 17px;
      resize: none;
    }

    .btn button {
      height: 45px;
      border: 1px solid #444;
      outline: none;
      background: #222;
      color: #fff;
      font-size: 17px;
      font-weight: 500;
      text-transform: uppercase;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .btn button:hover {
      background: #1b1b1b;
    }

    /* Dialog Styles */
    #dialog-form {
      display: none;
    }

    .ui-dialog {
     
     max-width: 450px;
     max-height: 500px;
   	 background-color: #ffffff;
    }

    .ui-dialog-titlebar {
      display: none;
    }

    .ui-dialog-content {
      padding: 0;
      overflow: hidden;
       /* Disable scrollbar */
    }

    .ui-dialog-buttonpane {
      display: flex;
      justify-content: flex-end;
      padding: 0 20px 20px;
      background-color: transparent;
      border-top: none;
    }

    .ui-dialog-buttonset {
      margin: 0;
    }

    .ui-dialog-buttonset button {
      border: none;
      outline: none;
      background: transparent;
      color: #999;
      font-size: 17px;
      font-weight: 500;
      text-transform: uppercase;
      cursor: pointer;
      transition: all 0.3s ease;
      padding: 0;
      margin-left: 10px;
    }

    .ui-dialog-buttonset button.close-button {
      font-size: 20px;
      margin-left: auto;
    }

    .ui-dialog-buttonset button:hover {
      color: #1b1b1b;
    }

    .ui-dialog-content .star-widget {
      padding: 20px 30px;
    }

    .star-widget {
      width: 386px; /* Adjust the width as desired */
      height: 100px; /* Adjust the height as desired */
      padding: 20px 30px;
      box-sizing: border-box;
      margin: 0 auto;
    }

    .ui-dialog-content form header {
      margin: 0 0 20px;
    }

    .ui-dialog-content form .textarea {
      height: 150px;
      margin-bottom: 20px;
    }

    .ui-dialog-content .btn {
      margin: 0;
    }

    .review-header { 
      font-size: 20px;
      color: #0;
      font-weight: 500;
      margin-bottom: 15px;
    }
    
    #review_content {
        width: 97%; /* 원하는 넓이로 조절하세요 */
        height: 100%;
        padding: 0px;
        resize: none;
    }
    
	.review {
    border: 1px solid #ccc;
    padding: 10px;
    margin: 10px;
    background-color: #f9f9f9;
	}
	
	.review h4 {
	    font-size: 18px;
	    font-weight: bold;
	}
	
	.review p {
	    font-size: 14px;
	}
	
	.yellow-star {
        color: yellow;
        text-shadow: 0 0 5px black;
    }
    
	    /* 선택한 시간대를 강조 표시하는 스타일 */
	.duplicate-time-range {
	    background-color: #ffcccb; /* 강조 색상 설정 */
	}
	
	.highlighted-time-range {
		background-color: #C8A2C8;
	}
	/* 예약된 시간대의 스타일 */
	.re_highlighted-time-range{
	    background-color: #696969; /* 초록색 배경색 */
	}
	
	.re_selected-start-time {
		background-color: #696969; /* 검정색 배경 */
		color: #333; /* 흰색 글자색 */
	}
	
	.re_selected-end-time {
		background-color: #696969; /* 검정색 배경 */
		color: #333; /* 흰색 글자색 */
	}
	
</style>
</head>
<body>
    <input type='hidden' id='user_id' value="${sessionScope.userid}">
    <input type="hidden" id="space_id" value="${space.space_id }">
    <header style="display: flex; justify-content: flex-end; align-items: center;">
        <h1>${space.space_name}</h1>
        <div style="margin-left: auto;">
            <c:if test="${not empty sessionScope.userid}">
                <a href="/logout">로그아웃</a>
                <p>로그인한 아이디: ${sessionScope.name}</p>
            </c:if>

            <!-- 로그인되지 않은 상태일 때 -->
            <c:if test="${empty sessionScope.userid}">
                <a href="/login">로그인</a>
                <a href="/signup">회원가입</a>
            </c:if>
        </div>
    </header>

    <main>
        <section class="space-details" style="max-width: 70%;">
            <h2>${space.space_name}</h2>

            <div id="wrapper">
                <!-- 상품이미지 -->
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
                <!-- 상품 인원, 가격 -->
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
                <div id='date-picker' class="date-picker">
                    <input type="text" id="datepicker" placeholder="날짜 선택">
                </div>
                <h3>시간 선택</h3>
                <h4>시간당 가격: ${space.price}원</h4>
                <div class="time-picker">
                    <table>
                        <tr>
                            <td class="time-cell">09:00</td>
                            <td class="time-cell">10:00</td>
                            <td class="time-cell">11:00</td>
                            <td class="time-cell">12:00</td>
                            <td class="time-cell">13:00</td>
                        </tr>
                        <tr>
                            <td class="time-cell">14:00</td>
                            <td class="time-cell">15:00</td>
                            <td class="time-cell">16:00</td>
                            <td class="time-cell">17:00</td>
                            <td class="time-cell">18:00</td>
                        </tr>
                        <tr>
                            <td class="time-cell">19:00</td>
                            <td class="time-cell">20:00</td>
                            <td class="time-cell">21:00</td>
                            <td class="time-cell">22:00</td>
                        </tr>
                    </table>
                    <!--  -->
                    <div id="addedSlots"></div>
                    <!-- 추가버튼을 누르면 들어가는 곳  -->
                </div>

                <br>
                <div class="price-text" id="totalPrice">총 가격: 0원</div>
                <!--  로그인했을때 버튼 -->
                <c:if test="${not empty sessionScope.userid}">
                    <button id="btnReT">예약 신청하기</button>
                </c:if>
                <!-- 로그인안했을때 버튼 -->
                <c:if test="${empty sessionScope.userid}">
                    <button id="btnReF">예약 신청하기</button>
                </c:if>
            </div>

            <div id='imgurlList'></div>

            <div id='spaceList'>
                <!-- 제품 미리보기 들어가는 곳 -->
            </div>

            <div class="space-rules" style="word-wrap: break-word;">
                <h3>장소 소개 및 이용 규칙</h3>
                <ul>
                    <li>
                        <div style="white-space: pre-line;">
                            <c:out value="${space.description.trim()}" />
                        </div>
                    </li>
                </ul>
            </div>

            <div class="location-info">
                <h3>위치</h3>
                <!-- 카카오 지도 부분 -->
                <div id="map" style="width: 500px; height: 400px;"></div>
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

            <!-- -------------------------------------------------------------------- -->
            <!-- 리뷰 영역 -->
            <div id="reviews" style="border-width: 4px;">
                <h3>리뷰</h3>
                <!-- 로그인 했을때 동작함 -->
                <c:if test="${not empty sessionScope.userid}">
                    <button id="open-dialog-button">리뷰 작성하기</button>
                </c:if>
                <!--  로그인 안했을 떄  동작함 -->
                <c:if test="${empty sessionScope.userid}">
                    <button id="not_login" >리뷰 작성하기</button>
                </c:if>
                <div class="container" >
                    <div id="dialog-form" title="Write a Review">
                        <div class="dialog-content" >
                            <div class="star-widget">
                                <div class="review-header" style="text-align: center" >리뷰 작성하기</div>
                                <input type="radio" name="rate" id="rate-5" value="5">
                                <label for="rate-5" class="fas fa-star"></label>
                                <input type="radio" name="rate" id="rate-4" value="4">
                                <label for="rate-4" class="fas fa-star"></label>
                                <input type="radio" name="rate" id="rate-3" value="3">
                                <label for="rate-3" class="fas fa-star"></label>
                                <input type="radio" name="rate" id="rate-2" value="2">
                                <label for="rate-2" class="fas fa-star"></label>
                                <input type="radio" name="rate" id="rate-1" value="1">
                                <label for="rate-1" class="fas fa-star"></label>
                            </div>
                            <br><br><br>
                            <div class="textarea" style="text-align: center;">
                                <textarea id="review_content" cols="20" rows="18" style="height: 250px; border: 2px solid #333; border-width: 4px; " placeholder="리뷰를 작성하세요"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="review">
                <!--  후기 작성 내용이 들어가는 div -->
            </div>

        </section>
    </main>
    <footer>
        <p>Contact us at example@example.com for inquiries.</p>
        <p>
            <a href='/board'>1대1 문의하기 </a>
        </p>
    </footer>
</body>
<script>
let selectedStartTime = null;
let selectedEndTime = null;
let totalAddedPrice = 0;

let arrayDate = [];
let arrayStartTime = [];
let arrayEndTime = [];
let arrayAddedPrice = [];

let dbUseDate = [];
let dbStartTime = [];
let dbEndTime = [];


$(document).ready(function () {
	
	
	review_get();
    get_imgslide();
    get_reinfo();
    
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd',
        minDate: new Date(),
        onSelect: function (dateText, inst) {
            // 사용자가 날짜를 선택할 때마다 호출되는 함수
            const index = dbUseDate.indexOf(dateText);

            if (index !== -1) {
                // 선택한 날짜가 배열에 있는 경우에만 시간대 색칠 함수 호출
                selectTimeRange(dbUseDate[index], dbStartTime[index], dbEndTime[index]);
                
                // 색칠된 시간대를 클릭할 수 없도록 pointer-events 스타일 설정
                $(".time-cell.selected-start-time, .time-cell.selected-end-time").css("pointer-events", "none");
                
                // 시작 시간과 끝 시간 사이의 셀들을 클릭할 수 없도록 pointer-events 스타일 설정
                $(".time-cell.highlighted-time-range").css("pointer-events", "none");
            } else {
                // 선택한 날짜가 배열에 없는 경우 색칠된 시간대 제거
                $(".time-cell").removeClass("selected-start-time selected-end-time highlighted-time-range");
                
                // pointer-events 스타일을 원래대로 설정하여 클릭 가능하도록 함
                $(".time-cell.selected-start-time, .time-cell.selected-end-time, .time-cell.highlighted-time-range").css("pointer-events", "auto");
            }
        }
    });



    $(".time-cell").click(function () {
        const selectedDate = $("#datepicker").val();
        const currentTime = $(this).text();

        // 첫 번째 선택한 시간인지 확인
        if (selectedStartTime === null) {
            selectedStartTime = currentTime;
            $(this).addClass("selected-start-time");
        }
        // 두 번째 선택한 시간인지 확인
        else if (selectedEndTime === null) {
            if (currentTime < selectedStartTime) {
                // 현재 선택한 시간이 시작 시간보다 작으면 시작 시간을 현재 시간으로 설정하고 엔드 시간에 이전 시작 시간을 설정
                selectedEndTime = selectedStartTime;
                selectedStartTime = currentTime;
            } else {
                selectedEndTime = currentTime;
            }

            // 중복 체크
            const isDuplicate = checkForDuplicates(selectedDate, selectedStartTime, selectedEndTime);

            if (isDuplicate) {
                alert("이미 선택한 시간대입니다. 다른 시간대를 선택해주세요.");
                resetTimeSelection();
            } else {
                $(this).addClass("selected-end-time");
                highlightTimeRange();
                calculateTotalPrice();
            }
        }
        // 세 번째 선택한 시간인지 확인 (첫 번째로 다시 선택)
        else {
            resetTimeSelection();
            selectedStartTime = currentTime;
            $(this).addClass("selected-start-time");
        }
    });

    // 중복 시간 체크 함수
    function checkForDuplicates(selectedDate, startTime, endTime) {
        for (let i = 0; i < arrayDate.length; i++) {
            if (selectedDate === arrayDate[i] &&
                ((startTime >= arrayStartTime[i] && startTime <= arrayEndTime[i]) ||
                    (endTime >= arrayStartTime[i] && endTime <= arrayEndTime[i]))) {
                return true; // 중복된 시간대가 있으면 true 반환
            }
        }
        return false; // 중복된 시간대가 없으면 false 반환
    }

/*    $("#addReT").click(function () {
        const selectedDate = $("#datepicker").val();

        if (selectedDate === "" || selectedStartTime === null || selectedEndTime === null) {
            alert("날짜와 시작 시간, 끝 시간을 선택해주세요.");
            return;
        }

        const hourPrice = parseInt("${space.price}"); // 시간당 가격 설정, 필요에 따라 수정
        const startTime = selectedStartTime.split(":");
        const endTime = selectedEndTime.split(":");
        const startHour = parseInt(startTime[0]);
        const startMinute = parseInt(startTime[1]);
        const endHour = parseInt(endTime[0]);
        const endMinute = parseInt(endTime[1]);

        const diffInMinutes = (endHour * 60 + endMinute) - (startHour * 60 + startMinute);
        const addedPrice = Math.abs((diffInMinutes / 60) * hourPrice); // 절대값 적용

        totalAddedPrice += addedPrice; // 총 가격에 추가한 가격 더하기

        // 배열에 값 추가
        arrayDate.push(selectedDate);
        arrayStartTime.push(selectedStartTime);
        arrayEndTime.push(selectedEndTime);
        arrayAddedPrice.push(addedPrice);

        const addedSlot = "<p>" + selectedDate + ": " + selectedStartTime + " - " + selectedEndTime +
            " (추가 금액: " + addedPrice + "원)</p>";

        $("#addedSlots").append(addedSlot);
        resetTimeSelection();
        $("#totalPrice").text("총 가격: " + totalAddedPrice + "원"); // 변경된 총 가격 표시
      //$("#currentPrice").text("총 가격: 0원"); // 현재 가격 초기화
        
        // ajax
        insert_temp_reservation();

    });*/
    

});

//선택한 시간 범위 강조 표시
function highlightTimeRange() {
    const startTimeIndex = $(".time-cell").index($(".selected-start-time"));
    const endTimeIndex = $(".time-cell").index($(".selected-end-time"));

    $(".time-cell").removeClass("highlighted-time-range");

    // 시작 시간과 종료 시간 사이의 셀만 보라색으로 칠함
    for (let i = Math.min(startTimeIndex, endTimeIndex) + 1; i < Math.max(startTimeIndex, endTimeIndex); i++) {
        $($(".time-cell")[i]).addClass("highlighted-time-range");
    }
}


// 선택한 시간 초기화
function resetTimeSelection() {
    $(".time-cell").removeClass("selected-start-time selected-end-time highlighted-time-range");
    selectedStartTime = null;
    selectedEndTime = null;
}

// 가격 계산 함수 (변경되어야 할 부분 포함)
function calculateTotalPrice() {
	const hourPrice = parseInt("${space.price}"); // 시간당 가격 설정, 필요에 따라 수정
	
	            // 선택한 시간 범위 계산
	const startTime = selectedStartTime.split(":");
	const endTime = selectedEndTime.split(":");
	const startHour = parseInt(startTime[0]);
	const startMinute = parseInt(startTime[1]);
	const endHour = parseInt(endTime[0]);
	const endMinute = parseInt(endTime[1]);
	
	            // 시간 차이 계산
	const diffInMinutes = (endHour * 60 + endMinute) - (startHour * 60 + startMinute);
	
	// 절대값 계산
	const addedPrice = Math.abs((diffInMinutes / 60) * hourPrice); // 절대값 적용
	totalAddedPrice = addedPrice; // 총 가격에 추가한 가격 더하기
	
	$("#totalPrice").text("총 가격: " + totalAddedPrice + "원"); // 변경된 총 가격 표시
}

var selectedTime = "";

// 다이얼 로그 시작
// 다이얼 로그 시작
$(document).ready(function () {
    const openDialogBtn = document.querySelector("#open-dialog-button");
    const dialogForm = $("#dialog-form");

    if (openDialogBtn) {
        openDialogBtn.onclick = function () {
            dialogForm.dialog("open");
        };
    }

    dialogForm.dialog({
        autoOpen: false,
        modal: true,
        width: 450,
        height: 510,
        resizable: false, // 크기 조절 비활성화
        buttons: [
            {
                text: "등록하기",
                click: function () {
                    const rating = $("input[name='rate']:checked").val();
                    const review_content = $("#review_content").val();
                    const userid = $('#user_id').val();
                    const space_id = $('#space_id').val();

                    console.log(review_content);
                    // 별점이 체크되지 않았을 경우 예외 처리
                    if (rating === undefined) {
                        alert("별점을 선택해주세요.");
                        return;
                    }

                    const reviewData = {
                        rating: rating,
                        review_content: review_content,
                        userid: userid,
                        space_id: space_id
                    };

                    $.ajax({
                        url: '/review_insert',
                        type: 'post',
                        data: reviewData,
                        success: function (response) {
                            console.log('리뷰 등록 성공:');
                            // 여기에 리뷰 등록 후 작업을 추가할 수 있습니다.
                        },
                        error: function (error) {
                            console.error('리뷰 등록 실패:', error);
                            // 실패 시 에러 처리를 수행하거나 사용자에게 알림을 보여줄 수 있습니다.
                        }
                    });
                    window.location.href = "/space";
                }
            }
        ]
    });

    // 별점 선택 위젯 설정
    $("#dialog-rating").selectmenu();
});


$(document).on('click', '#btnReT', function () {
    // 선택한 날짜, 시작 시간, 끝 시간을 가져옵니다.
	const selectedDate = $("#datepicker").val();
	const selectedStartTime = $(".selected-start-time").text();
	const selectedEndTime = $(".selected-end-time").text();

	// 날짜와 시간을 각각 확인합니다.
	if (selectedDate === "") {
	    alert("날짜를 선택해주세요.");
	    return;
	}

	if (selectedStartTime === "" || selectedEndTime === "") {
	    alert("시간을 선택해주세요.");
	    return;
	}
	// 먼저 기존에 있던 데이터 삭제.
	delete_temp_reservation()
	// 다시 insert.
	insert_temp_reservation();

	// 결제 페이지로 이동합니다.
	document.location = '/paytest';
});

$(document).on('click', '#addReF', function () { //로그인 안했을때 추가하기버튼
    alert("로그인을 해주세요.");
});

$(document).on('click', '#not_login', function () { //로그인 안했을때 리뷰
    alert("로그인을 해주세요.");
});

$(document).on('click', '#btnReF', function () { //로그인 안했을때 예약하기 버튼
    alert("로그인을 해주세요.");
});

$(document).on('click', '#show_cart', function () { //카트로이동
	 document.location = '/cart'
});

const reservationWindow = document.getElementById('reservationWindow'); // 예약 창 띄우기
let reservationWindowTop = reservationWindow.offsetTop;

window.addEventListener('scroll', () => {
    const scrollY = window.scrollY;
    reservationWindow.style.top = reservationWindowTop + scrollY + 'px';
}); // 예약창 끝

function insert_temp_reservation() {
    console.log("임시예약 인서트");
    const userid = $('#user_id').val();
    const space_id = $('#space_id').val();
    const start_time = parseInt(selectedStartTime.split(":")[0]);
    const end_time	 = parseInt(selectedEndTime.split(":")[0]);
    const total_price = parseInt($('#totalPrice').text().match(/\d+/)[0]);
    const reservation_date = $('#datepicker').val();
    
    const reservationData = {
        reservation_date: reservation_date,
        start_time: start_time,
        end_time: end_time,
        total_price: total_price,
        userid: userid, 
        space_id: space_id 
    };
   
    console.log(reservationData);
     
	 $.ajax({
         url: '/insert_temp_reservation',
         type: 'post',
         data: reservationData,
         success: function (response) {
             console.log('임시예약 등록 성공:');
             // 여기에 리뷰 등록 후 작업을 추가할 수 있습니다.
         },
         error: function (error) {
             console.error('임시예약 등록 실패:');
             // 실패 시 에러 처리를 수행하거나 사용자에게 알림을 보여줄 수 있습니다.
         }
     });
}




function review_get() { //리뷰 불러오기
    console.log('리뷰 불러옴');
    const space_id = $('#space_id').val();
    $.ajax({
        url: '/review_get',
        data: {
            space_id: space_id
        },
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log('리뷰 데이터 불러오기',data);
            $("#review").empty();
            for (let i = 0; i < data.length; i++) {
                let review =
                    "<div class='review'>" +
                    "<h4>작성자: " + data[i]['userid'] + "</h4>" +
                    "<p>평점: " + generateStarRating(data[i]['rating']) + "</p>" + // 수정된 부분
                    "<p>리뷰 내용: " + data[i]['review_content'] + "</p>" +
                    "<p>작성일: " + data[i]['created'] + "</p>" +
                    "</div>";
                $('#review').append(review);
            }
        }
    });
}

function generateStarRating(rating) { //별그리기
    let starsHtml = '';
    for (let i = 1; i <= 5; i++) {
        if (i <= rating) {
            starsHtml += '<i class="fas fa-star yellow-star"></i>'; // 노란색 별
        } else {
            starsHtml += '<i class="far fa-star"></i>'; // 빈 별
        }
    }
    return starsHtml;
}

function get_space() { //데이터 불러오기
    console.log('space 불러옴');
    $.ajax({
        url: '/get_space',
        data: {},
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log(data);
        }
    });
}

$(function () { // 이미지 슬라이더
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

function get_imgslide() { // 이미지 슬라이더
    $('.bxslider').bxSlider({
        slideWidth: 600,
        caption: true,
        auto: false,
        autoControls: true, // 여기 수정
        stopAutoOnClick: true, // 여기 수정
        adaptiveHeight: true,
        speed: 500,
    });
}

function delete_temp_reservation() {
    // 사용자의 아이디를 가져옵니다.
    const userid = $("#user_id").val();

    // 서버로 삭제 요청을 보냅니다.
    console.log('삭제 데이터 이동중');
    $.ajax({	
        url: "/delete_temp_reservation",
        data: { userid: userid },
        type: 'post',
        success: function (data) {
            if (data === '0') {
                console.error("삭제 실패:", data);                        		
            } else {
                console.log("삭제 성공");
            }
        },
        error: function (xhr, status, error) {
            console.error("삭제 실패:", error);
        }
    });
}

function get_reinfo() { // 리뷰 불러오기
    console.log('예약 데이터 불러옴');
    const space_id = $('#space_id').val();
	
    $.ajax({
        url: '/get_reinfo',
        data: {
            space_id: space_id
        },
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log('예약 데이터 불러오기',data);
            for (let i = 0; i < data.length; i++) {
                dbUseDate.push(data[i]['useday']);
                dbStartTime.push(data[i]['startTime']);
                dbEndTime.push(data[i]['endTime']);
            }

            // 데이터를 배열에 저장한 후 이 배열을 활용할 수 있습니다.
            console.log('사용 날짜 배열:', dbUseDate);
            console.log('시작 시간 배열:', dbStartTime);
            console.log('끝 시간 배열:', dbEndTime);

            // 이후 작업을 수행하면 됩니다.
        }
    });
}

//선택한 시간대를 색칠하는 함수
function selectTimeRange(selectedDate, startTime, endTime) {
    $(".time-cell").removeClass("selected-start-time selected-end-time highlighted-time-range");

    // 시작 시간과 종료 시간에 해당하는 셀을 선택
    $(".time-cell:contains('" + startTime + "')").addClass("selected-start-time").css("background-color", "#008000"); // 짙은 녹색 배경색
    $(".time-cell:contains('" + endTime + "')").addClass("selected-end-time").css("background-color", "#008000"); // 짙은 녹색 배경색

    // 선택한 시간대 색칠
    highlightTimeRange();
}


</script>

</html>


