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
<body>
    <h1>매출 관리 페이지</h1>
    
    <!-- 날짜 선택 드롭다운 -->
    <label for="dateRange">날짜 선택:</label>
    <select id="dateRange" name="dateRange">
        <option value="daily">일별</option>
        <option value="monthly">월별</option>
        <option value="yearly">연도별</option>
        <option value="period">기간별</option>
    </select>
    
    <!-- 일별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="dailyDateInputs" style="display: none;">
        <label for="dailyDate">날짜:</label>
        <input type="date" id="dailyDate" name="dailyDate">
    </div>
    
    <!-- 월별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="monthlyMonthInputs" style="display: none;">
        <label for="monthlyMonth">월:</label>
        <input type="month" id="monthlyMonth" name="monthlyMonth">
    </div>
    
    <!-- 연도별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="yearlyYearInputs" style="display: none;">
        <label for="yearlyYear">연도:</label>
        <input type="number" id="yearlyYear" name="yearlyYear">
    </div>
    
    <!-- 기간별 날짜 입력 필드 (초기에는 숨겨져 있음) -->
    <div id="periodDatesInputs" style="display: none;">
        <label for="periodStart">시작 날짜:</label>
        <input type="date" id="periodStart" name="periodStart">
        <label for="periodEnd">끝 날짜:</label>
        <input type="date" id="periodEnd" name="periodEnd">
    </div>
    
    <button id="loadData">데이터 불러오기</button>
    
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
            } else if (selectedValue === "monthly") {
                $("#monthlyMonthInputs").show();
            } else if (selectedValue === "yearly") {
                $("#yearlyYearInputs").show();
            } else if (selectedValue === "period") {
                $("#periodDatesInputs").show();
            }
        });
        
        
        // 데이터 불러오기 버튼 클릭 이벤트 핸들러
        $("#loadData").click(function () {
            var dateRange = $("#dateRange").val();
            var start, end;
            
            if (dateRange === "daily") {
                // 일별 선택 시, 시작 날짜와 끝 날짜를 동일하게 설정합니다.
                var selectedDate = $("#dailyDate").val();
                start = selectedDate + " 00:00:00";
                end = selectedDate + " 23:59:59";
            } else if (dateRange === "monthly") {
                // 월별 선택 시, 해당 월의 첫 날과 마지막 날을 설정합니다.
                var selectedMonth = $("#monthlyMonth").val();
                start = selectedMonth + "-01 00:00:00";
                end = selectedMonth + "-31 23:59:59";
            } else if (dateRange === "yearly") {
            		start = selectedYear + "-01-01 00:00:00";
                end = selectedYear + "-12-31 23:59:59";
            }  else if (dateRange === "period") {
                // 기간별 선택 시, 시작 날짜와 끝 날짜를 설정합니다.
                start = $("#periodStart").val() + " 00:00:00";
                end = $("#periodEnd").val() + " 23:59:59";
            }
            
            // "start"와 "end" 값이 비어 있는지 확인
            if (start && end) {
                $.ajax({
                    url: "/getSalesData",
                    type: "post",
                    dataType: 'json',
                    data: { start: start, end: end },
                    success: function (data) {
                        // 서버에서 반환된 데이터를 파싱하여 테이블에 추가
                        var salesTable = $("#salesTable tbody");

                        // 테이블 내용을 초기화
                        salesTable.empty();

                        // 데이터를 반복하며 테이블에 추가
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
        });
    });
    </script>
</body>
</html>
