<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약 페이지</title>
</head>
<body style="text-align:center">
    <h1>예약 페이지</h1>
    
    <form action="/payment" method="post">
        <table style="text-align:center">
            <tr>
                <td>시설명:</td>
                <td>
                    <input type="text" name="room" value="${param.space }" readonly>
                </td>
            </tr>
           </table>
            <table>
            <thead><td>신청일시</td><td>신청시간<td></thead>
            <tbody><td><input type="text" name="date" value="${param.date }" readonly></td>
            <td>  <input type="text" name="selectedTimes" value="${param.selectedTimes}" readonly></tbody>
           
            </table>
            
            
           <table>
           <thead><td>회의명</td><td>개설자</td><td>참여자</td><td>회의내용</td></thead>
           <tbody>
           <td><input type="text" name="title" placeholder="회의명을 입력하세요"></td>
           <td><input type="text" name="founder" placeholder="개설자를 입력하세요"></td>
           <td><input type="text" name="participants" placeholder="참여자를 입력하세요"></td>
           <td><textarea name="content" placeholder="회의내용을 입력하세요"></textarea></td>
           </tbody></table>
           

            <table>
            <tr>
                <td colspan="2">
                    <input type="submit" value="예약확정">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>