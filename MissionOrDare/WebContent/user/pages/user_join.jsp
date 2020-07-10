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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
        $('#myModal').on('show.bs.modal', function (e) {
            if (!data) return e.preventDefault() // stops modal from being shown
        })
    </script>
    <title>유저 회원가입 페이지</title>
</head>
<body>
    <div class="container">
        <span class="join-title">회원가입</span>
        <form class="join-form" name="userJoinForm" action="user_joinPro.do">
            <ul class="join-list">
                <li>
                    <label class="th">* 닉네임</label>
                    <label><input class="form-control" type="text" name="user_nickname" placeholder="insert into your nickname"></label>
                    <label class="text text-mute">닉네임을 입력해주세요</label><label class="text text-danger">닉네임이 중복되었습니다.</label><label class="text text-primary">사용할 수 있는 닉네임입니다.</label>
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
                            <option value="1">학생</option>
                            <option value="2">직장인</option>
                            <option value="3">자영업</option>
                            <option value="4">무직</option>
                        </select>
                    </label>
                </li>
                <li>
                    <label class="th">거주지</label>
                    <label>
                        <select class="form-control" name="user_location">
                            <option value="1">서울</option>
                            <option value="2">경기</option>
                            <option value="3">인천</option>
                            <option value="4">대전</option>
                            <option value="5">강원</option>
                            <option value="6">충청</option>
                            <option value="7">경상</option>
                            <option value="8">전라</option>
                            <option value="9">제주</option>
                        </select>
                    </label>
                </li>
            </ul>

            <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal">
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
                            <input id="interesting_categorys" class="form-control" type="hidden">
                            <input class="lagerCategory" type="button" value="운동">
                            <input class="lagerCategory" type="button" value="미술">
                            <input class="lagerCategory" type="button" value="요리">
                            <input class="lagerCategory" type="button" value="여행">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">수정완료</button>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn btn-default" type="submit">회원가입</button>
        </form>
    </div>
    <script>
        var items = '/';
        var interesting_categorys = document.getElementById('interesting_categorys');
        $(document).ready(function () {
           $('.modal-body > input').click(function () {
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
    </script>
</body>
</html>

