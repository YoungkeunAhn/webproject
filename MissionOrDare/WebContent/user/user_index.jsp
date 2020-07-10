<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="user/asset/user.css">
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <title>UserIndex</title>
  </head>
  <body>
    <div class="container">
      <img class="index-logo" src="user/images/mod_logo.png" alt="logo">
      <span class="index-title">Mission Or Dare</span>
      <a class="kakaologin-btn" id="create-kakao-login-btn"></a>
    </div>
  </body>


  <script type="text/javascript">
    // input your appkey
    Kakao.init('2e0dd9cdd18563c11119c90254fc687a')
    Kakao.Auth.createLoginButton({
      container: '#create-kakao-login-btn',
      success: function(authObj) {
        alert(JSON.stringify(authObj))
        location.href="user_loginPro.do";
      },
      fail: function(err) {
        alert(JSON.stringify(err))
      },
    })
  </script>

</html>