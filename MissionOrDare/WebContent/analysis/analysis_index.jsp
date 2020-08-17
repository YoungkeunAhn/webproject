<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="pages/analysis_settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${project}assets/analysis.css">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap&subset=korean" rel="stylesheet">

    <script src="${project}assets/script.js"></script>
    <script src="/MissionOrDare/user/asset/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    
    <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
 
<title>분석페이지 홈</title>
</head>
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
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" onclick="location.href='${pageContext.request.contextPath}/analysis/pages/analysis_Olike.jsp'">OLIKE</li>
            <li style="padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';">DEMAND</li>
        </ul>
    </nav>
    <header>
         <span style="cursor:pointer; padding: 10px;" class="btn3" onMouseover="this.style.color='black';" onMouseout="this.style.color='white';" onclick="location.href='analysis_index.do'">M O D</span>
        <form method="post" action="analysis_index.do" name="search" onsubmit="return searchCheck()">
            <button style="background-color: #ff1f45; border-color: #ff1f45;" class="btn btn-primary btn-search" type="submit"><i class="fas fa-search"></i></button>
            <label>
                <input class="form-control" type="text" name="user_nickname" placeholder="유저 닉네임 검색">       
                <c:if test="${ result eq null }">
                	${ nullvalue }
                </c:if>
                <c:if test="${ result ne null }">
                	${ result }
                </c:if>                                       
            </label>                   
        </form>           
    </header>
    <article>
        <ul>
            <li>
                <div>
                    <hr>
                    <label>Most :</label>
                    <span>
						지난주<br>
						가장많은 미션을 클리어한<br>
                        TOP3
                    </span>
                    <button class="btn btn-link" onclick="location.href='analysis_most.do'" >바로기기 >> </button>
                </div>
            </li>
            <li>
                <div>
                    <hr>
                    <label>Like :</label>
                    <span>
                        댓글에<br>
                        'ㅋ'가 많이들어가 있는<br>
                        TOP3
                    </span>
                    <button class="btn btn-link" onclick="location.href='analysis_most.do'">바로기기 >> </button>
                </div>
            </li>
            <li>
                <div>
                    <hr>
                    <label>Like :</label>  
                    <span>
                        게시글에<br>
                        좋아요가<br>
                        많이 눌린
                    </span>
                    <button class="btn btn-link" onclick="location.href='analysis_most.do'">바로기기 >> </button>
                </div>
            </li>
        </ul>
    </article>
    <footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject | King God General 광훈2</footer>
</body>
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