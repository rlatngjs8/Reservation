<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>하늘섹 테마</title>
    <style>
        body {
            font-family: 'Nanum Gothic', sans-serif; /* 한글 폰트 적용 */
            background-color: #f0f4f8; /* 연한 파란색 배경 */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #3498db; /* 진한 블루 헤더 */
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }

        h1 {
            margin: 0;
            font-size: 32px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff; /* 흰색 배경 테이블 */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: center;
            vertical-align: middle;
        }

        th {
            background-color: #3498db; /* 테이블 헤더 블루 */
            color: #fff;
            font-size: 18px;
        }

        tr:nth-child(even) {
            background-color: #ebf5fb; /* 연한 파란색 로우 */
        }

        .total-price {
            text-align: right;
            font-weight: bold;
            font-size: 1.2em;
            margin: 20px;
        }

        .selected-row {
            background-color: #d5dbdb; /* 선택한 로우 연한 블루 */
        }

        button {
            background-color: #3498db; /* 블루 버튼 */
            color: #fff;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        .select-checkbox {
            width: 20px;
            height: 20px;
        }

        /* 추가 스타일링 */
        #btnDelete {
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <header>
        <h1>장바구니</h1>
    </header>
    <table>
        <thead>
            <tr>
                <th>전체</th>
                <th>상품명</th>
                <th>판매가</th>
                <th>입실시간</th>
                <th>퇴실시간</th>
                <th>주문관리</th>
            </tr>
        </thead>
        <tbody id="shopping_basket">
            <!-- 상품 정보 들어가는 곳 -->
        </tbody>
    </table>
    <button id="btnDelete">삭제</button>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function () {
    get_temp_reservation();
});

let productCount = 1; // 초기 상품 번호

function get_temp_reservation() {
    console.log('임시예약 데이터 불러옴');
    $.ajax({
        url: '/get_temp_reservation',
        data: {},
        type: 'post',
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $("#shopping_basket").empty();
            
            // 변수를 초기화하여 총 가격을 저장할 변수 생성
            let total_price = 0;

            for (let i = 0; i < data.length; i++) {
                // 각 행의 가격을 정수로 변환하여 누적
                total_price += parseInt(data[i]['total_price']);

                let temp_data =
                    "<tr>" +
                    "<td>" + productCount + "</td>" + // 상품 번호 추가
                    "<td>" + "<img src='img/" + data[i]['img1'] + "' title='slider 1' style='width: 50px; height: 50px;'>" 
                    + data[i]['space_name'] + "</td>" +
                    "<td>" + data[i]['total_price'] + "원" + "</td>" +
                    "<td>" + data[i]['start_time'] + "시" + "</td>" +
                    "<td>" + data[i]['end_time'] + "시" + "</td>" +
                    "<td><input type='checkbox' id='" + data[i]['reservation_id'] +
                    "' name='" + data[i]['reservation_id'] + "' value='" + data[i]['reservation_id'] +
                    "' style='width: 20px; height: 20px;' class='select-checkbox'></td>" +
                    "</tr>";
                $('#shopping_basket').append(temp_data);

                productCount++; // 상품 번호 증가
            }

            // 총 가격을 출력
            let total_price_row = "<tr><td colspan='6'>총 가격: " + total_price + "원</td></tr>";
            $('#shopping_basket').append(total_price_row);
        }
    });
}

$(document).on('click', '.select-checkbox', function () {
    $(this).closest('tr').toggleClass('selected-row');
});

$('#btnDelete').click(function () {
    var selectedRows = $('.selected-row');
    console.log("selectedRows", selectedRows);

    if (selectedRows.length === 0) {
        alert("삭제할 예약을 선택하세요.");
        return;
    }

    var confirmDelete = confirm("선택한 예약을 정말로 삭제하시겠습니까?");
    if (confirmDelete) {
        selectedRows.each(function () {
            var currentRow = $(this);
            var reservation_id = currentRow.find('input[type="checkbox"]').val();
            
            $.ajax({	
                url: "/delete_temp_reservation",
                data: { reservation_id: reservation_id },
                type: 'post',
                success: function (data) {
                    if(data=='0'){
                        console.error("삭제 실패:", error);                        		
                    } else {
                        console.log("삭제 성공");
                        currentRow.remove();
                	}
                },
                error: function (xhr, status, error) {
                    console.error("삭제 실패:", error);
                }
            });
        });
    }
});
</script>
</html>