<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d35ff5a43bbc9d6ce4be2d8cd14ddba0"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${space.space_name}</title>
<style>
	/* 기본 스타일 초기화 */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

/* 메인 콘텐츠 컨테이너 */
main {
    padding: 20px;
}

/* 공간 상세정보 섹션 */
.space-details {
    border: 1px solid #ccc;
    padding: 20px;
    margin: 10px;
    background-color: #f9f9f9;
    word-wrap: break-word;
}

/* 공간 이미지 */
.space-image img {
    max-width: 100%;
    height: auto;
}

/* 공간 소개 */
.space-introduction {
    margin-top: 20px;
}

/* 여러 섹션의 테두리와 여백 */
.space-rules,
.location-info,
.review,
.qa,
.reviews {
    margin-top: 20px;
    border-top: 1px solid #ccc;
    padding-top: 10px;
    word-wrap: break-word;
}

/* 푸터 스타일 */
footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
}

/* 예약 창 스타일 */
.reservation-window {
    position: absolute;
    top: 230px;
    right: 20px;
    width: 350px;
    background-color: #ffffff;
    border: 1px solid #333;
    padding: 20px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: top 0.3s ease;
    color: #333;
}

/* 날짜 선택 입력 */
#datepicker {
    width: 150px;
    padding: 5px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* 시간 선택 테이블 */
.time-picker table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
}

/* 시간 셀 */
.time-cell {
    text-align: center;
    padding: 10px;
    border: 1px solid #ccc;
    cursor: pointer;
}

/* 선택한 시작 시간과 끝 시간 */
.selected-start-time,
.selected-end-time {
    background-color: #C8A2C8;
    color: #333;
}

/* 가격 텍스트 */
.price-text {
    font-weight: bold;
    font-size: 18px;
    margin-top: 10px;
    color: #333;
}

/* 예약 버튼 */
#btnReT,
#btnReF {
    background-color: #333;
    color: #fff;
    border: none;
    padding: 10px 20px;
    margin-top: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
}

/* 예약 버튼 호버 스타일 */
#btnReT:hover,
#btnReF:hover {
    background-color: #fff;
    color: #333;
}

/* 추가된 슬롯 텍스트 스타일 */
#addedSlots {
    font-size: 14px;
}

/* 가격 컨테이너 스타일 */
.price-container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: 20px;
}

/* 총 가격 텍스트 스타일 */
#totalPrice {
    margin: 0;
}

/* 대화 상자 스타일 */
.container {
    width: 400px;
    background-color: #fff;
    padding: 20px 30px;
    border: 1px solid #ddd;
    border-radius: 5px;
    text-align: center;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

/* 게시물 숨김 스타일 */
.post {
    display: none;
}

/* 본문 텍스트 스타일 */
.text {
    font-size: 25px;
    color: #333;
    font-weight: 500;
}

/* 편집 버튼 스타일 */
.edit {
    position: absolute;
    right: 10px;
    top: 5px;
    font-size: 16px;
    color: #666;
    font-weight: 500;
    cursor: pointer;
}

/* 편집 버튼 호버 스타일 */
.edit:hover {
    text-decoration: underline;
}

/* 별점 위젯 스타일 */
.star-widget input {
    display: none;
}

/* 별점 레이블 스타일 */
.star-widget label {
    font-size: 40px;
    color: #444;
    padding: 10px;
    float: right;
    transition: all 0.2s ease;
}

/* 별점 레이블 호버 스타일 */
.star-widget input:not(:checked) ~ label:hover,
.star-widget input:not(:checked) ~ label:hover ~ label {
    color: #fd4;
}

/* 선택된 별점 스타일 */
.star-widget input:checked ~ label {
    color: #fd4;
}

/* 5점 별점 스타일 */
.star-widget input#rate-5:checked ~ label {
    color: #fe7;
    text-shadow: 0 0 20px #952;
}

/* 별점 입력 양식 스타일 */
.star-widget input:checked ~ form {
    display: block;
}

/* 별점 입력 양식 헤더 스타일 */
form header {
    font-size: 25px;
    color: #fe7;
    font-weight: 500;
    margin: 5px 0 20px;
    transition: all 0.2s ease;
}

/* 별점 입력 양식 텍스트영역 스타일 */
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

/* 별점 입력 양식 버튼 스타일 */
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

/* 별점 입력 양식 버튼 호버 스타일 */
.btn button:hover {
    background: #1b1b1b;
}

/* 대화 상자 스타일 */
#dialog-form {
    display: none;
    width: auto;
    height: auto;
}

/* 대화 상자 스타일 */
.ui-dialog {
    max-width: 500px;
    max-height: 570px;
    background-color: #ffffff;
}

/* 대화 상자 제목바 스타일 */
.ui-dialog-titlebar {
    display: none;
}

/* 대화 상자 콘텐츠 스타일 */
.ui-dialog-content {
    padding: 0;
    overflow: hidden;
    /* 스크롤바 비활성화 */
}

/* 대화 상자 버튼 패널 스타일 */
.ui-dialog-buttonpane {
    display: flex;
    justify-content: flex-end;
    padding: 0 20px 20px;
    background-color: transparent;
    border-top: none;
}

/* 대화 상자 버튼셋 스타일 */
.ui-dialog-buttonset {
    margin: 0;
}

/* 대화 상자 버튼 스타일 */
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

/* 대화 상자 닫기 버튼 스타일 */
.ui-dialog-buttonset button.close-button {
    font-size: 20px;
    margin-left: auto;
}

/* 대화 상자 버튼 호버 스타일 */
.ui-dialog-buttonset button:hover {
    color: #1b1b1b;
}

/* 대화 상자 별점 위젯 스타일 */
.ui-dialog-content .star-widget {
    padding: 20px 30px;
}

/* 대화 상자 별점 위젯 스타일 */
.star-widget {
    width: 386px;
    height: 100px;
    padding: 20px 30px;
    box-sizing: border-box;
    margin: 0 auto;
}

/* 대화 상자 별점 입력 양식 헤더 스타일 */
.ui-dialog-content form header {
    margin: 0 0 20px;
}

/* 대화 상자 별점 입력 양식 텍스트영역 스타일 */
.ui-dialog-content form .textarea {
    height: 150px;
    margin-bottom: 3px;
}

/* 대화 상자 별점 입력 양식 버튼 스타일 */
.ui-dialog-content .btn {
    margin: 0;
}

/* 리뷰 헤더 스타일 */
.review-header {
    font-size: 20px;
    color: #000;
    font-weight: 500;
    margin-bottom: 15px;
}

/* 리뷰 및 질문/답변 섹션 스타일 */
.review,
.qa {
    border: 1px solid #ccc;
    padding: 10px;
    margin: 10px;
    background-color: #f9f9f9;
}

/* 리뷰 및 질문/답변 제목 스타일 */
.review h4,
.qa h4 {
    font-size: 18px;
    font-weight: bold;
}

/* 리뷰 및 질문/답변 내용 스타일 */
.review p,
.qa p {
    font-size: 14px;
}

/* 노란색 별 스타일 */
.yellow-star {
    color: yellow;
    text-shadow: 0 0 5px black;
}

/* 선택한 시간대 강조 스타일 */
.duplicate-time-range {
    background-color: #ffcccb;
}

/* 강조된 시간대 강조 스타일 */
.highlighted-time-range {
    background-color: #C8A2C8;
}

/* 질문/답변 내용 입력 플레이스홀더 스타일 */
#qa_content::placeholder {
    color: #777;
}

/* 질문/답변 제목 입력 스타일 */
#qa_title {
    width: 60%;
    height: 10px;
    padding: 15px;
    resize: none;
    border: 2px solid #ccc;
    border-radius: 10px;
    font-size: 16px;
    color: #333;
}

/* 질문/답변 제목 입력 플레이스홀더 스타일 */
#qa_title::placeholder {
    color: #777;
}

/* 예약 완료 스타일 */
.reserved {
    color: #696969;
    background-color: #696969;
    pointer-events: none; /* 클릭 비활성화 */
}

/* 중복 알림 메시지 스타일 */
#duplicateAlert {
    display: none;
    height: 75px;
    background-color: #ff0000;
    color: #ffffff;
    padding: 10px;
    font-size: 24px;
    text-align: center;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 9999;
    /* 추가 스타일을 필요에 따라 추가하세요. */
}

#review_content , #qa_content {
    height: 234px;
    width: 420px;
    border: 2px solid #333;
    border-width: 3px;
    resize: none;
    padding: 10px; /* 모든 방향으로 패딩 추가 */
}


/* Q&A 섹션 스타일 */

#Q&A h3 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
    color: #333;
}

/* Q&A 작성 버튼 스타일 */
#open-qa-dialog-button,#open-dialog-button,
#not_login {
    background-color: #333;
    color: #fff;
    border: none;
    padding: 10px 20px;
    margin-bottom: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
    font-size: 16px;
}

#open-qa-dialog-button:hover,
#not_login:hover {
    background-color: #fff;
    color: #333;
}

/* Q&A 작성 다이얼로그 폼 스타일 */
#qa-dialog-form {
    display: none;
    height: auto;
    width: auto;
    padding: 20px;
    background-color: #f9f9f9;
    border: 4px solid #ccc;
    border-radius: 5px;
}

.qa-header {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 15px;
    color: #333;
    text-align: center;
}

.qa-textarea {
    text-align: center;
    margin-bottom: 20px;
}

#qa_title,
#qa_content {
    width: 90%;
    padding: 10px;
    border: 2px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    color: #333;
    resize: none;
}

#qa_title {
height: 21px;
}

#qa_title::placeholder,
#qa_content::placeholder {
    color: #777;
}



</style>
</head> <!-- 나는 바보 -->
<body>
	<%@include file="header.jsp" %>
	<div id="duplicateAlert" class="alert-box">
    중복된 예약이 있습니다. 예약 시간을 다시 확인해주세요.
	</div>
	<!--  <input type='hidden' id='username' value="">-->
    <input type='hidden' id='user_id' value="${sessionScope.userid}">
    <input type="hidden" id="space_id" name="space_id" value="${space.space_id }">

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
                <div id="reservationInfo"> 
                 <!-- 예약일시들어가는곳 -->  
                </div>
                
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
		            <div id="dialog-form" title="Write a Review" style="width: 90%; height: 90%;">
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
		                        <textarea id="review_content" cols="20" rows="18" placeholder="리뷰를 작성하세요"></textarea>
		                    </div>
		                </div>
		            </div>
		        
			
				<div id="review">
				    <!-- 후기 작성 내용이 들어가는 div -->
				</div>
				<div id="review_page_num" style="text-align: center;">
				    <span class="page" data-page="1">1</span>
				    <span class="page" data-page="2">2</span>
				    <span class="page" data-page="3">3</span>
				    <!-- 페이지 번호를 추가하고 각각의 페이지를 클릭할 때 data-page 속성으로 페이지 번호를 저장합니다. -->
				</div>
			</div>
            
		<div id="Q&A" style="border-width: 4px; height: auto;">
			<h3>리뷰</h3>
            <c:if test="${not empty sessionScope.userid}">
				<button id="open-qa-dialog-button">Q&A 작성</button>
            </c:if>
            <!--  로그인 안했을 떄  동작함 -->
            <c:if test="${empty sessionScope.userid}">
                <button id="not_login" >Q&A 작성</button>
            </c:if>
		    <!-- Q&A 작성 다이얼로그 폼 -->
		    <div id="qa-dialog-form" title="Q&A 작성" style="height: auto;">
		        <form>
		        	<div class="qa-header" style="text-align: center" >질문 작성하기</div>
		        	<div class="qa-textarea" style="text-align: center;">
		        	<textarea id="qa_title" cols="0" rows="10" style= "border: 1px solid #333; " placeholder="제목을 작성하세요"></textarea>
		        	</div>
					<div class="qa-textarea" style="text-align: center;">
					<textarea id="qa_content" cols="20" rows="18" placeholder="질문을 작성하세요"></textarea>
                   	</div>
		        </form>
		    </div>
		</div>
		
		<div id="qa"></div>
		<div id="pagination">
		    <button id="prevPage">이전 페이지</button>
		    <button id="nextPage">다음 페이지</button>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
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
const db_reservations = [];



$(document).ready(function () {
	
	
	review_get();
    get_imgslide();
    get_reinfo();
    get_member_info();
    qa_get();
   		
    
 // Datepicker 설정
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd',
        minDate: new Date(),
        onSelect: function (dateText, inst) {
            // 선택한 날짜를 가져옴
            const selectedDate = dateText;
            resetTimeSelection();
            // 선택한 날짜와 일치하는 예약 데이터 찾기
            const reservation = findReservationByDate(selectedDate);

            if (reservation) {
                // 예약 데이터에 해당하는 경우에만 작업 수행
                const startTime = reservation.db_start_time;
                const endTime = reservation.db_end_time;
                reserveTimeSlots(startTime, endTime);
            } else {

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
                // 중복된 예약이 있을 경우 처리
                $("#duplicateAlert").slideDown(); // 중복 알림을 내려오게 함
                
                
                resetTimeSelection();
                
                // 2초 후에 숨김
                setTimeout(function() {
                    $("#duplicateAlert").slideUp(); // 중복 알림을 올려 숨김
                }, 1500); // 2초(2000 밀리초) 후에 숨김 처리
                return;
            }

            $(this).addClass("selected-end-time");
            highlightTimeRange();
            calculateTotalPrice();
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
        const $timeCells = $(".time-cell");

        for (let i = 0; i < $timeCells.length; i++) {
            const $cell = $($timeCells[i]);
            const cellTime = $cell.text();
            const cellClass = $cell.attr("class");

            if (cellTime >= startTime && cellTime <= endTime) {
                if (cellClass.includes("reserved")) {
                    return true;
                }
            }
        }

        return false;
    }
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
        width: 1000,
        height:500,
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
            },
            {
                text: "취소",
                click: function () {
                	dialogForm.dialog("close");
                }
            } // 이 부분에 쉼표 추가
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
    alert("로그인 후에 이용가능합니다.");
//    	window.location.href = "login";
    
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


function get_member_info() { //데이터 불러오기
    const userid = $("#user_id").val();
    console.log('나의 정보 불러옴');
    $.ajax({
        url: '/get_member_info',
        data: {userid: userid},
        type: 'post',
        dataType: 'json',
        success: function (data) {
        	console.log('나의 정보 불러오기',data);
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


function get_reinfo() { // 예약데이터 불러오기
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
        	reservations = data
            for (let i = 0; i < data.length; i++) {
                dbUseDate.push(data[i]['useday']);
                dbStartTime.push(data[i]['startTime']);
                dbEndTime.push(data[i]['endTime']);
            }
        	  for (let i = 0; i < dbUseDate.length; i++) {
                  const reservation = {
                      db_use_date: dbUseDate[i],
                      db_start_time: dbStartTime[i],
                      db_end_time: dbEndTime[i]
                  };
                  db_reservations.push(reservation);
              }

              // 데이터를 배열에 저장한 후 이 배열을 활용할 수 있습니다.
              console.log('사용 날짜 배열:', db_reservations);
              // 이후 작업을 수행하면 됩니다.
          },
          error: function (error) {
              console.error('예약 데이터를 가져오는 데 실패했습니다:', error);
          }
      });
  }


/*
//선택한 시간대를 색칠하는 함수
function selectTimeRange(selectedDate, startTime, endTime) {
    $(".time-cell").removeClass("selected-start-time selected-end-time highlighted-time-range");

    // 시작 시간과 종료 시간에 해당하는 셀을 선택
    $(".time-cell:contains('" + startTime + "')").addClass("selected-start-time");
    $(".time-cell:contains('" + endTime + "')").addClass("selected-end-time");

    // 선택한 시간대 색칠
    highlightTimeRange();
}
*/

$(document).ready(function () {
    const openQADialogBtn = document.querySelector("#open-qa-dialog-button");
    const qaDialogForm = $("#qa-dialog-form");

    if (openQADialogBtn) {
        openQADialogBtn.onclick = function () {
            qaDialogForm.dialog("open");
        };
    }

    qaDialogForm.dialog({
        autoOpen: false,
        modal: true,
        width: 1000,
        height: 500,
        resizable: false,
        buttons: [
            {
                text: "질문하기",
                click: function () {
                    const content = $("#qa_content").val();
                    const writer = $('#user_id').val();
                    const space_id = $('#space_id').val();
					const title = $('#qa_title').val();
                    
                    console.log(qa_content);
                    
                    if (!qa_content) {
                        alert("질문을 입력해주세요.");
                        return;
                    }

                    const qaData = {
                    	content: content,
                    	title : title,
                        writer: writer,
                        space_id: space_id
                    };

                    $.ajax({
                        url: '/qa_insert',
                        type: 'post',
                        data: qaData,
                        success: function (response) {
                            console.log('질문 등록 성공:');
                            // 여기에 질문 등록 후 작업을 추가할 수 있습니다.
                        },
                        error: function (error) {
                            console.error('질문 등록 실패:', error);
                            // 실패 시 에러 처리를 수행하거나 사용자에게 알림을 보여줄 수 있습니다.
                        }
                    });
                    window.location.href = "/space";
                }
            },
            {
                text: "취소",
                click: function () {
                    qaDialogForm.dialog("close");
                }
            }
        ]
    });
});

function qa_get() { //리뷰 불러오기
    console.log('qa 불러옴');
    const space_id = $('#space_id').val();
 //   const currentPage = $('#currentPage').val(); // 현재 페이지 정보를 가져옴
   // const itemsPerPage = $('#itemsPerPage').val(); // 페이지당 아이템 수 정보를 가져옴
    $.ajax({
        url: '/qa_get',
        data: {
            space_id: space_id
            //currentPage: currentPage,
            //itemsPerPage: itemsPerPage
        },
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log('리뷰 데이터 불러오기',data);
            $("#qa").empty();
            for (let i = 0; i < data.length; i++) {
                let qa =
                    "<div class='qa'>" +
                    "<h4>작성자: " + data[i]['writer'] + "</h4>" +
                    "<p>제목 " + data[i]['title'] + "</p>" + // 수정된 부분
                    "<p>리뷰 내용: " + data[i]['content'] + "</p>" +
                    "<p>작성일: " + data[i]['created'] + "</p>" +
                    "</div>";
                $('#qa').append(qa);
            }
        }
    });
}


//선택한 시간 범위 강조 표시
function highlightTimeRange() {
    const startTimeIndex = $(".time-cell").index($(".selected-start-time"));
    const endTimeIndex = $(".time-cell").index($(".selected-end-time"));

    $(".time-cell").removeClass("highlighted-time-range");

    // 시작 시간과 종료 시간 사이의 셀만 보라색으로 칠함
    for (let i = Math.min(startTimeIndex, endTimeIndex) + 1; i < Math.max(startTimeIndex, endTimeIndex); i++) {
        $($(".time-cell")[i]).addClass("highlighted-time-range");
    }
    displayReservationInfo();
}


//선택한 시간대의 예약 정보를 표시합니다.
function displayReservationInfo() {
    const selectedDate = $("#datepicker").val();
    const startTime = $(".selected-start-time").text();
    const endTime = $(".selected-end-time").text();

    if (!selectedDate || !startTime || !endTime) {
        // 날짜, 시작 시간, 종료 시간 중 하나라도 선택되지 않았을 때 예약 정보를 숨김
        $("#reservationInfo").hide();
        return;
    }

    const startTimeNum = parseInt(startTime);
    const endTimeNum = parseInt(endTime);
    const duration = endTimeNum - startTimeNum;
    const dayOfWeek = getDayOfWeek(selectedDate);
    const reservationInfo = "<h4>예약일시:</h4>" +
        "<h4>" + selectedDate + " " + dayOfWeek + " " + startTime + " ~ " + endTime + " (" + duration + "시간)</h4>";

    $("#reservationInfo").html(reservationInfo).show(); // 예약 정보를 보이도록 설정
}


//요일 구하는 함수
function getDayOfWeek(selectedDate) {
    const daysOfWeek = ["일", "월", "화", "수", "목", "금", "토"];
    const date = new Date(selectedDate);
    const dayOfWeekIndex = date.getDay();
    return daysOfWeek[dayOfWeekIndex];
}

//선택한 시간 범위 강조 표시 함수
function db_highlightTimeRange(startTimeIndex, endTimeIndex) {
    //$(".time-cell").removeClass("reserved");

    // 시작 시간과 종료 시간 사이의 셀만 보라색으로 칠함
    for (let i = Math.min(startTimeIndex, endTimeIndex) + 1; i < Math.max(startTimeIndex, endTimeIndex); i++) {
        $($(".time-cell")[i]).addClass("reserved");
    }
}

// 선택한 시간대를 색칠하는 함수
function selectTimeRange(startTime, endTime) {
    $(".time-cell").removeClass("selected-start-time selected-end-time highlighted-time-range reserved");

    // 시작 시간과 종료 시간에 해당하는 셀을 선택
    const $startTimeCell = $(".time-cell:contains('" + startTime + "')");
    const $endTimeCell = $(".time-cell:contains('" + endTime + "')");

    $startTimeCell.addClass("reserved");
    $endTimeCell.addClass("reserved");

    // 선택한 시간대 색칠
    db_highlightTimeRange($startTimeCell.index(), $endTimeCell.index());
}

function findReservationByDate(selectedDate) {
    for (let i = 0; i < db_reservations.length; i++) {
        console.log("예약 날짜 확인 중:", db_reservations[i].db_use_date);
        if (db_reservations[i].db_use_date === selectedDate) {
            console.log("일치하는 예약 발견:", db_reservations[i]);
            return db_reservations[i];
        }
    }
    // 일치하는 예약 데이터가 없을 경우 null 또는 원하는 다른 값 반환
    console.log("선택한 날짜에 일치하는 예약 데이터를 찾을 수 없습니다:", selectedDate);
    return null;
}

//시작시간과 끝시간 사이의 time-cell들을 reserved로 표시
function reserveTimeSlots(startTime, endTime) {
    console.log("reserveTimeSlots 함수 시작");
    
    $(".time-cell").removeClass("reserved");

    const startHour = startTime
    const endHour = endTime

    console.log("시작 시간:", startHour);
    console.log("종료 시간:", endHour);

    // 시작 시간과 종료 시간 사이의 셀을 reserved로 설정
    $(".time-cell").each(function () {
        const cellTime = $(this).text().split(":");
        const cellHour = parseInt(cellTime[0]);

        console.log("현재 셀의 시간:", cellHour);

        if (cellHour >= startHour && cellHour <= endHour) {
            $(this).addClass("reserved");
            console.log("셀을 reserved로 설정:", $(this).text());
        }
    });

    console.log("reserveTimeSlots 함수 완료");
}

function resetTimeSelection() {
    $(".time-cell").removeClass("selected-start-time selected-end-time highlighted-time-range").not(".reserved").removeClass("reserved");
    selectedStartTime = null;
    selectedEndTime = null;
}


</script>
</html>