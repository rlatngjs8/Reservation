<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>리뷰 리스트</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }
        #body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #009688;
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
    </style>
</head>
<body>
<h1>리뷰 리스트</h1>
    <div id="body">
        <table>
            <thead>
                <tr>
                    <th style="width: 5%;">번호</th>
                    <th style="width: 30%;">상품명</th>
                    <th style="width: 9%;">유저 아이디</th>
                    <th style="width: 6%;">조회수</th>
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
<div id="pagestr">
    ${pagestr}
</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
</script>
</html>
