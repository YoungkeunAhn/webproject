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
<body>
    <nav>
        <ul>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';">MOST</li>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';">OLIKE</li>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';">DEMAND</li>
            <li style="padding: 10px;"><i class="fas fa-search"></i></li>
        </ul>
    </nav>
    <header class="header-hidden">
        <span>M O D</span>
        <form>
            <i class="fas fa-search"></i>
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
					<div>
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
					<div>
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
        
        <section>
         
        </section>
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
</html>
