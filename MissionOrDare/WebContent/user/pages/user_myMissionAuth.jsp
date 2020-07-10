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
    <title>마이미션뷰 페이지</title>
    <script>
        $(document).ready(function () {
            $('#upload').change(function (e) {
                $('#auth_image').attr('src', URL.createObjectURL(e.target.files[0]));
            })
        });
    </script>
</head>
<body>
<div class="container">
    <article class="myMission-auth">
    	<form class="myMission-authForm" name="myMissionAuth" action="user_myMissionPro.do">
	        <section class="auth_main">
	                <ol>
	                    <li><input type="text" value="운동 / 달리기"></li>
	                    <li><input type="text" value="날씨도 좋은데 달려볼까?"></li>
	                    <li class="text-date"><input class="form-control" type="text" value="2020년 7월8일 오후2시56분 시작"></li>
	                    <li>
	                        <i class="fas fa-angle-left"></i>
	                        <img id="auth_image" src="${project}images/auth_defalut.png" alt="auth_image" onclick="document.getElementById('upload').click(); document.getElementById('abc').value=document.getElementById('upload').value">
	                        <i class="fas fa-angle-right"></i>
	                    </li>
	                    <li>
	                        <input id="abc" type="text" name="abc" style="display:none;">
	                    </li>
	                    <li>
	                        <input id="upload" class="file_upload" name="" type="file" accept="image/*, video/*" capture="camera" multiple style="display: none">
	                    </li>
	                    <li>
	                        <input class="board_content form-control" type="text" name="board_content" placeholder="미션에 대한 내용을 간단히 적어주세요">
	                    </li>
	                    <li>
	                        <select class="public-select form-control" name="public_availability">
	                            <option selected>공개</option>
	                            <option>비공개</option>
	                        </select>
	                    </li>
	                </ol>
	        </section>
	        <section class="btn-line">
	            <button class="btn btn-auth" type="button" onclick="AuthPopupOn()">인증하기</button>
	            <button class="btn btn-danger" type="button" onclick="location.href='user_main.do'">취소하기</button>
	        </section>
	        <section id="authPopup" class="popup-bg">
	            <div class="popup">
	                <div>
	                    <label>인증 요청 하시겠습니까?</label>
	                    <button class="btn btn-auth" type="submit">ㄱㄱ</button>
	                    <button class="btn btn-default" type="button" onclick="AuthPopupClose()">ㄴㄴ</button>
	                </div>
	            </div>
	        </section>
        </form>
    </article>
</div>

</body>
</html>