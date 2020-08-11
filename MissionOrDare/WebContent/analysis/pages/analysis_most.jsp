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

    <script src="${project}assets/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
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
            <li>MOST</li>
            <li>OLIKE</li>
            <li>DEMAND</li>
            <li><i class="fas fa-search"></i></li>
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
							<span>차트</span>
							<span>차트</span>
							<span>차트</span>
							<span>차트</span>
							<span>차트</span>
							<span>차트</span>
							<span>차트</span>
							<span>차트</span>
					</div>
                </div>
                <div style="width:50%; text-align: center;">
					<label style="padding-top: 60px;">7월 넷째주 인기 미션 top9_운동</label>
					<div style="width:80%; margin: 10px auto; height: 6%; display: flex; border-bottom: 1px solid black; border-top: 1px solid black;">	
						<div style="width:50%; height:100%; background-color: #ccc;">
							순위
						</div>
						<div style="width:50%; height:100%; background-color: #ccc;">
							MissionTitle
						</div>
                	</div>
                	<div style="width:80%; margin:10px auto; height: 62%; display: flex;">
                		<div style="width: 50%;">
	                		<div>1</div><br>
	                		<div>2</div><br>
	                		<div>3</div><br>
	                		<div>4</div><br>
	                		<div>5</div><br>
	                		<div>6</div><br>
	                		<div>7</div><br>
                		</div>
                		<div style="width: 50%;">
	                		<div>100m 달리기</div><br>
	                		<div>스쿼트 * 100</div><br>
	                		<div>플랭크 2분 하기</div><br>
	                		<div>주짓수 하기</div><br>
	                		<div>데드리프트 15회 3세트</div><br>
	                		<div>레전드</div><br>
	                		<div>찬구를 웃겨라</div><br>
                		</div>
                	</div>
                	<div>
                		<span>[◀◀] [1][2][3][4][5] [▶▶]</span>
                	</div>
                </div>
            </div>
        </section>
    </article>
     <footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject | King God General 광훈2 </footer>

<script>
    const user_search = document.querySelector('.fa-search');
    const header = document.querySelector('.header-hidden');
    user_search.addEventListener('click',function(){
        header.classList.toggle('header-appear');
    },false)
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
    }
</style>
</html>
