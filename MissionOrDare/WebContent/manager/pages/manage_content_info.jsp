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
            <div class="white-box">
                <div class="content-title">
                    <i class="fas fa-circle"></i><span>미술/그리기</span>
                </div>
                <div class="content-title">
                    <i class="fas fa-circle"></i><span>라이언이 부탁한 자화상</span>
                </div>
                <div class="content-profile">
                    <img class="img-circle" src="../images/user.png" alt="user-profile">
                    <span>KIMONG</span>
                </div>
                <div class="content-box">
                    <div>
                        <span><i class="fas fa-chevron-left"></i></span>
                        <img class="content-image" src="../images/kimong_1_1.png" alt="content-image">
                        <span><i class="fas fa-chevron-right"></i></span>
                    </div>
                    <span class="content-text">졸귀탱라이언</span>
                </div>
            </div>
        </section>
        <section class="reply-part">
            <div class="white-box">
                <div class="like-box">
                    <span><i class="far fa-thumbs-up"></i></span>
                    <span>23개</span>
                </div>
                <div class="reply-box">
                    <div class="reply-level1">
                        <i class="fas fa-ellipsis-v"></i>
                        <div class="user-profile"><span>USER1</span></div>
                        <div class="content-reply"><span>어쩌구쩌궝머ㅏ엄나옴너ㅏ오ㅓㅏㄴㅁ어ㅏㅁ노어ㅏㅁ노어ㅏ노ㅓㅏㄹㄴ오ㅓㅏㄹㅇㄴ로ㅓㅏㄴ오러ㅏㅇㄴㄹㄴ</span></div>
                    </div>
                    <div class="reply-level2">
                        <i class="fas fa-ellipsis-v"></i>
                        <div class="user-profile"><span>USER2</span></div>
                        <div class="content-reply"><span class="re-reply">@USER1</span><span>대댓글대대대댇대대대댓글</span></div>
                    </div>
                </div>
                <form>
                    <div class="reply-insert">
                        <label>
                            <input type="text" name="reply-insert" placeholder="댓글을 입력해주세요...">
                        </label>
                        <button class="btn btn-primary" type="submit" name="btn-reply">등록</button>
                    </div>
                </form>
            </div>
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>

</body>
</html>
