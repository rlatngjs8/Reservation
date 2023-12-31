<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/Section.css" rel="stylesheet" /> 
<title>Insert title here</title>
<style>
@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}


    img {
        height: 333.33px;
        width: 400px;
    }

    .ra1 {
         font-family: 'HakgyoansimWoojuR';
        position: relative;
        right: 120px;
        top: 12px;
    }

    .cate {
        font-size: 25px;
    }

    .card a {
    color: #333;
    text-decoration: none;
}
 
.card a:hover {
    color: #000;
    cursor: pointer;
}

    .second {
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: space-between;
	}

    .card {
    display: none;
    width: calc(25% - 20px);
    margin-bottom: 20px;
    padding: 10px;
    border: 1px solid #ddd;
    text-align: center;
}

.card img {
    display: block;
    margin: 0 auto;
}
.card .demo{
    font-size: 16px;
    margin: 10px 0;
}
.card .demo2 {
    font-size: 18px;
    color: #dd4b39;
}

.forimg {
	width:1px;
	height:1px;
}

  #card1_7 a {
   font-size : 17px;
   
  }

  #card2_7 {
   
   font-size : 17px;
  }


#card2_2.card{
font-size : 13px;
}

.all{
	font-size: 23px;
}

@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.all a {
	color:gray;	
	font-family: 'HakgyoansimWoojuR';
	font-weight:bold;
	
}

.all a:visited {
    color: black;
}

.cate a {
    color: black;
    text-decoration: none;
    font-family: 'HakgyoansimWoojuR';
    font-weight: bold;
}

.cate a:hover {
    text-decoration: underline;
      text-underline-position: under;
      }
      
      
      .all a:hover {
    color: black; 
    text-decoration: underline;
    text-underline-position: under;
}

</style>
</head>

<body>

<%@include file="header.jsp" %>
<br><br><br><br><br><br>
<div class="cate">		
    <a href="#" class="froom" data-category="party">파티룸</a>&nbsp;&nbsp;&nbsp;
    <a href="#" class="sroom" data-category="conference">세미나/회의실</a>&nbsp;&nbsp;&nbsp;
    <a href="#" class="troom" data-category="study" >강의실/스터디룸</a>&nbsp;&nbsp;&nbsp;
    <a href="#" class="foroom" data-category="studio" >스튜디오/방송</a>&nbsp;&nbsp;&nbsp;
    <a href="#" class="foroom" data-category="practice" >연습실</a>
</div>
<br><br>
<div class="all">
	<a href="allRooms">[전체목록보기]</a>
</div>

<br><br><hr style="width: 70%"/><br><br>
<div class="second">
    <c:forEach items="${rooms}" var="prod" varStatus="outerLoop">
        <div class="card" id="card1_${outerLoop.index}" data-space_id="${prod.space_id}" onclick="window.location.href='/space?space_id=${prod.space_id}'">
            <a href="#" class="fimg"><img src="img/${prod.img1}" alt="이미지 6"></a>
            <br>
<%--             <input type="hidden" name="space_id" value="${prod.space_id}"> --%>
            <a class="demo">${prod.space_name}</a>
            <br>
            <a class="demo1">[${prod.location}]</a>
            <br><br>
            <a class="demo12"><strong>${prod.price}</strong>&nbsp;원/시간</a>
            <br>
      
        </div>
    </c:forEach>
    <c:forEach items="${rooms}" var="prod" varStatus="outerLoop">
		    <div class="card" id="card2_${outerLoop.index}" data-space_id="${prod.space_id}" onclick="window.location.href='/space?space_id=${prod.space_id}'">
				</div>
        <c:if test="${outerLoop.index % 3 == 2}">
            <div style="flex-basis: 100%; height: 0;"></div>
        </c:if>
    </c:forEach>
</div>


<br><br><br><br><br>
<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function() {
	
		
	

	
	
    // 쿼리 매개변수를 파싱하여 선택된 카테고리를 확인합니다.
    const urlParams = new URLSearchParams(window.location.search);
    const selectedCategory = urlParams.get("category");

    // 초기에는 card1을 표시합니다.
    $(".card").css("display", "block");
    $(".card[id^='card2']").css("display", "none");

    // 선택된 카테고리에 따라 해당 카테고리의 효과를 활성화합니다.
    if (selectedCategory) {
        activateCategory(selectedCategory);
    }

    // 카테고리 링크에 대한 클릭 이벤트 핸들러를 추가합니다.
   $(".cate a").click(function(e) {
    e.preventDefault();

    // 선택된 카테고리를 확인합니다.
    const category = $(this).data("category");

    // 해당 카테고리의 효과를 활성화합니다.
    activateCategory(category);

    // 모든 카테고리의 효과 제거
    $(".cate a").css("text-decoration", "none");

    $(this).css({
        "text-decoration": "underline",
        "text-underline-position": "under"
    });
});
    // "전체" 링크 클릭 이벤트 핸들러
    $(".aroom").click(function(e) {
        e.preventDefault();

        // 모든 카드를 표시
        $(".card").css("display", "block");

        // 모든 카테고리의 효과 제거
        $(".cate a").css("text-decoration", "none");
    });
});

function activateCategory(category) {
    // Ajax를 사용하여 해당 카테고리에 대한 내용을 로드합니다.
    $.ajax({
        type: "post",
        url: "/categoryRooms", // 카테고리 별로 필터링하는 서버 엔드포인트를 설정해야 합니다.
        data: {category: category},
        dataType: 'json',
        success: function(data) {
            // 서버에서 받아온 데이터로 카드를 업데이트합니다.
            console.log(data);

            if (category === "") {
                // 카테고리가 없으면 모든 카드 표시
                $(".card").css("display", "block");
            } else {
                // 카테고리가 있으면 모든 카드 숨김
                $(".card").css("display", "none");
                for (let k = 0; k < data.length; k++) {
                    let spaceID = data[k].space_id;
                    console.log("space_id" + spaceID);
                    let cardHtml = "<a href='#' class='fimg'><img src='img/" + data[k]['img1'] + "' alt='이미지 6'></a>" + "<br>" +
                        "<a class='demo'>" + data[k]['space_name'] + "</a>" +
                        "<br>" +
                        "<a class='demo1'>" + data[k]['location'] + "</a>" +
                        "<input type='hidden' id='space_id' name='space_id' value='" + spaceID + "'>" +
                        "<br>" +
                        "<br>" +
                        "<a class='demo12'>" + "<strong>" + data[k]['price'] + "</strong>" + "원/시간</a>";
                    $("#card2_" + k).attr("data-space_id", spaceID);
                    $("#card2_" + k).attr("onclick", "window.location.href='/space?space_id=" + spaceID + "'");

                    $("#card2_" + k).html(cardHtml);
                    $("#card2_" + k).css("display", "block");
                    $("#card1_" + k).css("display", "none");
                }
            }
        },
        error: function() {
            alert("데이터를 불러오는 동안 오류가 발생했습니다.");
        }
    });
}
</script>
</html>
