<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>
<body>
    <div class="container">
        <header>
            <img class="menu-img" src="../images/menu.png" alt="logo">
            <img onclick="GoMainPage()" class="header-img" src="../images/mod_logo.png" alt="logo">
        </header>
        <article>
            <section class="messageForm">
               <div class="messageNavi">
                  <div id="usermessage1" class="messagetitle">
                  	받은 메시지
                  </div>
                  <div id="usermessage2" class="messagetitle">
                  	보낸 메시지
                  </div>
                  <div>
                  <img id="sendmessage" class="sendIcon" alt="sendIcon" src="../images/paperAp.png">
                  </div>     
               </div>
               <div id="usermessage" class="messageInfo">
               </div>
            </section>
        </article>
        <nav>
            <ul>
                <li style="cursor:pointer;" onclick="GoMainPage()">
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
    <script type="text/javascript">
      //<!--
         $('#usermessage1').click(
            function(event) {
               $('#usermessage').load('user_getMessage.jsp');      
            }      
         );
         $('#usermessage2').click(
               function(event) {
                  $('#usermessage').load('user_getMessage.jsp');      
               }      
            );
         $('#sendmessage').click(
               function(event) {
                  $('#usermessage').load('user_sendMessage.jsp');      
               }      
            );
      //-->
   </script>
</body>
</html>

