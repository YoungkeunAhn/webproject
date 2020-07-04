<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="${project}assets/css/manage.css">
    <script src="${project}assets/js/script.js"></script>
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
    	<div style="display: block; width:900px; height:704px; margin:0 auto; background:#ddd;position:relative;">
        <section class="content-part">
        <div class="white-box">
            <div>
                <span>미술/그리기</span>
            </div>
            <div>
                <span>라이언이 부탁한 자화상</span>
            </div>
            
            <div class="content-profile">
                <img class="img-circle" src="${project}images/user.png" alt="user-profile">
                <span>KIMONG</span><br>
            </div>
            <div>
                <div>
                    <span><i class="fas fa-chevron-left"></i></span>
                    <img class="content-image" src="${project}images/kimong_1_1.png" alt="content-image">
                    <span><i class="fas fa-chevron-right"></i></span>
                </div>
                <span>졸귀탱라이언</span>
            </div>
              <div class="like-box">
                <span><i class="far fa-thumbs-up"></i></span>
                <span>23개</span>
            </div>
            <div class="reply-box">
            
                <i class="fas fa-ellipsis-v"></i>
                	
                <div class="reply-level1">
                	<span>아옹</span>
                    <div class="user-profile">
                    <span>user1</span>
                    <span style="background-color:red">
                    <button onclick="location.href='${pageContext.request.contextPath}/manage_message_deletePro.do'">댓글삭제하고파</button>
                    </span>
                    </div>
                    
                    <div class="content-reply"><span>댓글</span></div>
                </div>
                <div class="reply-level2">
                    <div class="user-profile"><span>user1</span>
                     <button onclick="location.href='${pageContext.request.contextPath}/manage_message_deletePro.do'">댓글삭제하고파</button>
                    </div>
                    <div class="content-reply"><span>댓글</span></div>
                   <button class="btn btn-primary btn-search" onClick="history.go(-1)">다시돌아가~ 내일이 없는것처럼 돌아가</button>
                </div>
            </div>
            
       	</div>
       	</section>
       
          
       
        </div>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>

</body>
</html>
