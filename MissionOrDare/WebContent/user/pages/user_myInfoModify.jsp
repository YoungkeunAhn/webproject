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
        <span class="join-title">정 보 수 정</span>
        <form class="join-form" name="userModifyForm" action="user_myInfoModifyPro.do" onsubmit="return myInfoModifyCheck()">
            <ul class="join-list">
                <li>
                    <label class="th">*닉네임 </label>
                    <label><input class="form-control" type="text" name="user_nickname" placeholder="Please enter a nickname to modify" readonly="readonly"></label>
                    <label class="text text-mute">(특수문자 제외)40byte 이내로 입력해주세요</label>
                    <label class="text text-danger">닉네임이 중복되었습니다.</label>
                    <label class="text text-primary">사용할 수 있는 닉네임입니다.</label>
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
                    <label class="th">* 생년월일</label>
                    <label><input class="form-control" type="text" name="user_birth" readonly="readonly"placeholder="1994년12월17일" ></label>
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
                            <option value="7">경상도</option>
                            <option value="8">전라도</option>
                            <option value="9">제주도</option>
                        </select>
                    </label>
                </li>
            </ul>

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal">
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
                            <label><input class="lagerCategory" type="checkbox" value="운동"></label>
                            <label><input class="lagerCategory" type="button" value="미술"></label>
                            <label><input class="lagerCategory" type="button" value="요리"></label>
                            <label><input class="lagerCategory" type="button" value="여행"></label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <div>
            <button class="btn btn-default modify" type="submit">수정</button>
        	<button class="btn btn-primary modify black" type="button" onclick="GoMyPage()">취소</button>
        	</div>
        </form>
    </div>
</body>
</html>


