<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>공간예약 시스템</title>
</head>
<style>

body {
    text-align: center;
}

.room-info {
    text-align: center;
    margin: 10px;
    border: 1px solid #ccc;
    padding: 10px;
    background-color: #f5f5f5;
}

.room-info img {
    display: grid;
    margin: 0 auto;
}

/*
.first li css 삭제
*/


/*
.first img css 수정
*/
.first img {
  width:50%;
  height: 60%;
}


.first{
  display: flex;
  list-style: none;
  justify-content: center;
  margin: 20px 0;
  padding: 0;
}

.second {
    display: flex;
    list-style: none;
    justify-content: center;
    margin: 20px 0;
    padding: 0;
}










/*
.card css 부분 수정 
*/
.card {
 display: flex;
        flex-direction: column;
        padding: 10px;
        margin: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
        width:250px;
        height:240px;
    
}


/*
.card img css 부분 수정
*/
.card img {
    max-width: 90%;
    height: 100%;
    width: 1000px;
    margin-right: 10px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}



/*
html.open css 삭제
*/

/*
menu.open css 삭제
*/

/*
.page_cover open css 삭제
*/

/*
.btn css 삭제
*/

/*
.close css 삭제
*/

/*
.menu css 삭제
*/

/*
.menu a css 삭제
*/

/*
.menu open css 삭제
*/


/*
.page_cover open css 삭제
*/

/*
.page_cover css 삭제
*/

/*
.menu ul css 삭제
*/

/*
.menu ul.nav li css 삭제
*/

/*
.menu ul.nav li a css 삭제
*/

/*
.menu ul.nav li a:hover css 삭제
*/

/*
.menu ul.nav li. sub_mobile a css 삭제
*/

/*
.menu ul.nav li .sub_mobile a:hover css 삭제
*/

/*
.cc css 삭제
*/

/*
.button css 삭제
*/

/*
.button:hover css 삭제
*/

/*
.my-box css 삭제
*/

/*
.ex1 css 삭제
*/

/*
.button css 삭제
*/

/*
.button:hover css 삭제
*/

/*
.menu css 삭제
*/


/*
h1,h3 css 에서 h1 css만 삭제
*/

/*
img css 삭제
*/

/*
.slider css 삭제
*/

/*
.slide css 삭제
*/

/*
img css 삭제
*/

h3 {
   font-size: 24px;
   color: #333;
   margin-bottom: 10px;
}



.newleft {
  text-align: left;
  margin-left: 10%;
}




/*
.banner css 추가
*/
.banner{
   background-color:#f2f2f2;
   padding: 10px;
   text-align: center;
   color:#333;
}

/*
.banner a css 추가
*/
.banner a{
   text-decoration:none;
   color:#0007bff;
   font-weight: bold;
}



/*
card1 css 추가
*/
.card1 {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 10px;
        margin: 10px;
        border: 3px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
        width:250px;
        height:240px;
        
    }
    


.new card img{
    max-width: 90%;
    height: 100%;
    width: 1000px;
    margin-right: 10px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
    
/*
.card1:hover css 추가
*/

/*
.card1 img css 추가
*/
    .card1 img {
        max-width: 100%;
        height: auto;
        margin-bottom: 10px; 
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
/*
.card1-content css 추가
*/

/*
.card1-title css 추가
*/

/*
.card1-description css 추가
*/

/*
.card1-link css 추가
*/

    
/*
.card1-link:hover css 추가
*/



/*
.card1 p css 추가
*/


/*
.mli img css 추가
*/
.mli img {
  width:60%;
}
.logo {
   height:40px;
   weight:40px;
}

.cDiv{
   overflow: hidden;
}


</style>
<body>


   
<!-- header (Share Place, 좌측 상단 햄버거 모양 버튼을 header.jsp로 만들었습니다.) -->
<%@include file="header.jsp" %>






<!-- 이벤트 배너를 추가하고, "event"라는 링크를 걸었습니다. -->
<div class="banner">
        <p>🎉 할인 이벤트 진행 중! <a href="event">자세히 보기</a></p>
    </div>









<!-- 이미지 조정 및 룸에 대한 설명을 아이콘 아래에 표시 -->
<div>
<ul class="first">

   <li><a href="#"><img src="img/party.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <br>
      <a>파티룸</a>
   <li><a href="#"><img src="img/music.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <br>
      <a>녹음실</a>
   <li><a href="#"><img src="img/meeting.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <br>
      <a>회의실</a>
   <li><a href="#"><img src="img/seminar.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <br>
      <a>강의실</a>
   <li><a href="#"><img src="img/study.jpg"></a>
   <br>
      <a>스터디룸</a>

</ul>
</div>

<!-- slider 부분 삭제 -->

<br><br><br>
<hr/>

    <div>
       <br><br><br><br><br>
       
       
       
       <h3 class="newleft">새로 등록했어요</h3>
    </div>
    
    
    <!-- 이미지 작업중입니다. -->
 <div class="second">
    
   <!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="/#"><img src="img/newMeeting.jpg" alt="이미지 2"></a>
         <br>
        <p id="demo">안녕하세요. Meeting Room.</p>
    </div>
    
    
    <div class="card">
        <a href="#"><img src="img/newMusic.jpg" alt="이미지 2"></a>
        <br>
        <p id="demo">안녕하세요. Music Room.</p>
    </div>
    
    
    <div class="card">
        <a href="#"><img src="img/newParty.jpg" alt="이미지 2"></a>
        <br>
        <p id="demo">안녕하세요. Party Room.</p>
    </div>
    <div class="card">
       <a href="#"><img src="img/newStudy.jpg" alt="이미지 4"></a>
       <br>
       <p id="demo">안녕하세요. Study Room.</p>
    </div>
</div>


 <br><br><br>


   <div>
       <h3 class="newleft">방금 올라온 후기</h3>      
    </div>

    
    <div class="second">
    
   <!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card1">
         <a href="/recentlyReview"><img src="img/second.jpg" alt="이미지 2"></a>
        <p id="demo">좋아요좋아요좋아요</p>
    </div>
    
    
    <div class="card1">
        <a href="#"><img src="img/second.jpg" alt="이미지 2"></a>
        <p id="demo">좋아요좋아요좋아요</p>
    </div>
    
    
    <div class="card1">
        <a href="#"><img src="img/second.jpg" alt="이미지 2"></a>
        <p id="demo">좋아요좋아요좋아요</p>
    </div>
    
    <div class="card1">
       <a href="#"><img src="img/second.jpg" alt="이미지 3"></a>
       <p id="demo">좋아요좋아요좋아요</p>
    </div>
    
    <div class="card1">
       <a href="#"><img src="img/second.jpg" alt="이미지 3"></a>
       <p id="demo">좋아요좋아요좋아요</p>
    </div>
    
  </div>
  


  
  
  
  
  
    
  
   
   <!-- a태그(id=move top btn)을 삭제 -->
 
 



<!-- header와 마찬가지로 footer.jsp라는 파일을 만들었습니다. -->
<%@include file="footer.jsp" %>



</body>



<!-- script부분 전체 삭제 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>




</script>
</html>