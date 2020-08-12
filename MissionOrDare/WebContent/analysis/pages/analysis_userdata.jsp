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
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>


    <title>유저데이터 분석</title>
</head>
<body>
<nav>
    <ul>
        <li>RANK</li>
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
<article class="userdata-page">

    <section class="user_profile">
        <label>유저 조합 닉네임</label>
        <img class="img-circle" src="../images/user_error.png">
        <span>유저닉네임</span>
        <input class="btn btn-default" type="button" value="유저서브칭호1">
        <input class="btn btn-default" type="button" value="유저서브칭호2">
        <input class="btn btn-default" type="button" value="유저서브칭호3">
    </section>

    <section class="user-data">
        <div class="item item1">
            <i class="fas fa-dice-one"></i>
            <label class="data-title">미션수행 Top3</label>
            <div class="chart-part">
                <canvas id="myChart" style="width: 100%; height: 100%;">

                </canvas>
            </div>
        </div>
        <div class="item item2">
            <i class="fas fa-dice-two"></i>
            <label class="data-title">성공률</label>
            <div class="chart-part">
				<canvas id="myChart_success" style="width: 100%; height: 100%;">

                </canvas>
			</div>
        </div>
        <div class="item item3">
            <i class="fas fa-dice-three"></i>
            <label class="data-title">미션 성공확률 예측</label>
            <div class="chart-part">차트영역</div>
        </div>
    </section>
</article>


<div class="modal-bg hidden">
    <div class="modal-content" onclick="event.cancelBubble">
        <img src="../images/influencer.png">
        <ul>
            <li><span class="subTitle"></span></li>
            <li>성향을 가지고있는</li>
            <li><span class="percent">1%</span>의</li>
            <li>유저입니다.</li>
        </ul>
    </div>
</div>
<script>
    const user_search = document.querySelector('.fa-search');
    const header = document.querySelector('.header-hidden');
    const subTitle_btn = document.querySelector('.btn-default');
    const modal = document.querySelector('.modal-bg');
    let subTitle = document.querySelector('.subTitle');


    user_search.addEventListener('click',function(){
        header.classList.toggle('header-appear');
    },false)

    subTitle_btn.addEventListener('click',function (){
        modal.classList.remove('hidden');
         subTitle.innerHTML = this.value;
    },false);

    modal.addEventListener('click',function (){
        modal.classList.add('hidden');
    },false);



</script>

<script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['운동', '미술', '교육', '댄스', '먹방', '음악'],
            datasets: [{
                label: '많이 수행한 미션 카테고리 TOP3',
                data: [12, 19, 3, 5, 2, 3],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });    
</script>
<script>
	var line_ctx = document.getElementById('myChart_success').getContext('2d');
	var myLineChart  = new Chart(line_ctx, {
	    type: 'line',
	    data: {
	        labels: ['운동', '미술', '교육', '댄스', '먹방', '음악'],
	        datasets: [{
	            label: '많이 수행한 미션 카테고리 TOP3',
	            data: [12, 19, 3, 5, 2, 3],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	            ],
	            borderWidth: 1
	        },{
	        	label: '많이 수행한 미션 카테고리 TOP3',
	            data: [4, 5, 10, 21, 7, 11],
	            borderColor: [
	                'rgba(75, 192, 192, 1)',
	            ],
	            borderWidth: 1
	        }]
	    },
	    
	    
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero: true
	                }
	            }]
	        }
	    }
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
        transform: translateY(350px);
    }
    .hidden{
        display: none;
    }
</style>
</html>