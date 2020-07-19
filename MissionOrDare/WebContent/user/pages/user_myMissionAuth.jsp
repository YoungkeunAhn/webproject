<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
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
            	var cnt = 0;
            	var maxSize = 209715200;
            	var files = e.target.files;
            	var filesArr = Array.prototype.slice.call(files);
            	filesArr.forEach(function(f) {
            		if(f.size >= maxSize) {
            			alert("파일 사이즈 초과");
            			location.reload(true);
            		}
            		if(!(f.type.match("image.*") || f.type.match("video.mp4") || f.type.match("video.avi") )) {
            			alert("사진과 동영상만 업로드 가능합니다!");
            			location.reload(true);
            			return;
            		}
            	});
            	$('#auth_image').attr('src', URL.createObjectURL(e.target.files[0]));
            	$('.fa-angle-left').on('click', function(){
            		if(cnt > 0) {
            			$('#auth_image').attr('src', URL.createObjectURL(e.target.files[--cnt]));
            		}
            	});
            	$('.fa-angle-right').on('click', function(){
            		if(cnt < files.length-1) {
            			$('#auth_image').attr('src', URL.createObjectURL(e.target.files[++cnt]));
            		}
            	});
            })
        });
    </script>
</head>
<body>
<div class="container">
    <article class="myMission-auth">
    	<form method="post" class="myMission-authForm" name="myMissionAuth" action="user_myMissionAuthPro.do?mission_state_id=${mission_state_id}" enctype="multipart/form-data" accept-charset="UTF-8">
	        <section class="auth_main">
	                <ol>
	                    <li><input type="hidden" value="${mission_category}">${mission_category}</li>
	                    <li><input type="hidden" value="${mission_title}">${mission_title}</li>
	                    <li class="text-date"><input class="form-control" type="hidden" value="${mission_start_date} 시작">${mission_start_date} 시작</li>
	                    <li>
	                        <i class="fas fa-angle-left"></i>
	                        <img name="auth_image" id="auth_image" src="${project}images/auth_defalut.png" alt="auth_image" onclick="document.getElementById('upload').click()">
	                        <i class="fas fa-angle-right"></i>
	                    </li>
	                    <li>
	                        <input id="upload" class="file_upload" name="files" type="file" accept="image/*, video/*" capture="camera" multiple style="display: none">
	                    </li>
	                    <li>
	                        <input class="board_content form-control" type="text" maxlength="50" name="board_content" placeholder="미션에 대한 내용을 간단히 적어주세요">
	                    </li>
	                    <li>
	                        <select class="public-select form-control" name="public_availability">
	                            <option value="1" selected>공개</option>
	                            <option value="0">비공개</option>
	                        </select>
	                    </li>
	                </ol>
	        </section>
	        <section class="btn-line">
	            <button class="btn btn-auth" type="button" onclick="AuthPopupOn()">인증하기</button>
	            <button style="background-color: #4b493d" class="btn btn-danger" type="button" onclick="location.href='user_main.do'">취소하기</button>
	        </section>
	        <section id="authPopup" class="popup-bg">
	            <div class="popup">
	                <div>
	                    <label>미션에 대한 평점을 주세용</label>
	                    <div class="starRev">
							  <span class="starR on">별1</span>
							  <span class="starR">별2</span>
							  <span class="starR">별3</span>
							  <span class="starR">별4</span>
							  <span class="starR">별5</span>
						</div>
	                    <button class="btn btn-auth" type="submit">인증</button>
	                    <button class="btn btn-default" type="button" onclick="AuthPopupClose()">취소</button>
	                </div>
	            </div>
	        </section>
        </form>
    </article>
</div>
<script>
		$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
</script>


</body>
</html>