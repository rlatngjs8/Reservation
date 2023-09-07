<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/Section.css" rel="stylesheet" /> 
<title>Insert title here</title>
</head>

<style>
		img{
		height:333.33px;
		width: 400px;
	}





.ra1{
	  font-family: 'GyeonggiBatang', sans-serif; 
	  position:relative;
	  right:120px;
	  top:12px;
	  
}


.cate{
	font-size:20px;
}

.cate a{
	text-decoration: underline;
}


</style>
<body>
<%@include file="header.jsp" %>
	<h1 class="title">전체보기</h1>
	<br>
	
	<div class="cate">
	<a href="PartyRoom" class="froom">파티룸</a>&nbsp;&nbsp;&nbsp;
	<a href="seminarRoom" class="sroom">세미나/회의실</a>&nbsp;&nbsp;&nbsp;
	<a href="studyRoom" class="troom">강의실/스터디룸</a>&nbsp;&nbsp;&nbsp;
	<a href="RecordingStudio" class="foroom">스튜디오/방송</a>
	</div>


<br>
<br>




<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="#" class="fimg"><img src="img/${rooms[6].img1}" alt="이미지 6"></a>
		<a class="demo">${rooms[6].space_name}</a>
		<br>
		<a class="demo1">${rooms[6].location.substring(0, rooms[6].location.indexOf('학동역')+4)}</a>
		<a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra1">#유튜브,#화보,#반려동물,#쇼핑몰,#개인</a>
		<a class="demo2">${rooms[6].price}원/시간</a>
	
	
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[7].img1}" alt="이미지 6"></a>
       
        <a class="demo">${rooms[7].space_name}</a>
        <br>
        <a class="demo1">${rooms[7].location.substring(0, rooms[7].location.indexOf('영등포구청역')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra1">#스트릿,#네온,#댄스촬영,#코스프레</a>
		<a class="demo2">${rooms[7].price}원/시간</a>

    </div>
    
    	<div class="card">
         <a href="#"><img src="img/${rooms[23].img1}"></a>
        
        <a class="demo">${rooms[23].space_name}</a>
        <br>
        <a class="demo1">${rooms[23].location.substring(0, rooms[23].location.indexOf('길'))}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#대학로,#혜화역,#무용,#연습실,#음향기기</a>
		<a class="demo2">${rooms[23].price}원/시간</a>
   
    </div>
    
    
    
    </div>


	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[9].img1}" alt="이미지 6"></a>
         
        <a class="demo">${rooms[9].space_name}</a>
        <br>
        <a class="demo1">${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<a class="ra1">#서재,#엔틱,#세트장,#단독대관,#유튜브</a>
		<a class="demo2">${rooms[9].price}원/시간</a>
  
    </div>
    
      <div class="card">
         <a href="#"><img src="img/${rooms[10].img1}" alt="이미지 6"></a>
         
        <a class="demo">${rooms[10].space_name}</a>
        <br>
        <a class="demo1">${rooms[10].location.substring(0, rooms[10].location.indexOf('잠실석촌')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#신축,#레슨,#촬영,#조명,#무용,#발레</a>
		<a class="demo2">${rooms[10].price}원/시간</a>

    </div>
    
	
	<div class="card">
         <a href="#"><img src="img/${rooms[11].img1}" alt="이미지 6"></a>
      
        <a class="demo">${rooms[11].space_name}</a>
        <br>
        <a class="demo1">${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#서초연습실,#특가할인,#24시간,#사당역</a>
		<a class="demo2">${rooms[11].price}원/시간</a>


    </div>
</div>
		
	<div class="second">
	
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[12].img1}"></a>
        
        <a class="demo">${rooms[12].space_name}</a>
        <br>
        <a class="demo1">${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#대학로,#혜화역,#무용,#연습실,#음향기기</a>
		<a class="demo2">${rooms[12].price}원/시간</a>
   
    </div>		
    
    	  <div class="card">
         <a href="#"><img src="img/${rooms[8].img1}" alt="이미지 6"></a>
       
        <a class="demo">${rooms[8].space_name}</a>
        <br>
        
        <a class="demo1">${rooms[8].location.substring(3, rooms[8].location.indexOf('양천구')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#교복스냅,#우정촬영,#웹드라마,#교실대관</a>
		<a class="demo2">${rooms[8].price}원/시간</a>
    </div>
    
    	<div class="card">
    		<a href="#"><img src="img/${rooms[13].img1}"></a>
    		
    		<a class="demo">${rooms[13].space_name}</a>
        <br>
        <a class="demo1">${rooms[13].location.substring(0, rooms[13].location.indexOf('내방역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#발레바,#냉난방기,#정수기,#스튜디오</a>
		<a class="demo2">${rooms[13].price}원/시간</a>
    	</div>
	</div>

	<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[14].img1}"></a>
        
        <a class="demo">${rooms[14].space_name}</a>
        <br>
        <a class="demo1">${rooms[14].location.substring(0, rooms[14].location.indexOf('안산중앙역')+5)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#스피커,#삼각대,#댄스화,#지속광/매트</a>
		<a class="demo2">${rooms[14].price}원/시간</a>
   
    </div>		
    
    	<div class="card">
         <a href="#"><img src="img/${rooms[15].img1}"></a>
        
        <a class="demo">${rooms[15].space_name}</a>
        <br>
        <a class="demo1">${rooms[15].location.substring(0, rooms[15].location.indexOf('선유도역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#영등포,#파티룸,#모임공간,#선유도</a>
		<a class="demo2">${rooms[15].price}원/시간</a>
   
    </div>		
    
    
    	<div class="card">
         <a href="#"><img src="img/${rooms[16].img2}"></a>
        
        <a class="demo">${rooms[16].space_name}</a>
        <br>
        <a class="demo1">${rooms[16].location.substring(3, rooms[16].location.indexOf('까치말사거리')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra"> 내용이안들어가ㅏㅏㅏㅏㅏㅏㅏㅏㅏ</a>
		<a class="demo2">${rooms[16].price}원/시간</a>
   
    </div>		
</div>

		<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[17].img1}"></a>
        
        <a class="demo">${rooms[17].space_name}</a>
        <br>
        <a class="demo1">${rooms[17].location.substring(0, rooms[17].location.indexOf('남부터미널역')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#회의실,#TV모니터,#남부터미널역</a>
		<a class="demo2">${rooms[17].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[18].img1}"></a>
        
        <a class="demo">${rooms[18].space_name}</a>
        <br>
        <a class="demo1">${rooms[18].location.substring(0, rooms[18].location.indexOf('갑천로')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#스크린,#조명,#음향,#빔프로젝터,#세미나</a>
		<a class="demo2">${rooms[18].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[19].img1}"></a>
        
        <a class="demo">${rooms[19].space_name}</a>
        <br>
        <a class="demo1">${rooms[19].location.substring(0, rooms[19].location.indexOf('마곡역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#주차공간,#대형 모니터,#와이파이,#워크샵</a>
		<a class="demo2">${rooms[19].price}원/시간</a>
    </div>
</div>


	<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[20].img1}"></a>
        
        <a class="demo">${rooms[20].space_name}</a>
        <br>
        <a class="demo1">${rooms[20].location.substring(3, rooms[20].location.indexOf('마포구')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#홍대강의실,#유튜브,#인강스튜디오</a>
		<a class="demo2">${rooms[20].price}원/시간</a>
   
    </div>		
    
    <div class="card">
         <a href="#"><img src="img/${rooms[21].img1}"></a>
        
        <a class="demo">${rooms[21].space_name}</a>
        <br>
        <a class="demo1">${rooms[21].location.substring(0, rooms[21].location.indexOf('서초구')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#사당역강의실,#강남강의실,#세미나실</a>
		<a class="demo2">${rooms[21].price}원/시간</a>
   
    </div>
    
    	<div class="card">
         <a href="#"><img src="img/${rooms[24].img5}"></a>
        
        <a class="demo">${rooms[24].space_name}</a>
        <br>
        <a class="demo1">${rooms[24].location.substring(7, rooms[24].location.indexOf('인천타워대로')+6)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#60명 수용,#대형 빔프로젝터,#무선마이크</a>
		<a class="demo2">${rooms[24].price}원/시간</a>
   
    </div>
    </div>
    
    
    
    	<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[22].img1}"></a>
        
        <a class="demo">${rooms[22].space_name}</a>
        <br>
        <a class="demo1">${rooms[22].location.substring(4, rooms[22].location.indexOf('민락동')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#책걸상,#아이패드,#라디에이터,#프린트</a>
		<a class="demo2">${rooms[22].price}원/시간</a>
   
    </div>
    
    	<div class="card">
         <a href="#"><img src="img/${rooms[0].img1}"></a>
        
        <a class="demo">${rooms[0].space_name}</a>
        <br>
        <a class="demo1">${rooms[0].location.substring(6, rooms[0].location.indexOf('강남구')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#강남,#무료주차,#발렛,#돌잔치,스몰웨딩</a>
		<a class="demo2">${rooms[0].price}원/시간</a>
   
    </div>
    
    
    	<div class="card">
         <a href="#"><img src="img/${rooms[1].img1}"></a>
        
        <a class="demo">${rooms[1].space_name}</a>
        <br>
        <a class="demo1">${rooms[1].location.substring(0, rooms[1].location.indexOf('논현동')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#강남,#브라이덜샤워,#소모임,#자연광</a>
		<a class="demo2">${rooms[1].price}원/시간</a>
   
    </div>
       
    </div>



	<div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[2].img1}"></a>
        
        <a class="demo">${rooms[2].space_name}</a>
        <br>
        <a class="demo1">${rooms[2].location.substring(0, rooms[2].location.indexOf('압구정역')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#압구정,#가로수길,#인생샷,#생일파티</a>
		<a class="demo2">${rooms[2].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[3].img1}"></a>
        
        <a class="demo">${rooms[3].space_name}</a>
        <br>
        <a class="demo1">${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#학동역,#루프탑,#바베큐,#하이엔드</a>
		<a class="demo2">${rooms[3].price}원/시간</a>
   
    </div>
    
    <div class="card">
         <a href="#"><img src="img/${rooms[4].img1}"></a>
        
        <a class="demo">${rooms[4].space_name}</a>
        <br>
        <a class="demo1">${rooms[4].location.substring(0, rooms[4].location.indexOf('매봉역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#브라이덜샤워,#쇼케이스,#포로포즈</a>
		<a class="demo2">${rooms[4].price}원/시간</a>
   
    </div>
    </div>
    
    <div class="second">
	
	 <div class="card">
         <a href="#"><img src="img/${rooms[5].img1}"></a>
        
        <a class="demo">${rooms[5].space_name}</a>
        <br>
        <a class="demo1">${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}</a>
        <a class="location"><img src="img/위치아이콘.png"></a>
		<br>
		<a class="ra">#렌탈스튜디오,#사진촬영,#무료주차</a>
		<a class="demo2">${rooms[5].price}원/시간</a>
   
    </div>
    </div>
    
 
<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){

	
})

	let l = "${rooms[6].location.substring(0, rooms[6].location.indexOf('학동역')+4)}";
    let d = "[" + l + "]";
    
    let s = document.querySelectorAll(".demo1")[0];
    s.innerHTML = d;

    
	
    l = "${rooms[7].location.substring(0, rooms[7].location.indexOf('영등포구청역')+6)}";
	d = "[" + l + "]";

	s = document.querySelectorAll(".demo1")[1];
	s.innerHTML = d;


	 l = "${rooms[23].location.substring(0, rooms[23].location.indexOf('길'))}".trim();
	 d = "[" + l + "]";
	    
	 s = document.querySelectorAll(".demo1")[2];
	 s.innerHTML = d;

	 
	 
	l = "${rooms[9].location.substring(0, rooms[9].location.indexOf('압구정')+3)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[3];
	s.innerHTML = d;

	l = "${rooms[10].location.substring(0, rooms[10].location.indexOf('잠실석촌')+4)}";
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[4];
	s.innerHTML = d;

	l = "${rooms[11].location.substring(0, rooms[11].location.indexOf('사당역')+3)}".trim();
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[5];
	s.innerHTML = d;


	l = "${rooms[12].location.substring(0, rooms[12].location.indexOf('혜화역')+4)}".trim();
	d = "[" + l + "]";
	
	s = document.s = document.querySelectorAll(".demo1")[6];
	s.innerHTML = d;


	l = "${rooms[8].location.substring(3, rooms[8].location.indexOf('양천구')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[7];
	s.innerHTML = d;


	l = "${rooms[13].location.substring(0, rooms[13].location.indexOf('내방역')+4)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[8];
	s.innerHTML = d;

	l = "${rooms[14].location.substring(0, rooms[14].location.indexOf('안산중앙역')+5)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[9];
	s.innerHTML = d;

	l = "${rooms[15].location.substring(0, rooms[15].location.indexOf('선유도역')+4)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[10];
	s.innerHTML = d;

	l = "${rooms[16].location.substring(3, rooms[16].location.indexOf('까치말사거리')+6)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[11];
	s.innerHTML = d;

	l = "${rooms[17].location.substring(0, rooms[17].location.indexOf('남부터미널역')+6)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[12];
	s.innerHTML = d;

	l = "${rooms[18].location.substring(0, rooms[18].location.indexOf('갑천로')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[13];
	s.innerHTML = d;

	l ="${rooms[19].location.substring(0, rooms[19].location.indexOf('마곡역')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[14];
	s.innerHTML = d;
	
	l = "${rooms[20].location.substring(3, rooms[20].location.indexOf('마포구')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[15];
	s.innerHTML = d;
	
	l ="${rooms[21].location.substring(0, rooms[21].location.indexOf('서초구')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[16];
	s.innerHTML = d;
	
	
	l = "${rooms[24].location.substring(7, rooms[24].location.indexOf('인천타워대로')+6)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[17];
	s.innerHTML = d;
	
	l = "${rooms[22].location.substring(4, rooms[22].location.indexOf('민락동')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[18];
	s.innerHTML = d;
	
	
	l = "${rooms[0].location.substring(6, rooms[0].location.indexOf('강남구')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[19];
	s.innerHTML = d;
	
	
	l = "${rooms[1].location.substring(0, rooms[1].location.indexOf('논현동')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[20];
	s.innerHTML = d;
	
	l = "${rooms[2].location.substring(0, rooms[2].location.indexOf('압구정역')+4)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[21];
	s.innerHTML = d;
	
	l = "${rooms[3].location.substring(0, rooms[3].location.indexOf('을지병원')+4)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[22];
	s.innerHTML = d;
	
	l = "${rooms[4].location.substring(0, rooms[4].location.indexOf('매봉역')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[23];
	s.innerHTML = d;
	
	l = "${rooms[5].location.substring(0, rooms[5].location.indexOf('학동역')+3)}".trim();
	d= "[" + l + "]";
	
	s=document.s = document.querySelectorAll(".demo1")[24];
	s.innerHTML = d;
	

	
</script>





</html>