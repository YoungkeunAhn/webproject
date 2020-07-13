<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="${project}asset/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
    <title>유저 성공 게시판</title>
</head>
<body>
    <div class="container">
        <header class="successBoard-header">
            <div class="search-bar">
                <i class="fas fa-search"></i>
                <input id="search_input" type="search" name="pidSearch" placeholder="검색" onkeydown="OnSearch()">
            </div>
            <div id="search_result" class="search-result" style="display: none" onclick="alert('ajax처리^_^')">
                <span>ajax처리해야됨 갸꿀</span>
                <span>ajax처리해야됨 갸꿀</span>
                <span>ajax처리해야됨 갸꿀</span>
                <span>ajax처리해야됨 갸꿀</span>
                <span>ajax처리해야됨 갸꿀</span>
            </div>
        </header>
        <article class="boardArticle">
            <section class="line-up">
                <span onclick="alert('인기순으로 정렬')">인기순</span>
                <span onclick="alert('최신순으로 정렬')">최신순</span>
            </section>
            <section class="board">
                <div class="list">
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="location.href='user_content.do'"/>
                    <img src="${project}images/pid_test2.png" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/test5.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test2.png" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test2.png" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/test4.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test2.png" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/test4.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test2.png" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/test5.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test2.png" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/test4.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/test5.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test3.jpg" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                    <img src="${project}images/pid_test1.gif" class="img-rounded" alt="thumbnail" onclick="alert('게시글페이지로이동쌉가능')"/>
                </div>
            </section>
        </article>
        <nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="${project}images/mod_logo.png" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="${project}images/task.png" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/pid.png" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/my.png" alt="my-icon">
                    <span>마이</span>
                </li>
            </ul>
        </nav>
    </div>
</body>
</html>
