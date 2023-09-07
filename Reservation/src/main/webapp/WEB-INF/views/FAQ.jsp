<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

header {
    background-color: #007bff;
    color: white;
    padding: 20px 0;
    text-align: center;
}

h1 {
    font-size: 24px;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

.faq-category {
    margin: 20px 0;
}

.faq-item {
    margin: 20px 0;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #fff;
}

.faq-question {
    font-weight: bold;
    cursor: pointer;
}

.faq-answer {
    margin-top: 10px;
    display: none;
}

.toggle-button::before {
    content: "▼";
    margin-right: 5px;
}

.open .toggle-button::before {
    content: "▲";
}

p {
    font-size: 16px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<header>
    <h1>쉐어플레이스 자주묻는질문 FAQ</h1>
</header>
<div class="container">
    <p>자주 찾으시는 질문을 모아 보았어요.</p>
    
    <!-- 계정문의 -->
    <section class="faq-category">
        <h2>계정문의</h2>
        <c:forEach items="${member}" var="mem">
            <div class="faq-item">
                <div class="faq-question toggle-button">${mem.title}</div>
                <div class="faq-answer">${mem.content}</div>
            </div>
        </c:forEach>
    </section>
    
    <!-- 예약문의 -->
    <section class="faq-category">
        <h2>예약문의</h2>
        <c:forEach items="${Reservation}" var="re">
            <div class="faq-item">
                <div class="faq-question toggle-button">${re.title}</div>
                <div class="faq-answer">${re.content}</div>
            </div>
        </c:forEach>
    </section>
    
    <!-- 결제문의 -->
    <section class="faq-category">
        <h2>결제문의</h2>
        <c:forEach items="${pay}" var="pay">
            <div class="faq-item">
                <div class="faq-question toggle-button">${pay.title}</div>
                <div class="faq-answer">${pay.content}</div>
            </div>
        </c:forEach>
    </section>
    
    <!-- 영수증문의 -->
    <section class="faq-category">
        <h2>영수증문의</h2>
        <c:forEach items="${receipt}" var="r">
            <div class="faq-item">
                <div class="faq-question toggle-button">${r.title}</div>
                <div class="faq-answer">${r.content}</div>
            </div>
        </c:forEach>
    </section>
    
    <!-- 취소/환불문의 -->
    <section class="faq-category">
        <h2>취소/환불문의</h2>
        <c:forEach items="${cancel}" var="c">
            <div class="faq-item">
                <div class="faq-question toggle-button">${c.title}</div>
                <div class="faq-answer">${c.content}</div>
            </div>
        </c:forEach>
    </section>
    
    <!-- 이용문의 -->
    <section class="faq-category">
        <h2>이용문의</h2>
        <c:forEach items="${use}" var="u">
            <div class="faq-item">
                <div class="faq-question toggle-button">${u.title}</div>
                <div class="faq-answer">${u.content}</div>
            </div>
        </c:forEach>
    </section>
    
</div>
</body>
<script>
$(document).ready(function() {
    $('.faq-question').click(function() {
        var answer = $(this).next();
        $(this).parent().toggleClass('open');
        if ($(this).parent().hasClass('open')) {
            answer.slideDown();
        } else {
            answer.slideUp();
        }
    });
});
</script>
</html>
