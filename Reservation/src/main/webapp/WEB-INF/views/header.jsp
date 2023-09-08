<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
ul.sub_mobile {
  display: none;
  

 
}

.welcome3 {
	font-family: 'HakgyoansimWoojuR'
}

.sub_mobile li:hover{

	background-color:#ccc;
	padding-right: 40px;
}	




#menu.open { 
  left: 0px;
  width:225px;

}



.page_cover.open {
  display: block;
}

.btn1 {

  width: 50px;
  height: 50px;
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/menu.png");
  background-size: 50%;
  background-repeat: no-repeat;
  background-position: center;
  cursor: pointer;
  transition: all 0.3s ease;
  
  position:relative;
  
  bottom:80px;

}





.close {
  width: 50px;
  height: 50px;
  position: absolute;
  left: 0px;
  top: 0px;
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/close.png");
  background-size: 50%;
  background-repeat: no-repeat;
  background-position: center;
  cursor: pointer;
  
  
}

#menu {   
  width: 150px;
  height: 100%;
  position: fixed;
  top: 0px;
  left: -202px;
  z-index: 10;
  border: 1px solid #c9c9c9;
  background-color: white;
  text-align: center;
  font-weight: bold;
  transition: All 0.2s ease;
  -webkit-transition: All 0.2s ease;
  -moz-transition: All 0.2s ease;
  -o-transition: All 0.2s ease;
  padding-top: 50px;
  padding-left: 0px;
  padding-right: 40px;
   background-color: white;
  

}

#menu a {
  padding: 0;
  text-decoration: none;
  font-size: 18px;
  color: #A9F5E1;
  display: block;
  transition: 0.3s;
  align: center; /* 텍스트를 가운데 정렬합니다. */
  line-height: 5px; /* 수직 가운데 정렬을 위해 line-height 추가 */
  
  position:relative;
  left:21px;
  
  cursor:pointer;
}




.page_cover {
  width: 400%;
  height: 100%;
  position: fixed;
  top: 0px;
  right: 0px;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 4;
  display: none;
}

#menu ul { 
    width:100%; 
    margin:0; 
    padding:0;
    
    align:center;
    }
    

  #menu ul.nav li {
  width: 100%;
  list-style-type: none;
  font-size: 1px;

  margin-bottom: 10px; /* sub_mobile 항목들 사이의 간격 조절 */

  
}


#menu ul.nav li a {
  display: block;
  width: 100%;
  height: 50px; /* 높이를 변경 */
  line-height: 50px;
  text-align: center;
  color: black;
  
  text-decoration: none;

  
  align:center;
  text-align:center;
  
   font-family: 'HakgyoansimWoojuR';
  
}
    

    



#menu {
   background-color: #F7F0E0;
   color: #25a4cd;
   border: 1px solid #c9c9c9;
   
     align:center;
  text-align:center;
}

a {
  text-decoration: none;
  color:black;
}

.button12 {
  width: 70px;
  height: 30px;
  font-size: 14px;
  
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 5px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  
  position:relative;
  
  left:10px;
  }

.button:hover{
	background-color: #BDBDBD;
}


.button1{
	width: 90px;
  height: 30px;
  font-family: 'HakgyoansimWoojuR';
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 5px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  

  text-align:right;
  
  position:relative;
  
  left:20px;

}




a {
	font-family: 'HakgyoansimWoojuR';
}

@font-face {
    font-family: 'KIMM_Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

.top {
  text-align: center;
  font-family: 'KIMM_Bold', sans-serif;
  background-color: transparent; /* 배경색 투명으로 설정 */
}


.top-container {
  justify-content: space-between;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height:9.1%;
  background-color: white;
  margin-left: 247px;
   overflow: hidden;
   
   z-index: 999; /* 다른 요소 위에 표시되도록 설정 */

}

@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}


table,li{
font-family: 'HakgyoansimWoojuR';
	
}




button {
font-family: 'HakgyoansimWoojuR';
}




.welcome a {
	font-family: 'HakgyoansimWoojuR';
}


.pright{
	display: inline-block;

	width:80%;
	
	position:relative;
	left:10px;
	
	}

.welcome1 {
	display: flex;
    justify-content: space-between;
    align-items: center; /* 세로 중앙 정렬을 위해 추가 */
        font-family: 'HakgyoansimWoojuR';
        word-break:break-all;
}	

.welcome1 li:hover {
	background-color: #ccc;	
	padding-right: 40px;
		
}


.name {
	color: black;
	 font-family: 'HakgyoansimWoojuR';
}

.welcome li:first-child:hover {
	background-color: #ccc;	
	padding-right: 20px;
	
}

.welcome li:nth-child(2):hover {
	background-color: #ccc;
	padding-right: 20px;
	
}

.welcome li:nth-child(3):hover {
	background-color: #ccc;
	padding-right: 20px;

}


.welcome3 li:hover {
	background-color: #ccc;
	padding-right: 20px;

	
}




#menu ul.sub_mobile li a {
    font-size: 14px;
}

.mine {
    font-family: 'HakgyoansimWoojuR'; /* 'HakgyoansimWoojuR' 글꼴을 사용합니다. */
    weight:100%;
    
}

.mine:hover {
	background-color:#ccc;
	padding: 0;
}
#search-container {
  position: fixed;
  top: 3px;
  right: 0;
  margin-right: 19%; /* 원하는 위치로 조정하세요 */
  margin-top: 1%; /* 원하는 위치로 조정하세요 */
}

#search-input {
  width: 200px; /* 검색 입력 필드 너비 조정 */
  height: 30px;
  border: 1px solid #ccc;
  border-radius: 20px;
  padding: 5px;
}

#search-button {
  background-color: #25a4cd;
  color: #fff;
  border: none;
  border-radius: 5px;
  height: 40px;
  padding: 0 10px;
  cursor: pointer;
  margin-left: 5px;
}
	
#search-container img{
	position : absolute;
  width: 12px;
  top: 16px;
  right: 240px;
  margin: 0;
  
}

#search-input:focus + img {
  display: none; /* 입력 필드가 포커스를 받으면 이미지를 숨김 */
}

</style>

<body>





<!-- 클릭시, 메인 페이지로 이동. -->
<div class="top-container">
<h1 align=center class="top"><a href="/">Share Place</a></h1> 

<div class="btn1"></div>

<!-- 검색기능 -->
<div id="search-container">

  <form action="/allRooms" method="GET">
    <input type="text" id="search-input" name="keyword">
    
    
    <button id="search-button">검색</button>
  </form>
  
</div>

<!-- 로그인 하지 않은 상태로 다른 페이지로 이동시, userid에 빈 문자열이 들어가서 수정했습니다. -->

<c:set var="userid" value="${sessionScope.userid}" /> <!-- 세션에서 userid 값을 가져옴 -->
<c:set var="member" value="${rdao.getListOne(userid)}" /> <!-- RoomDAO를 사용하여 사용자 이름을 가져옴 -->





</div>



<div onclick="history.back();" class="page_cover"></div>



<div id="menu">
    <ul class="nav">
        <li>
           
               
                        <c:choose>
                        
                            <c:when test="${empty userid}">
                             <!-- login 버튼에 logout 버튼과 동일한 css 적용 -->
                             <div class="pright">
                             <button id="btnLogin" class="button12">로그인</button>
                             <button id="btnSignup" class="button12" >회원가입</button>
                             </div>                         
                            </c:when>
                            <c:otherwise>
                            <div class="welcome1">
                                <a><span class="name">${name}</span> 님 환영합니다</a>
                       
                                <button id="btnLogout" class="button1">로그아웃</button>
                                 </div>
                                 
                                <li>
                            	<div class="welcome23">
                                <a href='/myPage' style="color:black;" class="mine" font-family ='HakgyoansimWoojuR'>마이페이지</a>
                                </div>
                                </li> <!-- 로그인 상태일 때 회원정보 수정 메뉴 보이기 -->
                                
                            </c:otherwise>
                        </c:choose>
                   
                
           
        </li>

	
   <div class="welcome">
   <!-- 1대1문의 로그인이 안되어있으면 로그인창으로,로그인되어있으면 myWrite -->
   

		
  <li><a href="/myWrite" style="color: black" id="one">1:1문의</a></li>

   <li><a href="/FAQ"  style="color: black">자주묻는질문</a></li>

   <li><a href="/#" style="color: black">공지사항</a></li>
   
  
	</div>    
      <c:choose>
      
      <c:when test="${userid =='rlatngjs'}"> 
       <!-- 관리자 메뉴 -->
      <div class="welcome3">
      <li><a href="/manager" style="color:black;">관리자페이지</a></li>
      </div>
      </c:when>
      
      <c:when test="${userid =='xaexal'}">
      <li><a href="/manager">관리자페이지</a></li>
      </c:when>
      
   		<c:when test="${userid =='hwan'}">
    	<div class="welcome3">
      <li><a href="/manager" style="color:black;">관리자페이지</a></li>
      </div>
      </c:when>
      
      <c:when test="${userid =='gldigh123'}">
      <div class="welcome3">
      <li><a href="/manager" style="color:black;">관리자페이지</a></li>
      </div>
      </c:when>
   </c:choose>
     
     
    <li><a style="color:black;  font-family: 'HakgyoansimWoojuR';">더보기</a>
	    <ul class="sub_mobile">
	    <!-- 리뷰삭제. 연결할만한 곳이 없어요 -->
	
		
		    <li><a href="event" style="color:black;">이벤트</a></li>
		
				<li><a href="/service" style="color:black;">서비스약관</a></li>
		    
		    <li><a href="/personal" style="color:black;">개인정보처리방침</a></li>
	    </ul>
    </li>
    </ul>
    
<div onclick="history.back();" class="close"></div>
</div>




</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>

$(document).on('click','#btnLogin',function(){
    window.location.href = "/login";
 })
 $(document).on('click','#btnLogout',function(){
    window.location.href = "/logout";
 })
 $(document).on('click','#btnSignup',function(){
    window.location.href = "/signup";
 })


 
 






$(document).ready(function() {
	
	console.log(${empty userid});
	
	var a = "${empty userid}";
	console.log(a);
	
	
	  $("#one").click(function(e) {
		    // userid가 비어 있는 경우
		    if (!a) {
		      e.preventDefault(); 
		      alert("로그인이 필요한 기능입니다.");
		    } 
		  });
	
	
	
	
	
  var menuOpen = false; 


  $(".btn1").click(function() {
    if (!menuOpen) {
     
      $("#menu,.page_cover,html").addClass("open");
      window.location.hash = "#open";
    } else {
    
      $("#menu,.page_cover,html").removeClass("open");
      window.location.hash = "";
    }
    
    // 메뉴 상태 업데이트
    menuOpen = !menuOpen;
  });

  // 페이지 커버 클릭 시 메뉴 닫기
  $(".page_cover").click(function() {
    $("#menu,.page_cover,html").removeClass("open");
    window.location.hash = "";
    
    // 메뉴 상태 업데이트
    menuOpen = false;
  });

  // close 버튼 클릭 시 메뉴 닫기
  $(".close").click(function() {
    $("#menu,.page_cover,html").removeClass("open");
    window.location.hash = "";
    
    // 메뉴 상태 업데이트
    menuOpen = false;
  });
});


$("#menu ul.nav li").click(function(){
$("ul",this).slideToggle("fast");
})

;



</script>


</html>
