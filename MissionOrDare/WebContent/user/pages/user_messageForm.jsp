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

</head>
<body>
    <div class="container">
    	<header>
	        <img id="menu" class="menu-img" src="${project}images/menu.png" alt="logo">
	         <div id="menu_list" class="menu_list">
	          	<span onclick="GoLogoutPage()">Logout</span>
	          	<br><br>
	          	<span onclick="GoWithdrawalPage()">Withdrawal</span>
	      </div>
	        <img onclick="GoMainPage()" class="header-img" src="${project}images/mod_logo.png" alt="logo">
	    </header>
        <article>
	       	<section class="messageNav">
	            <span class="getdMessage">받은 메시지</span>
	            <span class="sendmessage">보낸 메시지</span>
	            <img class="sendIcon" src="${project}images/sendmsg1.png">
			</section>
			
			<section id="usermessage" class="messageInfo">
        	</section>	
        </article>		
		<!-- 메뉴 -->
        <nav>
            <ul>
                <li onclick="GoMainPage()">
                    <img class="nav-home" src="${project}images/blackMy.PNG" alt="logo">
                    <span>홈</span>
                </li>
                <li onclick="GoEvalPage()">
                    <img src="${project}images/blackdotbogi.PNG" alt="eval-icon">
                    <span>평가</span>
                </li>
                <li onclick="GoPidPage()">
                    <img src="${project}images/blackfeed.PNG" alt="pid-icon">
                    <span>피드</span>
                </li>
                <li onclick="GoMyPage()">
                    <img src="${project}images/mypage.png" alt="my-icon">
                    <span>마이</span>
                </li>
            </ul>
        </nav>
    </div>
    <script type="text/javascript">
      //<!--
       	$(document).ready(function(){
       		//메세지 페이지 왔을 때 defalut로 받은 메세지 화면 띄우기
       		$('#usermessage').load('user_getMessage.do');
       		
       		//menu list toggle
			$("#menu").click(function(){
				$("#menu_list").slideToggle("slow");
			});
 		  
 		 	//받은 메세지
			$('.getdMessage').click(
 	            function(event) {
 	               $('#usermessage').load('user_getMessage.do');  
 	               $('.getdMessage').addClass('click-background');
                   $('.sendMessage').removeClass('click-background');
				   $('.sendIcon').removeClass('click-background');
 	            }  
			);
			//보낸 메세지
			$('.sendmessage').click(
				function(event) {
					$('#usermessage').load('user_postedMessage.do');
					$('.sendmessage').addClass('click-background');
					$('.getdMessage').removeClass('click-background');
					$('.sendIcon').removeClass('click-background');
				}      
			);
			//메세지 보내기
			$('.sendIcon').click(
				function(event) {
					$('#usermessage').load('user_sendMessage.do');      
					$('.sendIcon').addClass('click-background');
					$('.getdMessage').removeClass('click-background');
					$('.sendmessage').removeClass('click-background');
				}      
			);
 		});
      //-->
   </script>
</body>
</html>
