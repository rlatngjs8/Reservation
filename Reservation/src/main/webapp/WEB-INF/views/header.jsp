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

  

 
}

.welcome3 {
	font-family: 'HakgyoansimWoojuR !important'
}

.sub_mobile li:hover{

	background-color:#ccc !important;
	padding-right: 40px !important;
}	




#menu.open { 
  left: 0px !important;
  width:205px !important;

}



.page_cover.open {
  display: block;
}

.headerbtn {

  width: 50px ;
  height: 50px ;
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/menu.png") !important;
  background-size: 50% ;
  background-repeat: no-repeat !important;
  background-position: center !important;
  cursor: pointer !important;
  transition: all 0.3s ease !important;
  
  position:fixed !important;
  
  bottom: 92% !important; 
  left: 250px;
  
  

}





.close {
  width: 50px !important;
  height: 50px !important;
  position: absolute !important;
  left: 0px !important;
  top: 0px !important;
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/close.png") !important;
  background-size: 50% !important;
  background-repeat: no-repeat !important;
  background-position: center !important;
  cursor: pointer !important;
  
  
}

#menu {   
  width: 150px !important;
  height: 100% !important;
  position: fixed !important;
  top: 0px !important;
  left: -202px !important;
  z-index: 10 !important;
  border: 1px solid #c9c9c9 !important;
  background-color: white !important;
  text-align: center !important;
  font-weight: bold !important;
  transition: All 0.2s ease !important;
  -webkit-transition: All 0.2s ease !important;
  -moz-transition: All 0.2s ease !important;
  -o-transition: All 0.2s ease !important;
  padding-top: 50px !important;
  padding-left: 0px !important;
  padding-right: 40px !important;
   background-color: white !important;
  

}

#menu a {
  padding: 0 !important;
  text-decoration: none !important;
  font-size: 18px !important;
  color: #A9F5E1 !important;
  display: block;
  transition: 0.3s !important;
  align: center !important; /* 텍스트를 가운데 정렬합니다. */
  line-height: 5px !important; /* 수직 가운데 정렬을 위해 line-height 추가 */
  
  position:relative !important;
  left:21px !important;
  
  cursor:pointer !important;
}




.page_cover {
  width: 400% !important;
  height: 100% !important;
  position: fixed !important;
  top: 0px !important;
  right: 0px v;
  background-color: rgba(0, 0, 0, 0.4) !important;
  z-index: 4;
  display: none;
}

#menu ul { 
    width:100% !important; 
    margin:0 !important; 
    padding:0 !important;
    
    align:center !important;
    }
    

  #menu ul.nav li {
  width: 100% !important;
  list-style-type: none !important;
  font-size: 1px !important;

  margin-bottom: 10px !important; /* sub_mobile 항목들 사이의 간격 조절 */

  
}


#menu ul.nav li a {
  display: block;
  width: 100% !important;
  height: 50px !important; /* 높이를 변경 */
  line-height: 50px !important;
  text-align: center !important;
  color: black !important;
  
  text-decoration: none !important;

  
  align:center !important;
  text-align:center !important;
  
   font-family: 'HakgyoansimWoojuR' !important;
  
}
    

    



#menu {
   background-color: #F7F0E0 !important;
   color: #25a4cd !important;
   border: 1px solid #c9c9c9 !important;
   
     align:center !important;
  text-align:center !important;
}



.button12 {
  width: 70px !important;
  height: 30px !important;
  font-size: 14px !important;
  
  text-transform: uppercase !important;
  letter-spacing: 2.5px !important;
  font-weight: 500 !important;
  color: #000 !important;
  background-color: #fff !important;
  border: none !important;
  border-radius: 5px !important;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1) !important;
  transition: all 0.3s ease 0s !important;
  cursor: pointer !important;
  outline: none !important;
  
  position:relative !important;
  
  left:10px !important;
  }

.button:hover{
	background-color: #BDBDBD !important;
}


.button1{
	width: 90px !important;
  height: 30px !important;
  font-family: 'HakgyoansimWoojuR' !important;
  font-size: 11px !important;
  text-transform: uppercase !important;
  letter-spacing: 2.5px !important;
  font-weight: 500 !important;
  color: #000 !important;
  background-color: #fff !important;
  border: none !important;
  border-radius: 5px !important;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1) !important;
  transition: all 0.3s ease 0s !important;
  cursor: pointer !important;
  outline: none !important;
  

  text-align:right !important;
  
  position:relative !important;
  
  left:30px !important;

}


@font-face {
    font-family: 'IAMAPLAYER';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/IAMAPLAYER.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}


.top a {
    font-family: 'Poppins', sans-serif !important; /* 웹 폰트를 적용합니다. */
    font-weight: bold;
    font-size: 50px;
    text-decoration: none !important;
    color: black;
}






 
@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'CookieRun-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

a {
	  text-decoration: none ;

}


.top {
  text-align: center;
font-family: 'HakgyoansimWoojuR;
  background-color: transparent; /* 배경색 투명으로 설정 */
}


.top-container {
  position: fixed;
  justify-content: space-between;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%; /* 99%에서 100%로 수정 */
  height: 9.1%;
  background-color: white;
  overflow: hidden;
  z-index: 2;
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
  margin-right: 13%;
  margin-top: 1%;
}

#search-input {
  width: 200px;
  height: 30px;
  border: 1px solid #ccc;
  border-radius: 20px;
  padding: 5px 35px 5px 5px; /* 오른쪽 패딩을 조절하여 아이콘이 텍스트와 겹치지 않도록 함 */
}

#search-icon {
  position: absolute;
  top: 58%; /* 아이콘을 수직 가운데 정렬 */
  right: 10px; /* 아이콘을 오른쪽에 정렬 */
  transform: translateY(-50%); /* 아이콘을 수직 가운데 정렬 */
  width: 20px;
  height: 20px;
  cursor: pointer;
}

#search-button {
  background-color: #25a4cd;
  color: #25a4cd;
  border: none;
  border-radius: 20px;
  height: 30px;
  padding: 0 10px;
  cursor: pointer;
  margin-left: 5px;
  margin-bottom: 5px;
  
}
	

#menu.open + .top-container {
  z-index: 1001;
}

</style>

<body>





<!-- 클릭시, 메인 페이지로 이동. -->
<div class="top-container">
<h1 class="top"><a href="/">SHARE PLACE</a></h1> 

<div class="headerbtn"></div>

<!-- 검색기능 -->
<div id="search-container">

  <form action="/allRooms" method="GET" style="margin-top: 3%">
    <input type="text" id="search-input" name="keyword" placeholder="검색어를 입력하세요">
	<img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" id="search-icon">

    
    
    <button id="search-button">검색</button>
  </form>
  
</div>



<!-- 로그인 하지 않은 상태로 다른 페이지로 이동시, userid에 빈 문자열이 들어가서 수정했습니다. -->







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
   

		 <c:choose>                    
           <c:when test="${!empty userid}">
  <li><a href="/myWrite" style="color: black" id="one">1:1문의</a></li>
	</c:when>
		  <c:otherwise>
		  <li><a href="/login" style="color: black" id="one">1:1문의</a></li>
		  </c:otherwise>
</c:choose>

   <li><a href="/FAQ"  style="color: black">자주묻는질문</a></li>


   
  
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
	
	$(".sub_mobile").hide();
	
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


  $(".headerbtn").click(function() {
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
