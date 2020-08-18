<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="analysis_settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${project}assets/analysis.css">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap&subset=korean" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.rawgit.com/theus/chart.css/v1.0.0/dist/chart.css" />
	
    <script src="${project}assets/script.js"></script>
    <script src="/MissionOrDare/user/asset/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- google charts -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
    <title>분석페이지-MOST</title>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	<!-- 별표 그리장 -->
 	<style>
      .st {
        fill: none;
        stroke-width: 14;
        stroke-linecap: round;
        stroke-linejoin: round;
        stroke-miterlimit: 10
      }

      .line-long {
        stroke: #ffdd7e;
      }

      .star {
        fill: #ffdd7e;
      }

      .cir {
        fill: #fee7a8;
      }

      .st-g1 {
        stroke: #ffc729;
      }

      .st-g2 {
        stroke: #ffe056;
      }
    </style>
    
<style type="text/css">

.swiper-container {
	width:640px;
	height:380px;
	border:5px solid silver;
	border-radius:7px;
	box-shadow:0 0 20px #ccc inset;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
}
</style>
<body id="test">
	<svg onclick="GoMyPage()" class="starStick" id="svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="padding:10px; position: fixed; right:0%; height: 70px; width:86px; z-index:1000;">
			<path class="star"
	      d="M288.7 244.3L268 231.5l5.9-23.6c1-4-1.4-8.1-5.5-9.1-1.8-.5-3.7-.2-5.4.7l-21.4 11.6-17.5-16.9c-3-2.9-7.7-2.8-10.6.2-1.3 1.3-2 3.1-2.1 5l-.7 24.3-23.4 6.7c-4 1.1-6.3 5.3-5.1 9.3.5 1.8 1.7 3.3 3.3 4.3l20.7 12.7-5.9 23.6c-1 4 1.4 8.1 5.5 9.1 1.8.5 3.7.2 5.4-.7l21.4-11.6 17.5 16.9c2.1 2.1 5.3 2.7 8 1.5 2.8-1.1 4.6-3.8 4.7-6.7l.7-24.3 23.4-6.7c4-1.1 6.3-5.3 5.1-9.3-.6-1.7-1.7-3.3-3.3-4.2z"
	      fill="#f93030" />
	    <path class="cir circle1"
	      d="M198.1 20.6c-.8-6.2-4-11.8-8.9-15.6-10.3-7.9-25.1-6.1-33 4.2-7.9 10.3-6.1 25.1 4.2 33 4.2 3.2 9.2 4.9 14.4 4.9 1 0 2-.1 3-.2 6.2-.8 11.8-4 15.6-8.9s5.5-11.2 4.7-17.4z"
	      fill="#0fea96" />
	    <path class="cir circle2"
	      d="M69.1 174.1c-.8-6.2-4-11.8-8.9-15.6-5-3.8-11.1-5.5-17.4-4.7-6.2.8-11.8 4-15.6 8.9-3.8 4.9-5.5 11.2-4.7 17.4.8 6.2 4 11.8 8.9 15.6 4.2 3.2 9.2 4.9 14.4 4.9 1 0 2-.1 3-.2 6.2-.8 11.8-4 15.6-8.9s5.5-11.2 4.7-17.4z"
	      fill="#1a875b" />
	    <path class="cir circle3"
	      d="M393.8 41.8c-4.9-3.8-11.2-5.5-17.4-4.7-6.2.8-11.8 4-15.6 8.9-3.8 4.9-5.5 11.2-4.7 17.4.8 6.2 4 11.8 8.9 15.6 4.1 3.2 9.2 4.9 14.4 4.9 7 0 14-3.1 18.6-9.1 8-10.3 6.1-25.1-4.2-33z"
	      fill="#80bca4" />
	    <path class="cir circle4"
	      d="M480.7 230.7c-4.9-3.8-11.2-5.5-17.4-4.7-6.2.8-11.8 4-15.6 8.9s-5.5 11.1-4.7 17.4c.8 6.2 4 11.8 8.9 15.6 4.2 3.2 9.2 4.9 14.4 4.9 1 0 2-.1 3-.2 6.2-.8 11.8-4 15.6-8.9 8-10.2 6.1-25.1-4.2-33z"
	      fill="#062619" />
	    <path class="cir circle5"
	      d="M364.3 394.1c-10.3-7.9-25.1-6.1-33 4.2-7.9 10.3-6.1 25.1 4.2 33 4.2 3.2 9.2 4.9 14.4 4.9 1 0 2-.1 3-.2 6.2-.8 11.8-4 15.6-8.9 8-10.3 6.1-25.1-4.2-33z"
	      fill="#a0d8c1" />
	    <path class="line-long" stroke="#332b99" d="M56.6 489.5S106.8 370.7 186 298.7" fill="none" stroke-width="17"
	      stroke-linecap="round" stroke-miterlimit="10" />
	    <path class="st st-g1" stroke="#97a6ef" d="M243.1 312.9l8.6 46.4" />
	    <path class="st st-g2" stroke="#999965" d="M278.9 303.7l45.9 69" />
	    <path class="st st-g1" stroke="#faff27" d="M302.7 276.5l53.8 28.2" />
	    <path class="st st-g2" stroke="#f12000" d="M313.5 244.2l104.8 5.1" />
	    <path class="st st-g1" stroke="#f0f0f0" d="M294.4 215.1l82.5-42.3" />
	    <path class="st st-g2" stroke="#01f1f1" d="M286.5 179.9l63.7-81.7" />
	    <path class="st st-g1" stroke="#000111" d="M250.7 183.6l18.1-87.4M250.7 185.6l18.1-87.4" />
	    <path class="st st-g2" stroke="#ff0ff0" d="M216.7 168.3l-28.3-98.1" />
	    <path class="st st-g1" stroke="#eaeaea" d="M187.5 190.9l-42.1-49.8" />
	    <path class="st st-g2" stroke="#bada77" d="M165.5 217.8l-72.8-24.9" />
	    <path class="st st-g1" stroke="#179140" d="M161.9 248.6l-51 5.6" />
	</svg>
    <nav>
        <ul>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" onclick="location.href='analysis_most.do'">MOST</li>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" onclick="location.href='analysis_Olike.do'">OLIKE</li>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';">DEMAND</li>
            <li style="padding: 10px;" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" ><i class="fas fa-search"></i></li>
        </ul>
    </nav>
    <header class="header-hidden">
        <span style="cursor:pointer; padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" onclick="location.href='analysis_index.do'">M O D</span>
        <form>
            <i style="cursor: pointer; padding: 10px;" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" class="fas fa-search"></i>
            <label>
                <input class="form-control" type="text" name="user_nickname" placeholder="유저 닉네임 검색">
            </label>
        </form>
    </header>
    <article class="sub-page">
    	
    	<section>
           <label class="title">점수 순위</label>
           <div class="most-contents">
				<ul class="top3">
					<li class="rank-top">
					<div style="position: relative; top:52px;">
						<label>라이언</label>
						<img class="img-circle" src="${project}images/sample.jpg">
						<span>id_123</span>
						<span>최고점수 : 588956</span>
					</div>	
						<div>
						<label>어피치</label>
						<img class="img-circle" src="${project}images/sample.jpg">
						<span>id_456</span>
						<span>최고점수 : 666651</span>
					</div>
					<div style="position: relative; top:105px;">
						<label>무지</label>
						<img class="img-circle" src="${project}images/sample.jpg">
						<span>id_789</span>
						<span>최고점수 : 502121</span>
					</div>
					</li>
					<li class="rank-bottom">
						<square class="top2">2</square>
						<square class="top1">1</square>
						<square class="top3">3</square>
					</li>
				</ul>  
				<div class="mid"></div>         
				<div class="rank-list">
					<table class="table table-striped">
						<thead>
							<tr class="list-title">
								<td>랭킹</td>
								<td>아이디</td>
								<td>최고점수</td>
								<td>칭호</td>
							</tr>
						</thead>
						<tbody>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							
						</tbody>
						
					</table>
				</div>
           </div>
 		</section>
      
        	<!-- 클래스명은 변경하면 안 됨 -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					 <div class="swiper-slide">
			        	<ul class="chart-skills">
						  <li></li>
						  <li></li>
						  <li></li>
						  <li></li>
						</ul>
					</div>
					<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0172.jpg"></div>
					 <div class="swiper-slide">
			             <label>Most :</label>
			                <span>
								지난주<br>
								가장많은 미션을 클리어한<br>
			                    TOP3
			                </span>
			             <button class="btn btn-link" onclick="location.href='${pageContext.request.contextPath}/analysis/pages/analysis_most.jsp'" >바로기기 >> </button>
			        </div>
			       
					<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
				</div>
			
				<!-- 네비게이션 지정 -->
				<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
				<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
			</div>
			        
        
       <section style="color:black;">
            <div class="chartAndBoard">
                <div style="width:50%; display: flex;">
					<div style="width:30%;height: 100%; display: grid; border-right: 1px solid #a29b96; padding:1px;">
						<span>100m달리기</span>
						<span>스쿼트*100</span>
						<span>플랭크2분</span>
						<span>데드리프트15회 3세트</span>
						<span>레전도</span>
						<span>친구를 웃겨봐</span>
						<span>이효리화장하기</span>
						<span>이오리화장하기</span>
					</div>
					<div style="width:70%; height:100%; display: grid; padding: 1px; border-right: 1px solid black;">
					 	 <div style="margin: auto;">
			        		<ul class="chart-skills">
							  <li></li>
							  <li></li>
							  <li></li>
							  <li></li>
							</ul>
						</div>
					</div>
                </div>
                <div class="rank-list" style="width:50%; text-align: center;">
					<table class="table table-striped">
						<thead>
							<tr class="list-title">
								<td>랭킹</td>
								<td>아이디</td>
								<td>최고점수</td>
								<td>칭호</td>
							</tr>
						</thead>
						<tbody>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							
						</tbody>
						
					</table>
                	</div>
                </div>
        </section>
        <article class="sub-page">
    	  	
    	<section>
           <label class="title">점수 순위</label>
           <div class="most-contents">
				<div id="Line_Controls_Chart">
					      <!-- 라인 차트 생성할 영역 -->
					          <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
					      <!-- 컨트롤바를 생성할 영역 -->
					          <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
				</div>
				<div class="mid"></div>         
				<div class="rank-list">
					<table class="table table-striped">
						<thead>
							<tr class="list-title">
								<td>랭킹</td>
								<td>아이디</td>
								<td>최고점수</td>
								<td>칭호</td>
							</tr>
						</thead>
						<tbody>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							<tr class="rank-contents">
								<td>4</td>
								<td>유저아이디</td>
								<td>424242</td>
								<td>유저대표칭호</td>
							</tr>
							
						</tbody>
						
					</table>
				</div>
           </div>
 		</section>
        
         	<!-- 클래스명은 변경하면 안 됨 -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					 <div class="swiper-slide">
			        	<video width="320" height="240" controls>
  							<source src="movie.mp4" type="video/mp4">
 							 <source src="movie.ogg" type="video/ogg">
							  Your browser does not support the video tag.
							</video>
					</div>
					<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0172.jpg"></div>
					 <div class="swiper-slide">
			        	<iframe width="1280" height="720" src="https://www.youtube.com/embed/Fm5iP0S1z9w" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			        </div>
					 <div class="swiper-slide">
			        	<iframe width="560" height="315" src="https://www.youtube.com/embed/HOJewCP3glw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			        </div>
					<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
				</div>
			
				<!-- 네비게이션 지정 -->
				<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
				<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
			</div>
			        
    </article>
     <footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject | King God General 광훈2 </footer>

<script>
    const user_search = document.querySelector('.fa-search');
    const header = document.querySelector('.header-hidden');
    user_search.addEventListener('click',function(){
        header.classList.toggle('header-appear');
    },false)
    
        //차트
      var chartDrowFun = {
 
    chartDrow : function(){
        var chartData = '';
 
        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
        var chartDateformat     = 'yyyy년MM월dd일';
        //라인차트의 라인 수
        var chartLineCount    = 10;
        //컨트롤러 바 차트의 라인 수
        var controlLineCount    = 10;
 
 
        function drawDashboard() {
 
          var data = new google.visualization.DataTable();
          //그래프에 표시할 컬럼 추가
          data.addColumn('datetime' , '날짜');
          data.addColumn('number'   , '남성');
          data.addColumn('number'   , '여성');
          data.addColumn('number'   , '전체');
 
          //그래프에 표시할 데이터
          var dataRow = [];
 
          for(var i = 0; i <= 29; i++){ //랜덤 데이터 생성
            var total   = Math.floor(Math.random() * 300) + 1;
            var man     = Math.floor(Math.random() * total) + 1;
            var woman   = total - man;
 
            dataRow = [new Date('2017', '09', i , '10'), man, woman , total];
            data.addRow(dataRow);
          }
 
 
            var chart = new google.visualization.ChartWrapper({
              chartType   : 'LineChart',
              containerId : 'lineChartArea', //라인 차트 생성할 영역
              options     : {
                              isStacked   : 'percent',
                              focusTarget : 'category',
                              height          : 500,
                              width              : '100%',
                              legend          : { position: "top", textStyle: {fontSize: 13}},
                              pointSize        : 5,
                              tooltip          : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
                              hAxis              : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
                                                                  years : {format: ['yyyy년']},
                                                                  months: {format: ['MM월']},
                                                                  days  : {format: ['dd일']},
                                                                  hours : {format: ['HH시']}}
                                                                },textStyle: {fontSize:12}},
                vAxis              : {minValue: 100,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
                animation        : {startup: true,duration: 1000,easing: 'in' },
                annotations    : {pattern: chartDateformat,
                                textStyle: {
                                fontSize: 15,
                                bold: true,
                                italic: true,
                                color: '#871b47',
                                auraColor: '#d799ae',
                                opacity: 0.8,
                                pattern: chartDateformat
                              }
                            }
              }
            });
 
            var control = new google.visualization.ControlWrapper({
              controlType: 'ChartRangeFilter',
              containerId: 'controlsArea',  //control bar를 생성할 영역
              options: {
                  ui:{
                        chartType: 'LineChart',
                        chartOptions: {
                        chartArea: {'width': '60%','height' : 80},
                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
                            gridlines:{count:controlLineCount,units: {
                                  years : {format: ['yyyy년']},
                                  months: {format: ['MM월']},
                                  days  : {format: ['dd일']},
                                  hours : {format: ['HH시']}}
                            }}
                        }
                  },
                    filterColumnIndex: 0
                }
            });
 
            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
            date_formatter.format(data, 0);
 
            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
            dashboard.bind([control], [chart]);
            dashboard.draw(data);
 
        }
          google.charts.setOnLoadCallback(drawDashboard);
 
      }
    }
 
$(document).ready(function(){
  google.charts.load('current', {'packages':['line','controls']});
  chartDrowFun.chartDrow(); //chartDrow() 실행
});
</script>
<script>

new Swiper('.swiper-container', {
	navigation : {
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
});

</script>
</body>
<style>
    .header-hidden{
        position: absolute;
        top: -400px;
        left: 0;
    }
    .header-appear{
        transition: 1s;
        transform: translateY(400px);
        position: fixed;
        z-index: 99;   
    }   
</style>

<!-- 별표그리장 -->
<!-- 별표그리장 -->
 <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
 <script type="text/javascript">
  (function () {
	  var svg = document.querySelector("#svg");
	  var star = svg.querySelector(".star");
	  var lineLong = svg.querySelector(".line-long");
	  var lines = svg.querySelectorAll(".st");
	  var circles = svg.querySelectorAll(".cir");
	  var linesG1 = svg.querySelectorAll(".st-g1");
	  var linesG2 = svg.querySelectorAll(".st-g2");

	  function pathPrepare(el) {
	    var lineLength = el.getTotalLength();
	    el.style.strokeDasharray = lineLength + 10;
	    el.style.strokeDashoffset = lineLength + 10;
	  }

	  pathPrepare(lineLong);
	  lines.forEach(function (e) {
	    pathPrepare(e);
	  });


	  var shootingAni = new TimelineMax()
	    .addLabel("start")
	    .to(lineLong, 0.4, {
	      strokeDashoffset: 0
	    })
	    .from(star, 0.35, {
	      autoAlpha: 0,
	      scale: "0",
	      rotation: -360,
	      transformOrigin: '50% 50%'
	    }, "start+=0.3")
	    .to(linesG1, 0.66, {
	      autoAlpha: 1,
	      strokeDashoffset: 0,
	    }, "start+=0.45")
	    .to(linesG2, 0.45, {
	      autoAlpha: 1,
	      strokeDashoffset: 0,
	    }, "start+=0.65")
	    .fromTo(circles, 0.5, {
	      scale: 0,
	      autoAlpha: 0,
	      transformOrigin: '50% 50%'
	    }, {
	      scale: 0.8,
	      y: 0,
	      autoAlpha: 1,
	      transformOrigin: '50% 50%'
	    }, "start+=0.66")


	    
	    document.querySelector("#svg").addEventListener("click", function(){
	        shootingAni.restart();
	    });

	}());
  /*script function*/
  $("#test").keyup(function(event){
      if(event.keyCode == 192) location.href="http://localhost:8080/MissionOrDare/analysis_index.do";
      if(event.keyCode == 49) location.href="http://localhost:8080/MissionOrDare/index.do";
      if(event.keyCode == 50) location.href="http://localhost:8080/MissionOrDare/user_index.do";
  
  });
  </script>

</html>
