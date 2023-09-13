<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>리뷰 리스트</title>
    <style>
    @font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
    
    
        body {
            font-family: 'HakgyoansimWoojuR';
            background-color: #f7f7f7;
            margin-top:100px;
        }
        #body {
            font-family: 'HakgyoansimWoojuR';
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        @font-face {
    font-family: 'SBAggroB';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

        h1 {
            text-align: center;
            margin-bottom:40px;
            color: #009688;
            font-family: 'HakgyoansimWoojuR';
        }

        .table-container {
            display: flex;
            justify-content: center;
            flex-direction: column;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 80%;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }



        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
           font-family: 'HakgyoansimWoojuR';
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
        
        #pagestr {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .fh1{
        	color:black;
        }
        
        @font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
        
        
 .btnPrev {
	 display: block;       
        padding: 10px 20px;
        background-color: skyblue;
        color: black;
        border: none;
        cursor: pointer;
        border-radius: 10px;
        font-size : 20px;
        font-weight:bold;
        
	
	margin-left:200px;
	font-family: 'HakgyoansimWoojuR';
}
.btnPrev:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
}
.btnPrev:active {
	position:relative;
	top:1px;
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
<h1 class="fh1">리뷰 리스트</h1>
<button id="btnPrev" class="btnPrev">관리자메뉴</button>
    <div id="body">
        <table>
            <thead>
                <tr>
                    <th style="width: 5%;">번호</th>
                    <th style="width: 30%;">상품명</th>
                    <th style="width: 9%;">유저 아이디</th>
                    <th style="width: 6%;">별점</th>
                    <th style="width: 35%;">내용</th>
                    <th style="width: 20%;">작성 시간</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${rlist}" var="re" varStatus="loop">
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>${re.space_name}</td>
                        <td>${re.userid}</td>
                        <td>${re.rating}</td>
                        <td>${re.review_content}</td>
                        <td>${re.created}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
<div id="pagestr-container" align="center">
    ${pagestr}
</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document)
.on('click','#btnPrev',function(){
	window.location.href="/manager";
	
})
</script>
</html>
