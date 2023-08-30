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

#menu.open {
  left: 0px;
}

.page_cover.open {
  display: block;
}

.btn1 {
  width: 50px;
  height: 50px;
  position: fixed;
  left: 0px;
  top: 0px;
  z-index: 1;
  background-image: url("http://s1.daumcdn.net/cfs.tistory/custom/blog/204/2048858/skin/images/menu.png");
  background-size: 50%;
  background-repeat: no-repeat;
  background-position: center;
  cursor: pointer;
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
}

#menu a{
 padding:0;
 text-decoration: none;
 font-size: 18px;
 color: #25a4cd;
 display: block;
 transition: 0.3s;
 }

#menu.open {
  left: 0px;
}



.page_cover {
  width: 100%;
  height: 100%;
  position: fixed;
  top: 0px;
  right: 0px;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 4;
  display: none;
}

#menu ul { 
    width:190px; 
    margin:0; 
    padding:0;
    }
    
#menu ul.nav li {
    position:relative; 
    float:left; 
    width:100%; 
    list-style-type:none; 
    font-size:18px;
    }
    
#menu ul.nav li a {
    display:block; 
    width:100%; 
    height:100%; 
    line-height:50px; 
    text-indent:20px;
    text-align: left;
    color:#25a4cd; 
    font-weight:bold; 
    text-decoration:none;
    font-size:13px;
    }
    
#menu ul.nav li a:hover {
	background:#eee;
    }
    
#menu ul.nav li .sub_mobile a {
    position:relative;
    float:left;
    display:block;
    width:100%;
    z-index:999;
    background:#ccc;
	}

#menu ul.nav li .sub_mobile a:hover {
    background:#787878;
    color:#fff;
    z-index:999;
    }


#menu {
   background-color: #F7F0E0;
   color: #25a4cd;
   border: 1px solid #c9c9c9;
}



</style>

<body>
<div class="btn1"></div>
<div onclick="history.back();" class="page_cover"></div>
<!-- 21312312312312 -->
<div id="menu">
   <ul class="nav">
    <li>
    <table>
		<tr><td align="right">
			<c:if test="${name == ''}">   	<!--name이 빈문자열이면 아래 실행-->
				<button id=btnLogin>로그인</button>
			</c:if>
			<c:if test="${name != ''}">			 
				<span>${name}</span> 님 환영합니다&nbsp;&nbsp;<button id="btnLogout">로그아웃</button>	<!-- logout 없음 만들어야함 -->
		    <li><a href='/reservation'>예약현황</a></li>
			</c:if>
		</td></tr>
		</table>
    </li>
       
       
<%--     <c:if test="${infoline != '' }"> --%>
<%--     </c:if> --%>
    
    
    <li><a href="/q&a">Q&A</a></li>
    <li><a>서브 메뉴</a>
    <ul class="sub_mobile">
    <li><a href="/review">Review</a></li>

    <li><a href="event">이벤트</a></li>
    
    
   	<c:choose>
   	
   	<c:when test="${name =='rlatngjs'}">  <!-- 관리자 메뉴 -->
   	<li><a href="/manager">관리자페이지</a></li>
   	</c:when>
   	
   	<c:when test="${name =='nayeon'}">
   	<li><a href="/manager">관리자페이지</a></li>
   	</c:when>
   	
	<c:when test="${name =='hwan'}">
   	<li><a href="/manager">관리자페이지</a></li>
   	</c:when>
   	
	</c:choose>
	  
    </ul>
    </li>
    </ul>
    
<div onclick="history.back();" class="close"></div>
</div>



</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>






	$(document).ready(function() {
		$("#menu1 ul.sub_mobile").hide();

		$(".btn1").click(function() {
			$("#menu,.page_cover,html").addClass("open");
			window.location.hash = "#open";
		})
	})

	window.onhashchange = function() {
		if (location.hash != "#open") {
			$("#menu,.page_cover,html").removeClass("open");
		}
	};

	$("#menu ul.nav li").click(function() {
		$("ul", this).slideToggle("fast");
	});
	$(document).on('click','#btnLogin',function(){
		window.location.href = "/login";
	})
	$(document).on('click','#btnLogout',function(){
		window.location.href = "/logout";
	})
</script>


</html>