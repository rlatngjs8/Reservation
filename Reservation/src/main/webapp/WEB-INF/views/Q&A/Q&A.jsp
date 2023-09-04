<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }

    h1 {
        text-align: center;
        margin: 20px 0;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e0e0e0;
    }

    #tblBoard {
        margin-top: 20px;
    }

    #pagination {
        display: flex;
        justify-content: space-between;
        margin: 20px 0;
    }

    #writeButton {
        text-align: left; /* Modified */
        margin-top: 20px;
    }

    #prevNext {
        text-align: center; /* Modified */
        margin-top: 20px;
    }
    
    
    
     .btnPrev {
	box-shadow: 3px 2px 0px 0px #899599;
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border-radius:8px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:#3a8a9e;
	font-family:Arial;
	font-size:8px;
	padding:10px 23px;
	text-decoration:none;
	text-shadow:0px 1px 0px #e1e2ed;
}
.btnPrev:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.btnPrev:active {
	position:relative;
	top:1px;
}
@font-face {
    font-family: 'Cafe24Supermagic-Bold-v1.0';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/Cafe24Supermagic-Bold-v1.0.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
.pdiv p{
	font-family: 'Cafe24Supermagic-Bold-v1.0';
	font-size : 25px;
}
    
    
    
    
.btnWrite {
	box-shadow:inset 0px 1px 0px 0px #dcecfb;
	background:linear-gradient(to bottom, #bddbfa 5%, #80b5ea 100%);
	background-color:#bddbfa;
	border-radius:6px;
	border:1px solid #84bbf3;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	font-weight:bold;
	padding:5px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528ecc;
}
.btnWrite:hover {
	background:linear-gradient(to bottom, #80b5ea 5%, #bddbfa 100%);
	background-color:#80b5ea;
}
.btnWrite:active {
	position:relative;
	top:1px;
}    
</style>
</head>
<body>
<h1>Q&A</h1>
<table>
    <tr>
    <td style="text-align:left">
    	<button id="btnPrev" class="btnPrev">이전메뉴</button>
    	</td>
       <td style="text-align: right;">
       <!-- 로그인 상태일 때 -->
      <c:if test="${not empty sessionScope.userid}">
       <button id="btnLogout" class="btnPrev">로그아웃</button>
       <div class="pdiv">
       <p>로그인한 아이디: ${sessionScope.userid}</p>
      </c:if>
      </div>
      
      <!-- 로그인되지 않은 상태일 때 -->
      <c:if test="${empty sessionScope.userid}">
        <a href="/login">로그인</a>
        <a href="/signup">회원가입</a>
      </c:if>
       </td>
     </tr>
</table>
<table id="tblBoard">
    <thead>
    <tr>
        <th>게시물번호</th>
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
    <td id="prevNext"> <!-- Modified -->
        <%--${prev}&nbsp;${next} --%>
        ${pagestr}
        <br><br>
        <c:if test="${not empty sessionScope.userid}">
        
        <div class="wDiv">
      <button id="btnWrite" class="btnWrite">글쓰기</button> 
      </c:if>
      </div>
      
      
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

$(document).on('click', '#btnLogout', function () {
    window.location.href = "/logout";
})

$(document).on('click','#btnWrite',function(){
	window.location.href = "/write";
	
})

.on('click','#btnPrev',function(){
	document.location='/manager';
	
})

;

</script>
</html>