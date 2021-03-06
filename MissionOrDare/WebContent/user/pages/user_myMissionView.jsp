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
    <script src="https://kit.fontawesome.com/23971e572d.js"></script>
    <title>마이미션뷰 페이지</title>
</head>
<body>
<c:if test="${result eq 1}">
	<script type="text/javascript">
	//<!--
		alert("진행중인 미션이 있습니다.");
		location.href="user_main.do";
	//-->
	</script>
</c:if>
<c:if test="${random_number eq -1}">
	<script type="text/javascript">
	//<!--
		alert("미션이 없습니다.");
		location.href="user_main.do";
	//-->
	</script>
</c:if>
<div class="container">
    <article>
    	
        <section class="mission-info-view">
        	<span class="goMain" onclick="GoMainPage()">메인으로</span>
            <input id="mission_info_id" type="hidden" value="${randomMission.mission_info_id}">
            <label>${randomMission.large_category}/${randomMission.small_category}</label>
            <label>${randomMission.mission_title}</label>
            <img src="/category/${randomMission.category_image}" onerror="this.src='${project}images/mission_image.png'">
            <ul>
                <li>${randomMission.mission_contents}</li>
            </ul>
            <div class="btn-line">
                <button type="button" class="btn btn-primary" onclick="MyMissionGet()">미션수락</button>
                <button type="button" class="btn btn-danger" onclick="location.href='user_missionGetPro.do?mission_level=${mission_level}&mission_categoryArea=${mission_categoryArea}&re=1'">다시받기</button>
            </div>
        </section>
    </article>
</div>
</body>
</html>
