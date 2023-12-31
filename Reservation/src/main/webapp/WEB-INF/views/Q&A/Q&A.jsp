<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>

@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}



  body {
    font-family: 'HakgyoansimWoojuR';
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
  }

  h1 {
    text-align: center;
    background-color: #25a4cd;
    color: #fff;
    padding: 20px 0;
    margin: 0;
    font-family: 'HakgyoansimWoojuR';
  }

  table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    font-family: 'HakgyoansimWoojuR';
    font-weight:bold;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
  }

  th {
    background-color: #25a4cd;
    color: #fff;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  button.btnPrev {
    background-color: #e74c3c;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    position:relative;
		left:10%;
		
		font-family: 'HakgyoansimWoojuR';
		font-weight:bold;
  }

  button.btnPrev:hover {
    background-color: #c0392b;
  }

  button#btnWrite {
    background-color: #25a4cd;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    font-family: 'HakgyoansimWoojuR';
    font-weight:bold;
  }

  button#btnWrite:hover {
    background-color: #1d8bbf;
  }

  .pdiv {
    text-align: right;
    margin-top: 10px;
  }

  .wDiv {
    text-align: center;
    margin-top: 10px;
  }

  p {
    font-weight: bold;
  }

  a {
    text-decoration: none;
    color: #3498db;
    margin: 0 10px;
  }

  a:hover {
    text-decoration: underline;
  }

  #prevNext {
    text-align: center;
  }
  #pagestr-container {
  text-align: center;
  margin-top: 20px;
  font-size: 16px;
}

#pagestr-container a {
  text-decoration: none;
  color: #555; /* 텍스트 색상을 회색으로 설정 */
  margin: 0 5px;
  padding: 5px 10px;
  border: 1px solid #999; /* 테두리 색상을 회색으로 설정 */
  border-radius: 5px;
  background-color: #f7f7f7; /* 배경 색상을 회색으로 설정 */
  transition: background-color 0.3s ease, color 0.3s ease; /* 호버 효과 설정 */
}

#pagestr-container a:hover {
  background-color: #999; /* 호버 시 배경 색상 변경 */
  color: #fff; /* 호버 시 텍스트 색상 변경 */
}

</style>
</head>
<body>
<h1>Q&A</h1><br>
<button id="btnPrev" class="btnPrev">관리자메뉴</button>
<table id="tblBoard">
    <thead>
    <tr> 
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>조회수</th>
        <th>작성시간</th>
        <th>수정시간</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${blist}" var="bpost">
        <tr>
            <td>${bpost.seqno}</td>
            <td>${bpost.title}</td>
            <td>${bpost.writer}</td>
            <td>${bpost.hit}</td>
            <td>${bpost.created}</td>
            <td>${bpost.updated}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table>
<tr>
    <td id="prevNext">
        <div id="pagestr-container" align="center">${pagestr}</div>
        <br><br>
        <c:if test="${not empty sessionScope.userid}">
            <div class="wDiv">
                <button id="btnWrite" class="btnWrite">글쓰기</button>
            </div>
        </c:if>
        <!-- 로그인되지 않은 상태일 때 -->
        <c:if test="${empty sessionScope.userid}">
            <p>로그인을 진행해주세요</p>
        </c:if>
    </td>
</tr>
</table>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document)
    .on('click','#tblBoard tbody tr',function(){
        document.location='/view?seqno='+$(this).find('td:eq(0)').text();
        return false;
    })

    .on('click', '#btnLogout', function () {
        window.location.href = "/logout";
    })

    .on('click','#btnWrite',function(){
        window.location.href = "/write";
    })

    .on('click','#btnPrev',function(){
        document.location='/manager';
    });
</script>
</html>
