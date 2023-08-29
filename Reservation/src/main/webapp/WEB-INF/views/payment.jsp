<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
</head>
<body>
    <h1>Payment Page</h1>
    
      <h2>예약 정보</h2>
    <table>
        <tr>
            <td>룸:</td>
            <td>${room}</td>
        </tr>
        <tr>
            <td>날짜:</td>
            <td>${date}</td>
        </tr>
        <tr>
            <td>시간:</td>
            <td>${time}</td>
        </tr>
        <tr>
            <td>회의명:</td>
            <td>${title}</td>
        </tr>
        <tr>
            <td>개설자:</td>
            <td>${founder}</td>
        </tr>
        <tr>
            <td>참여자:</td>
            <td>${participants}</td>
        </tr>
        <tr>
            <td>회의내용:</td>
            <td>${content}</td>
        </tr>
    </table>

    <!-- 확인 팝업 -->
    <div id="confirmationPopup" >
        <p>날짜, 시간에 룸을 입력하신 개설자 분이 맞으십니까?</p>
        <button type="button" id="yesButton">예</button>
        <button type="button" id="noButton">아니요</button>
    </div>
	<br><br><br>
      <form action="/payment_complete" method="post" id="paymentForm" style="display: none;">
        <h2>결제수단</h2>
        <label>
            <input type="radio" name="payment_option" value="credit_card">
            신용카드
        </label>
        <br>
        <div id="creditCardOptions" style="display: none;">
            <!-- 카드사 선택 -->
            <label for="creditCardBank">카드사 선택:</label>
            <select name="credit_card_bank" id="creditCardBank">
                <option value="카카오뱅크">카카오뱅크</option>
                <option value="우리은행">우리은행</option>
            </select>
            <br>

            <!-- 할부 선택 -->
            <label for="installments">할부 선택:</label>
            <select name="installments" id="installments">
                <option value="1">1개월</option>
                <option value="2">2개월</option>
                <option value="3">3개월</option>
                <option value="6">6개월</option>
                <option value="0">일시불</option>
            </select>
            <br>
        </div>

        <label>
            <input type="radio" name="payment_option" value="bank_transfer">
            무통장입금
        </label>
        <br>
        <div id="bankTransferOptions" style="display: none;">
            <!-- 은행 선택 -->
            <label for="bankSelection">은행 선택:</label>
            <select name="bank_selection" id="bankSelection">
                <option value="카카오뱅크">카카오뱅크</option>
                <option value="우리은행">우리은행</option>
            </select>
            <br>

            <!-- 입금자명 입력 -->
            <label for="depositorName">입금자명:</label>
            <textarea name="depositor_name" id="depositorName" rows="3"></textarea>
            <br>
        </div>

        <label>
            <input type="radio" name="payment_option" value="naver_pay">
            네이버페이
        </label>
        <br>
        <div id="naverPayOptions" style="display: none;">
            <!-- 네이버페이로 이동하는 링크 -->
            <a href="https://www.naver.com">네이버페이로 이동</a>
        </div>
        <br>

        <!-- 제출 버튼 -->
        <input type="submit" value="완료">
    </form>
</body>
    <!-- JavaScript 코드 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script>
        // "아니요" 버튼 클릭 시 확인 팝업을 표시
      

        // "예" 버튼 클릭 시 결제 옵션 폼을 표시
        document.getElementById("yesButton").addEventListener("click", function() {
            document.getElementById("confirmationPopup").style.display = "none";
            document.getElementById("paymentForm").style.display = "block";
        });

        // "아니요" 버튼 클릭 시 다시 한 번 확인하는 팝업을 표시
       document.getElementById("noButton").addEventListener("click", function() {
    var confirmAgain = confirm("예약 하신 내용을 수정하시겠습니까?");
    if (confirmAgain) {
        window.location.href = "/";
    } else {
        alert("다시 한 번 확인해주세요.");
    }
});
        
        
       document.querySelector("input[name='payment_option'][value='credit_card']").addEventListener("change", function() {
           if (this.checked) {
               document.getElementById("creditCardOptions").style.display = "block";
           } else {
               document.getElementById("creditCardOptions").style.display = "none";
           }
       });

       // "무통장입금" 라디오 버튼 선택 시 무통장입금 관련 옵션 표시
       document.querySelector("input[name='payment_option'][value='bank_transfer']").addEventListener("change", function() {
           if (this.checked) {
               document.getElementById("bankTransferOptions").style.display = "block";
           } else {
               document.getElementById("bankTransferOptions").style.display = "none";
           }
       });

       // "네이버페이" 라디오 버튼 선택 시 네이버페이 관련 옵션 표시
       document.querySelector("input[name='payment_option'][value='naver_pay']").addEventListener("change", function() {
           if (this.checked) {
               document.getElementById("naverPayOptions").style.display = "block";
           } else {
               document.getElementById("naverPayOptions").style.display = "none";
           }
       });
    </script>

</html>





