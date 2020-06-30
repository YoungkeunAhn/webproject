<%--
  Created by IntelliJ IDEA.
  User: Youngkeun
  Date: 2020-06-29
  Time: 오후 6:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="../assets/css/manage.css">
    <script src="../assets/js/script.js"></script>
    <title>게시글정보페이지</title>
</head>
<body>
<div class="container">
    <div>
        <%@include file="manage_header.jsp"%>
    </div>
    <div>
        <%@include file="manage_nav.jsp"%>
    </div>
    <article>
        <section class="content-part">
            <div>
                <span>미술/그리기</span>
            </div>
            <div>
                <span>라이언이 부탁한 자화상</span>
            </div>
            <div class="content-profile">
                <img class="img-circle" src="../images/user.png" alt="user-profile">
                <span>KIMONG</span>
            </div>
            <div>
                <div>
                    <span><i class="fas fa-chevron-left"></i></span>
                    <img class="content-image" src="../images/kimong_1_1.png" alt="content-image">
                    <span><i class="fas fa-chevron-right"></i></span>
                </div>
                <span>졸귀탱라이언</span>
            </div>
        </section>
        <section class="reply-part">
            <div class="like-box">
                <span><i class="far fa-thumbs-up"></i></span>
                <span>23개</span>
            </div>
            <div class="reply-box">
                <i class="fas fa-ellipsis-v"></i>
                <div class="reply-level1">
                    <div class="user-profile"><span>user1</span></div>
                    <div class="content-reply"><span>댓글</span></div>
                </div>
                <div class="reply-level2">
                    <div class="user-profile"><span>user1</span></div>
                    <div class="content-reply"><span>댓글</span></div>
                </div>
            </div>
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>

</body>
</html>
