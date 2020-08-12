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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<title>분석페이지 홈</title>
</head>
<body>
    <nav>
        <ul>
            <li onclick="location.href='analysis_most.do'">MOST</li>
            <li onclick="location.href='${pageContext.request.contextPath}/analysis/pages/analysis_Olike.jsp'">OLIKE</li>
            <li>DEMAND</li>
        </ul>
    </nav>
    <header>
        <span>M O D</span>
        <form method="post" action="analysis_index.do" name="search" onsubmit="return searchCheck()">
             <button style="background-color: #ff1f45; border-color: #ff1f45;" class="btn btn-primary btn-search" type="submit"><i class="fas fa-search"></i></button>
            <label>
                <input class="form-control" type="text" name="user_nickname" placeholder="유저 닉네임 검색"> 
                ${ result }
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
</html>