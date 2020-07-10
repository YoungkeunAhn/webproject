<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="../asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="../asset/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/23971e572d.js" crossorigin="anonymous"></script>
	
	<script>
	 $(document).ready(function () {
         $('#upload').change(function (e) {
             $('#profile_image').attr('src', URL.createObjectURL(e.target.files[0]));
         })
     });
    </script>
</head>
<body>
	<div class="container">
		<header>
	            <img class="menu-img" src="../images/menu.png" alt="logo">
	            <img class="header-img" src="../images/mod_logo.png" alt="logo">
	    </header>
	    <article>
		    <form method="post" action="user_profileModifyPro.jsp" name="userProfile">
		    	<section class="profile-modify">
			   		<div class="content-image"> 
				   		<div class="content-backcolor">	
		                   <img class="content-defaultimage" id="profile_image" src="../images/auth_defalut.png" alt="auth_image" onclick="document.getElementById('upload').click(); document.getElementById('abc').value=document.getElementById('upload').value">
		                   <input id="abc" type="text" name="abc" style="display:none;">
		                   <input id="upload" class="file_upload" name="" type="file" accept="image/*, video/*" capture="camera" multiple style="display: none">
		            	</div>
		            </div>
		            <div class="profile-modifybtn">
		            	<button type="submit" class="profilemodifybtn">수정완료</button>
		            </div>
		    	</section>
		    </form>
	    </article>
	    <nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="../images/mod_logo.png" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="../images/task.png" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="../images/pid.png" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="../images/my.png" alt="my-icon">
                    <span>마이</span>
                </li>
            </ul>
        </nav>
    </div>
</body>
</html>