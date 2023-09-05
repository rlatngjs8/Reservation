<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약현황</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
    }

    @font-face {
        font-family: 'SBAggroB';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    h1 {
        text-align: center;
        margin-top: 20px;
        font-family: 'SBAggroB';
    }
    .table-container {
        display: flex;
        justify-content: center;
    }
    table {
        border-collapse: collapse;
        width: 80%;
        margin-top: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    @font-face {
        font-family: 'GmarketSansMedium';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    th, td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        font-family: 'GmarketSansMedium';
    }
    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }
    tr:hover {
        background-color: #f5f5f5;
    }
    .selected-row {
        background-color: #e0e0e0;
    }
    .select-checkbox {
        width: 20px;
        height: 20px;
    }
    #btnDelete {
        display: block;
        margin: 20px auto;
        padding: 10px 20px;
        background-color: #f44336;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 10px;
    }
    #btnDelete:hover {
        background-color: #d32f2f;
    }

<<<<<<< HEAD
    .btnSearch {
        box-shadow: inset 0px 1px 0px 0px #ffffff;
        background: linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
        background-color: #ededed;
        border-radius: 6px;
        border: 1px solid #dcdcdc;
        display: inline-block;
        cursor: pointer;
        color: #777777;
        font-family: Arial;
        font-size: 15px;
        font-weight: bold;
        padding: 6px 24px;
        text-decoration: none;
        text-shadow: 0px 1px 0px #ffffff;
    }
    .btnSearch:hover {
        background: linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
        background-color: #dfdfdf;
    }
    .btnSearch:active {
        top: 1px;
    }
    .subHeader {
    display: flex;
    justify-content: space-between;
		}
		
		.serch,
		.btnDelete {
		    white-space: nowrap;
		}
=======


.custom-select {
  position: relative;
  display: inline-block;
  width: 200px; 
  height:120px;
  left:790px;
  top:60px;
  
  margin-bottom:10px;
}

.custom-select select {
  margin-top:5px;
  width: 150px;
  border: 1px solid #ccc;
}
.custom-select::after {

  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  pointer-events: none;
}


@font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


#prevMenu{
	position:relative;
	left : 200px;
	top:60px;
	
	box-shadow: 0px 5px 14px -7px #276873;
	background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	background-color:#ECE0F8;
	border-radius:8px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family: 'CookieRun-Regular';
	font-size:11px;
	font-style:italic;
	padding:5px 11px;
	text-decoration:none;
	text-shadow:0px 4px 0px #3d768a;

}
.prevMenu:hover {
	background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
	background-color:#408c99;
}
.prevMenu:active {
	position:relative;
	top:1px;
}
</style>
</head>
<body>
<br><br><br><br>
<h1>예약현황</h1>
<div class = "subHeader">
	<div class = "serch">
		<input type="text" id="searchKeyword" placeholder="검색할 키워드를 입력하세요">
		<button id="btnSearch" class="btnSearch">검색</button>
	</div>
	<div class = "btnDelete">
		<button id="btnDelete">선택된 예약 삭제</button>
	</div>
</div>

<input type="button" id="prevMenu" value="이전메뉴" class="prevMenu">



<br><br><br><br>


<div class="table-container">
    <table>
        <thead>
            <th>선택</th><th>예약번호</th><th>아이디</th><th>성함</th><th>전화번호</th><th>상품명</th><th>이용일자</th><th>이용시간</th><th>합계</th><th>결제시각</th>
        </thead>
        <tbody>
            <c:forEach items="${rlist}" var="rpost">
                <tr data-seqno="${rpost.seqno}" data-num="${rpost.seqno}">
                    <td><input type="checkbox" class="select-checkbox"></td>
                    <td>${rpost.seqno}</td>
                    <td>${rpost.userid}</td>
                    <td>${rpost.name}</td>
                    <td>${rpost.mobile}</td>
                    <td>${rpost.space_name}</td>
                    <td>${rpost.useday}</td>
                    <td>${rpost.startTime}시~${rpost.endTime}시</td>
                    <td>${rpost.totalPrice}원</td>
                    <td>${rpost.purchaseTime}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>


</body>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
$(document).ready(function() {
    $(document).on('click', '.select-checkbox', function() {
        $(this).closest('tr').toggleClass('selected-row');
    });

    $('#btnDelete').click(function() {
        var selectedRows = $('.selected-row');
        console.log(selectedRows);

        if (selectedRows.length === 0) {
            alert("삭제할 예약을 선택하세요.");
            return;
        }

        var confirmDelete = confirm("선택한 예약을 정말로 삭제하시겠습니까?");
        if (confirmDelete) {
            selectedRows.each(function() {
                var seqno = $(this).data('seqno');
                $.ajax({
                    url: "/reDelete",
                    data: { seqno: seqno },
                    type: 'post',
                    success: function(data) {
                        console.log("삭제성공");
                        selectedRows.remove();
                    }
                });
            });
        }
    });

    $('#btnSearch').click(function() {
        var keyword = $('#searchKeyword').val().trim().toLowerCase(); // 소문자로 변경
        var rows = $('.select-checkbox').closest('tr');

        if (keyword === '') {
            rows.show(); // 검색어가 없을 때 모든 행을 보여줌
            return;
        }

        rows.hide();
        rows.each(function() {
            var rowData = $(this).text().toLowerCase(); // 현재 행의 모든 텍스트를 소문자로 변경하여 가져옴
            if (rowData.includes(keyword)) {
                $(this).show();
            }
        });
    });
});
</script>
</html>