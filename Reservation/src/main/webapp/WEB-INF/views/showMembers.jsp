<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
  }
  h1 {
    text-align: center;
    margin-top: 20px;
  }
  #header {
    display: flex; /* flex 속성 추가 */
    justify-content: space-between; /* 좌우 정렬 */
    align-items: center; /* 세로 중앙 정렬 */
    padding: 10px;
  }
  #btnDelete {
    cursor: pointer;
    color: #f00;
    text-decoration: underline;
  }
  #btnDelete:hover {
    color: #f50; /* 마우스 호버 시 색상 변경 */
  }
  img {
    width: 75px;
    height: 75px;
  }
  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  th, td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
  }
  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }
  tr:hover {
    background-color: #f5f5f5;
  }
  .selected-row {
    background-color: #e0e0e0; /* 선택된 행의 배경색 */
  }
</style>
</head>
<body>
<h1>회원정보 조회</h1>
<div id="header">
  <img src="img/이전메뉴.png" alt="이전 메뉴" id="prevMenu">
  <div id="btnDelete">회원정보 삭제</div>
</div>
<table>
<thead>
  <tr>
    <th>회원번호</th>
    <th>로그인아이디</th>
    <th>비밀번호</th>
    <th>이름</th>
    <th>생년월일</th>
    <th>주소</th>
    <th>이메일</th>
    <th>전화번호</th>
    <th>가입시각</th>
  </tr>
</thead>
<tbody id="tblMembers">
<c:forEach items="${blist}" var="bpost">
  <tr data-seqno="${bpost.num}" data-num="${bpost.num}">
    <td>${bpost.num}</td>
    <td>${bpost.userid}</td>
    <td>${bpost.passcode}</td>
    <td>${bpost.name}</td>
    <td>${bpost.birthday}</td>
    <td>${bpost.address}</td>
    <td>${bpost.email}</td>
    <td>${bpost.mobile}</td>
    <td>${bpost.created}</td>
  </tr>
</c:forEach>
</tbody>
</table>
<table>
<tr><td align="left">${pagestr}</td></tr>
</table>
</body>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
$(document).ready(function() {
		$(document).on('click', '#prevMenu', function(){
			window.location.href="/manager";
		})
	  // 테이블의 행을 클릭했을 때 선택된 행으로 스타일을 변경
	  $(document).on('click', '#tblMembers tr', function() {
	    var clickedRow = $(this);

	    // 이미 선택된 행을 원래 색상으로 되돌림
	    $('#tblMembers tr').removeClass('selected-row');

	    // 클릭한 행에 스타일을 적용하여 선택했음을 표시
	    clickedRow.addClass('selected-row');
	  });

	  // 'btnDelete' 버튼 클릭 시 선택된 행을 삭제
	  $(document).on('click', '#btnDelete', function() {
	    var selectedRow = $('#tblMembers tr.selected-row');

	    if (selectedRow.length === 0) {
	      alert("삭제할 회원을 선택하세요.");
	      return;
	    }

	    var confirmDelete = confirm("정말로 선택한 회원을 삭제하시겠습니까?");
	    if (confirmDelete) {
	    	var memberId = selectedRow.data('num'); // 선택한 행을 화면에서 제거
	    	console.log(memberId);
	    	$.ajax({
	    		url: '/memberDelete',
	    		data: {num: memberId},
	    		type: 'post',
	    		dataType: 'text',
	    		success: function(data){
	    			console.log("삭제성공");
	    			selectedRow.remove(); // 선택한 행을 화면에서 제거
	    		}
	    	})
	    }
	  });
	});
</script>
</html>