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
	
	
	<title>회원탈퇴를 위한 비밀번호 입력하는 페이gggg baby~</title>
<style>
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  background-image: repeating-linear-gradient(45deg, #93e0de, transparent 100px);
}

/* The Close Button */
.close {
  color: #000000;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>	
</head>
<body>
		 <section class="withdrawal">
			 <div class="withdrawalWhiteBox1">	
			 	<div class="withdrawaltitle">
			 		<span>회원탈퇴</span>
			 	</div>		 	
			 	<div class="withdrawalpasswd">
			 	<input style="border:0px; border-radius: 10px;" type="password"  value="">
			 	<button style="border:0px; border-radius: 10px; background-color: white;" name="passwd" id="myBtn" class="myCategory" type="button">확인</button>
			 	</div>
			 	
				<!-- Trigger/Open The Modal -->
				<!-- The Modal -->
				<div id="myModal" class="modal">
				
				  <!-- Modal content -->
				  <div class="modal-content">
				    <span class="close">&times;</span>
				    <p>회원탈퇴를 진짜 할고야..?</p>
				    <button style="border:0px; text-align: left; " type="button" onclick="location.href='user_withdrawalPro.do'">Yes 옥희 푸키요!</button>
				  </div>
				</div>
			</div>
		 </section>
	<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>