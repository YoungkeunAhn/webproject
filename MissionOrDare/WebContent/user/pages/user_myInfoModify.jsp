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

</head>
<body style="overflow: hidden;">
<div class="containerBack">
           <div class="title-back"><span class="join-title">Information Modification</span></div>
   <div class="container">
           <form class="join-form" name="userModifyForm" action="user_myInfoModifyPro.do" onsubmit="return myInfoModifyCheck()">
           <input id="interesting_categorys" class="form-control" type="hidden" name="interesting_categorys" >
           <input id="category1" type="hidden" value="${usersDto.interesting1_large_category}">
           <input id="category2" type="hidden" value="${usersDto.interesting2_large_category}">
           <input id="category3" type="hidden" value="${usersDto.interesting3_large_category}">
           <input id="category4" type="hidden" value="${usersDto.interesting4_large_category}">
               <ul class="join-list">
                   <li>
                       <label class="th">닉네임 </label>
                       <label><input class="form-control" type="text" maxlength="8" name="user_nickname" id="user_nickname" placeholder="insert into your nickname" value="${user_nickname}"></label>
                         <div class="checkResult" id="nicknameCheck"></div>
                       <label class="text text-mute">(특수문자 제외)8자 이내로 입력해주세요</label>
                   </li>
                   <li>
                       <label class="th">*수정 할 비밀번호</label>
                       <label><input class="form-control" type="password" name="user_passwd" placeholder="insert into your password"></label>
                       <label class="text text-danger">비밀번호를 입력해주세요</label>
                   </li>
                   <li>
                       <label class="th">*수정 할 비밀번호 확인</label>
                       <label><input class="form-control" type="password" name="user_repasswd" placeholder="replay enter your password"></label>
                       <label class="text text-danger">비밀번호가 다릅니다.</label><label class="text text-primary">비밀번호가 일치합니다.</label>
                   </li>
                   <li>
                       <label class="th"> 생년월일</label>
                       <label><input class="form-control" type="text" name="user_birth" value="${usersDto.date_of_birth}"></label>
                       <label class="text text-danger">생년월일을 입력해주세요</label>
                   </li>
                   <li>
                       <label class="th">직업</label>
                       <label>
                           <select class="form-control" name="user_job">
                            <option value="${usersDto.job}">직업</option>
                            <option value="학생">학생</option>
                            <option value="직장인">직장인</option>
                            <option value="자영업">자영업</option>
                            <option value="무직">무직</option>
                        </select>
                       </label>
                   </li>
                   <li>
                       <label class="th">거주지</label>
                       <label>
                           <select class="form-control" name="user_location">
                            <option value="${usersDto.location}">거주지</option>
                            <option value="서울">서울</option>
                            <option value="경기">경기</option>
                            <option value="인천">인천</option>
                            <option value="대전">대전</option>
                            <option value="강원">강원</option>
                            <option value="충청">충청</option>
                            <option value="경상도">경상도</option>
                            <option value="전라도">전라도</option>
                            <option value="제주도">제주도</option>
                        </select>
                       </label>
                   </li>
               </ul>
   
               <!-- Button trigger modal -->
               <button type="button" class="btn-category" data-toggle="modal" data-target="#myModal" onclick="paintLargeCategory()">
                   카테고리 선택
               </button>
               <label class="text text-danger">카테고리 1개이상 선택하셔야합니다.</label>
   
               <!-- Modal -->
               <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                   <div class="modal-dialog">
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                               <h4 class="modal-title" id="myModalLabel">관심사 카테고리 선택해주세요</h4>
                           </div>
                           <div class="modal-body">
                               <div class="modal-bodyLeft">
                                  
                                  <input class="largeCategory" type="button" value="운동">
                                  <input class="largeCategory" type="button" value="여행">
                                  <input class="largeCategory" type="button" value="교육">
                                  <input class="largeCategory" type="button" value="댄스">
                                  <input class="largeCategory" type="button" value="음악">
                                  <input class="largeCategory" type="button" value="다이어트">
                                  <input class="largeCategory" type="button" value="기타">
                        </div>
                        <div class="modal-bodyRight">
                                  <input class="largeCategory" type="button" value="게임">
                                  <input class="largeCategory" type="button" value="먹방">
                                  <input class="largeCategory" type="button" value="개그">
                                  <input class="largeCategory" type="button" value="영화">
                                  <input class="largeCategory" type="button" value="뷰티">
                                  <input class="largeCategory" type="button" value="브이로그">
                                  <input class="largeCategory" type="button" value="asmr">
                              </div>
                           </div>
                           <div class="modal-footer">
                               <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
                           </div>
                       </div>
                   </div>
               </div>
               <div>
               <button class="btn-modify" type="submit">수정</button>
              <button class="btn-cancle" type="button" onclick="GoMyPage()">취소</button>
              </div>
           </form>
   </div>
</div>
   <script>
   $(document).ready(function () {
	   var value = '';
	   if($('#category1').val()) {value += $('#category1').val() + "/";}
	   if($('#category2').val()) {value += $('#category2').val() + "/";}
	   if($('#category3').val()) {value += $('#category3').val() + "/";}
	   if($('#category4').val()) {value += $('#category4').val() + "/";}
	   $('#interesting_categorys').val(value);
   });
    
    $(document).ready(function () {
    	var interesting_categorys = document.getElementById('interesting_categorys');
    	 var items = $('#interesting_categorys').val();
       $('.modal-bodyLeft > input').click(function () {
    	   if(items.search($(this).val()+'/') === -1){
        	   if( ( $('#interesting_categorys').val().split('/').length-1) < 4 ){
        		   items += $(this).val() + '/';
                   interesting_categorys.value = items;
                   $(this).css({
                       background: 'yellow',
                       color: 'white',
                   });   
        	   }// if end
        	   else{
        		   alert('카테고리 4개 이하로 선택해주세요.');
        	   }
               
           }//if end
           else {
               var includeValue = $(this).val() + '/';
               items = items.replace(includeValue,'');
               $(this).css({
            	   background: 'rgb(239, 239, 239)',
                   color: 'black',
               });
               interesting_categorys.value = items;
           }//else end
       });//click() end
       $('.modal-bodyRight > input').click(function () {
    	   if(items.search($(this).val()+'/') === -1){
        	   if( ( $('#interesting_categorys').val().split('/').length-1) < 4 ){
        		   items += $(this).val() + '/';
                   interesting_categorys.value = items;
                   $(this).css({
                       background: 'yellow',
                       color: 'white',
                   });   
        	   }// if end
        	   else{
        		   alert('카테고리 4개 이하로 선택해주세요.');
        	   }
               
           }//if end
           else {
               var includeValue = $(this).val() + '/';
               items = items.replace(includeValue,'');
               $(this).css({
            	   background: 'rgb(239, 239, 239)',
                   color: 'black',
               });
               interesting_categorys.value = items;
           }//else end
       });//click() end
    });//ready() end
    
    $(document).ready(function(){ //닉네임 중복확인
        $('#user_nickname').on('keyup',function(event){
            $.ajax(
                {
                    type : 'POST',
                    url : 'nicknameCheck.do',
                    data :{
                        user_nickname : $('#user_nickname').val()
                    },
                    dataType : 'text',
                    async : false,
                    success : function(data){
                        console.log(data);
                       data=eval('(' + data + ')');
                  
                        if($("#user_nickname").val()==null ||$("#user_nickname").val()==""){
                            $("#nicknameCheck").text("닉네임을 입력해주세요.");
                            $("#nicknameCheck").css("color","red");
                            $("reg_submit").attr("disabled",true);
                        }else if(data.result==1){
                            //1: 아이디가 중복되는 문구
                            $("#nicknameCheck").text("사용중인 닉네임입니다.");
                            $("#nicknameCheck").css("color","red");
                            $("reg_submit").attr("disabled",true);
                        }else if(data.result==0){
                            $("#nicknameCheck").text("사용 가능한 닉네임입니다.");
                            $("#nicknameCheck").css("color","red");
                            $("reg_submit").attr("disabled",true);
                        }
                    },
                    error : function(e){
                    }
                }
            );
        });
    });
    

   </script>
<!-- 선택된 카테고리 색칠하기 -->
<script>

    let category1 = document.getElementById('category1');
    let category2 = document.getElementById('category2');
    let category3 = document.getElementById('category3');
    let category4 = document.getElementById('category4');
    let largeCategories = document.querySelectorAll('.largeCategory');

    function paintLargeCategory(){
        for(let i=0; i<largeCategories.length; i++){
            if(category1.value === largeCategories[i].value || category2.value === largeCategories[i].value || category3.value === largeCategories[i].value || category4.value === largeCategories[i].value){
                largeCategories[i].style.background = 'yellow';
                largeCategories[i].style.color = 'white';
            }
        }
    }
</script>
</body>
</html>

