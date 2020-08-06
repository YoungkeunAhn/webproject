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
            <label></label>
            <div>
                <div>

                </div>
                <div>

                </div>
                <div>

                </div>
            </div>
        </section>
        <section>

        </section>
        <section>

        </section>
    </article>
    <footer>@copyright All rights reserved | MissionOrDare | Simplefun | webProject</footer>

<script>
    const user_search = document.querySelector('.fa-search');
    const header = document.querySelector('.header-hidden');
    user_search.addEventListener('click',function(){
        header.classList.toggle('header-appear');
    },false)
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
