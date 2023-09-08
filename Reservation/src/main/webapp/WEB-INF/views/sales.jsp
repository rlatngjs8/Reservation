<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>매출 관리 페이지</title>
    <!-- CSS 및 JavaScript 라이브러리를 여기에 추가하세요 -->
</head>
<style>
        body {
          
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            width: 60%;
            margin: 0 auto;
        }

        .hc {
            background-color: #007bff;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-right: 10px;
        }

        select, input[type="date"], input[type="month"], input[type="number"] {
            margin-bottom: 10px;
        }

        select, input[type="date"], input[type="month"], input[type="number"], button {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        select, button {
            background-color: #fff;
        }

        select:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="number"]:focus, button:focus {
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .input-container {
				    display: flex;
				    flex-direction: column;
				    width: 200px;
				    margin: 10px;
				}
				
				.input-container label {
				    margin-bottom: 5px;
				    font-weight: bold;
				}
				
				.input-container input[type="date"],
				.input-container input[type="month"],
				.input-container input[type="number"] {
				    width: 100%;
				    padding: 8px;
				    border: 1px solid #ccc;
				    border-radius: 5px;
				}
				
				.input-container input[type="date"]:focus,
				.input-container input[type="month"]:focus,
				.input-container input[type="number"]:focus {
				    outline: none;
				    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
				}

        #loadData {
        font-family: 'Pretendard-Regular';
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            height: 40px;
            position:relative;
            left:10px;
        }

        #loadData:hover {
            background-color: #0056b3;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        @font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
        
 .prev {
 	font-family: 'Pretendard-Regular';
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:#3a8a9e;
	font-size:17px;
	padding:4px 8px;
	text-decoration:none;
	
	position:relative;
	
	left: 10px;
	
	    cursor: pointer;
            height: 40px;
}
.prev:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.prev:active {
	position:relative;
	top:1px;
}
        
        
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<br><br><br><br><br><br>

    <h1 class="hc">매출 관리 페이지</h1>
    <button id="prev" class="prev">이전메뉴</button>
    
    
    <!-- 날짜 선택 드롭다운 -->
    <div class="input-container">
        <label for="dateRange">날짜 선택:</label>
        <select id="dateRange" name="dateRange">
            <option value="daily">일별</option>
            <option value="monthly" selected>월별</option> <!-- 초기 선택값을 "월별"로 설정 -->
            <option value="yearly">연도별</option>
            <option value="period">기간별</option>
        </select>
    </div>
    
    <!-- 일별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="dailyDateInputs" style="display: none;" class="input-container">
        <label for="dailyDate">날짜:</label>
        <input type="date" id="dailyDate" name="dailyDate">
    </div>
    
    <!-- 월별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="monthlyMonthInputs" class="input-container">
        <label for="monthlyMonth">월:</label>
        <input type="month" id="monthlyMonth" name="monthlyMonth">
    </div>
    
    <!-- 연도별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="yearlyYearInputs" style="display: none;" class="input-container">
        <label for="yearlyYear">연도:</label>
        <input type="number" id="yearlyYear" name="yearlyYear">
    </div>
    
    <!-- 기간별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="periodDatesInputs" style="display: none;" class="input-container">
    <label for="periodStart">시작 날짜:</label>
    <input type="date" id="periodStart" name="periodStart">
    <label for="periodEnd">끝 날짜:</label>
    <input type="date" id="periodEnd" name="periodEnd">
		</div>
    
    <button id="loadData">데이터 불러오기</button><br><br><br>
    
    <!-- 매출 데이터를 표시할 테이블 -->
    <table id="salesTable">
        <thead>
            <tr>
                <th>번호</th>
                <th>결제 시각</th>
                <th>금액</th>
                <!-- 필요한 다른 열을 추가하세요 -->
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
$(document).ready(function () {
    // 데이터 불러오기 함수
    function loadData(start, end) {
        $.ajax({
            url: "/getSalesData",
            type: "post",
            dataType: 'json',
            data: { start: start, end: end },
            success: function (data) {
                var salesTable = $("#salesTable tbody");
                salesTable.empty();

                for (var i = 0; i < data.length; i++) {
                    var row = "<tr>" +
                        "<td>" + (i + 1) + "</td>" +
                        "<td>" + data[i]['purchaseTime'] + "</td>" +
                        "<td>" + data[i]['totalPrice'] + "원</td>" +
                        "</tr>";

                    salesTable.append(row);
                }
            }
        });
    }

    // 날짜 선택 드롭다운 변경 이벤트 핸들러
    $("#dateRange").change(function () {
        var selectedValue = $(this).val();

        // 모든 날짜 입력 필드를 숨김
        $("#dailyDateInputs").hide();
        $("#monthlyMonthInputs").hide();
        $("#yearlyYearInputs").hide();
        $("#periodDatesInputs").hide();

        // 선택한 값에 따라 해당하는 날짜 입력 필드를 표시
        if (selectedValue === "daily") {
            $("#dailyDateInputs").show();
            // 이때 초기 값을 비웁니다.
            $("#dailyDate").val("");
        } else if (selectedValue === "monthly") {
            $("#monthlyMonthInputs").show();
        } else if (selectedValue === "yearly") {
            $("#yearlyYearInputs").show();
            // 이때 초기 값을 비웁니다.
            $("#yearlyYear").val("");
        } else if (selectedValue === "period") {
            $("#periodDatesInputs").show();
            // 이때 초기 값을 비웁니다.
            $("#periodStart").val("");
            $("#periodEnd").val("");
        }
    });

    // 초기 데이터 불러오기
    var currentDate = new Date();
    var currentMonth = (currentDate.getMonth() + 1).toString().padStart(2, '0');
    var currentYear = currentDate.getFullYear();
    var currentMonthValue = currentYear + "-" + currentMonth;
    $("#monthlyMonth").val(currentMonthValue);
    loadData(currentMonthValue + "-01 00:00:00", currentMonthValue + "-31 23:59:59");

    // 데이터 불러오기 버튼 클릭 이벤트 핸들러
    $("#loadData").click(function () {
        var dateRange = $("#dateRange").val();
        var start, end;

        if (dateRange === "daily") {
            var selectedDate = $("#dailyDate").val();
            start = selectedDate + " 00:00:00";
            end = selectedDate + " 23:59:59";
        } else if (dateRange === "monthly") {
            var selectedMonth = $("#monthlyMonth").val();
            start = selectedMonth + "-01 00:00:00";
            end = selectedMonth + "-31 23:59:59";
        } else if (dateRange === "yearly") {
            var selectedYear = $("#yearlyYear").val();
            start = selectedYear + "-01-01 00:00:00";
            end = selectedYear + "-12-31 23:59:59";
        } else if (dateRange === "period") {
            start = $("#periodStart").val() + " 00:00:00";
            end = $("#periodEnd").val() + " 23:59:59";
        }

        if (start && end) {
            loadData(start, end);
        }
    });
});
$(document).on('click','#prev',function(){
	window.location.href = "/manager";
})
</script>
</body>
</html>
