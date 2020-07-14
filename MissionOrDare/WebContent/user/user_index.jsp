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
//<![CDATA[  
 // input your appkey
   Kakao.init('2e0dd9cdd18563c11119c90254fc687a')
   Kakao.Auth.createLoginButton({

  container: '#create-kakao-login-btn',
  success: function(authObj) {
    Kakao.API.request({
      url: '/v2/user/me',
      success: function(res) {
            alert(JSON.stringify(res)); 
            alert(JSON.stringify(authObj)); 
            console.log(res.kakao_account['email']);//o
            console.log(res.properties['nickname']); 
            console.log(res.properties['profile_image']); //o
            console.log(res.properties['thumbnail_image']); 
            console.log(res.id); //o
            console.log(res.kakao_account['age_range']);  //o
            console.log(res.kakao_account['birthday']);  //o
            console.log(res.kakao_account['gender']); //o
            console.log(authObj.access_token); //o
            console.log(authObj.refresh_token);
            
            var user_email = res.kakao_account['email'] ;
            var profile_picture = res.properties['profile_image'];
            var kakao_id = res.id;
            var age_group = res.kakao_account['age_range'] ;
            var kakao_birthday = res.kakao_account['birthday'];
            var gender = res.kakao_account['gender'];
            var kakao_access_token = authObj.access_token;
            
            location.href="user_loginPro.do?user_email="+ user_email + "&profile_picture=" + profile_picture + "&kakao_id=" + kakao_id
           		 +"&age_group=" + age_group + "&kakao_birthday=" + kakao_birthday + "&gender=" + gender + "&kakao_access_token=" + kakao_access_token;
          }
        })
      },
      fail: function(error) {
        alert(JSON.stringify(error));
      }
    });
//]]>

  </script>
</html>