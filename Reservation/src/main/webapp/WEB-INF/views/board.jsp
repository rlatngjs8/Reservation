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
</style>
</head>
<body>
<h1>게시판</h1>
<table>
    <tr>
       <td style="text-align: right;">
       <!-- 로그인 상태일 때 -->
      <c:if test="${not empty sessionScope.username}">
       <a href="/logout">로그아웃</a>
       <p>로그인한 아이디: ${sessionScope.username}</p>
      </c:if>
      
      <!-- 로그인되지 않은 상태일 때 -->
      <c:if test="${empty sessionScope.username}">
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
        <c:if test="${not empty sessionScope.username}">
      <p><a href="/write">글쓰기</a></p>
      </c:if>
      
      <!-- 로그인되지 않은 상태일 때 -->
      <c:if test="${empty sessionScope.username}">
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
});



</script>
</html>