<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_settings.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${project}asset/user.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${project}asset/script.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
        $('#myModal').on('show.bs.modal', function (e) {
            if (!data) return e.preventDefault() // stops modal from being shown
        })
    </script>
    <title>유저 회원가입 페이지</title>
</head>
<body>
<div class="containerBack">
	        <div class="title-back"><span class="join-title">Sign up for membership</span></div>
    <div class="container">
	       <form method="post" class="join-form" name="userJoinForm" action="user_joinPro.do" onsubmit="return SignUpCheck()">
	        <input type="hidden" name="user_email" value="${user_email}">
	        <input type="hidden" name="profile_picture" value="${profile_picture}">
	        <input type="hidden" name="kakao_id" value="${kakao_id}">
	        <input type="hidden" name="age_group" value="${age_group}">
	        <input type="hidden" name="kakao_birthday" value="${kakao_birthday}">
	        <input type="hidden" name="gender" value="${gender}">
	        <input type="hidden" name="kakao_access_token" value="${kakao_access_token}">
	        
	            <ul class="join-list">
	                <li>
	                    <label class="th">* 닉네임</label>
	                    <label><input class="form-control" type="text" name="user_nickname" id="user_nickname" placeholder="insert into your nickname"></label>
	                    <div class="checkResult" id="nicknameCheck"></div>
	                </li>
	                <li>
	                    <label class="th">* 비밀번호</label>
	                    <label><input class="form-control" type="password" name="user_passwd" placeholder="insert into your password"></label>
	                    <label class="text text-danger">비밀번호를 입력해주세요</label>
	                </li>
	                <li>
	                    <label class="th">* 비밀번호확인</label>
	                    <label><input class="form-control" type="password" name="user_repasswd" placeholder="replay enter your password"></label>
	                    <label class="text text-danger">비밀번호가 다릅니다.</label><label class="text text-primary">비밀번호가 일치합니다.</label>
	                </li>
	                <li>
	                    <label class="th">* 생년월일</label>
	                    <label><input class="form-control" type="date" name="user_birth"></label>
	                    <label class="text text-danger">생년월일을 입력해주세요</label>
	                </li>
	                <li>
	                    <label class="th">직업</label>
	                    <label>
	                        <select class="form-control" name="user_job">
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
	                            <option value="서울">서울</option>
	                            <option value="경기">경기</option>
	                            <option value="인천">인천</option>
	                            <option value="대전">대전</option>
	                            <option value="강원">강원</option>
	                            <option value="충청">충청</option>
	                            <option value="경상">경상</option>
	                            <option value="전라">전라</option>
	                            <option value="제주">제주</option>
	                        </select>
	                    </label>
	                </li>
	            </ul>
	
	            <button type="button" class="btn-category" data-toggle="modal" data-target="#myModal">
	                카테고리 선택
	            </button>
	            <label class="text text-danger">카테고리 1개이상 선택하셔야합니다.</label>
	
	            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	                <div class="modal-dialog">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                            <h4 class="modal-title" id="myModalLabel">관심사 카테고리 선택해주세요</h4>
	                        </div>
	                        <div class="modal-body">
	                        	<div class="modal-bodyLeft">
	                        	    <input id="interesting_categorys" class="form-control" type="hidden" name="interesting_categorys">
		                            <input class="lagerCategory" type="button" value="운동">
		                            <input class="lagerCategory" type="button" value="여행">
		                            <input class="lagerCategory" type="button" value="교육">
		                            <input class="lagerCategory" type="button" value="댄스">
		                            <input class="lagerCategory" type="button" value="음악">
		                            <input class="lagerCategory" type="button" value="다이어트">
		                            <input class="lagerCategory" type="button" value="기타">	                            
								</div>
								<div class="modal-bodyRight">
	                        	    <input id="interesting_categorys" class="form-control" type="hidden" name="interesting_categorys">
		                            <input class="lagerCategory" type="button" value="게임">
		                            <input class="lagerCategory" type="button" value="먹방">
		                            <input class="lagerCategory" type="button" value="개그">
		                            <input class="lagerCategory" type="button" value="영화">
		                            <input class="lagerCategory" type="button" value="뷰티">
		                            <input class="lagerCategory" type="button" value="브이로그">
		                            <input class="lagerCategory" type="button" value="asmr">
	                        	</div>
	                        </div>
	                        <div class="modal-footer">
	                            <button type="button" class="btn btn-default" data-dismiss="modal">수정완료</button>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <button class="btn-memberJoin" type="submit">회원가입</button>
	        </form>	
    </div>
</div>
    <script>
        var items = '';
        var interesting_categorys = document.getElementById('interesting_categorys');
        $(document).ready(function () {
           $('.modal-bodyLeft > input').click(function () {
               if(items.search($(this).val()+'/') === -1){
                   items += $(this).val() + '/';
                   interesting_categorys.value = items;
                   $(this).css({
                       background: 'yellow',
                       color: 'white',
                   });
               }//if end
               else {
                   var includeValue = $(this).val() + '/';
                   items = items.replace(includeValue,'');
                   $(this).css({
                       background: 'white',
                       color: 'black',
                   });
                   interesting_categorys.value = items;
               }//else end
           });//click() end
        });//ready() end
       
        var items = '';
        var interesting_categorys = document.getElementById('interesting_categorys');
        $(document).ready(function () {
           $('.modal-bodyRight > input').click(function () {
               if(items.search($(this).val()+'/') === -1){
                   items += $(this).val() + '/';
                   interesting_categorys.value = items;
                   $(this).css({
                       background: 'yellow',
                       color: 'white',
                   });
               }//if end
               else {
                   var includeValue = $(this).val() + '/';
                   items = items.replace(includeValue,'');
                   $(this).css({
                       background: 'white',
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

        	//-->
        </script>
</body>
</html>

