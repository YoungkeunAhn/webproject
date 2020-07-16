var nicknameNullError = "닉네임을 입력해주세요";
var passwdNullError = "비밀번호를 입력해주세요";
var passwdDifError = "비밀번호가 다릅니다";
var repasswdNullError = "비밀번호 확인도 입력해주세요";
var dateNullError = "생년월일을 입력해주세요";
var nicknameSpecialError = "닉네임을 확인해주세요.\n들어갈수 없는 문자가 있습니다.";

/*
 * 
 * 유효성 처리
 * 
 */

/*
 * user_join.jsp
*/
function SignUpCheck() {
	var checkKor = /^[ㄱ-ㅎㅏ-ㅣ\x20]*$/gi;	//숫자는 입력가능하다
	var checkSpc = /[~!@#$%^&*()_+|<>?:{}]/;
	var regExp = /\s/g;	//띄어쓰기
	if( ! userJoinForm.user_nickname.value ) {
		 alert( nicknameNullError );
		 userJoinForm.user_nickname.focus();
		 return false;
	 } else if( checkKor.test(userJoinForm.user_nickname.value) ||
			 	checkSpc.test(userJoinForm.user_nickname.value) ||
			 	regExp.test(userJoinForm.user_nickname.value)) {
		 alert(nicknameSpecialError);
		 userJoinForm.user_nickname.focus();
		 return false;
	 }
	 if( ! userJoinForm.user_passwd.value ) {
		 alert( passwdNullError );
		 userJoinForm.user_passwd.focus();
		 return false;
	 } else if( userJoinForm.user_passwd.value != userJoinForm.user_repasswd.value ) {
		 alert( passwdDifError );
		 userJoinForm.user_repasswd.focus();
		 return false;
	 }
	 if( ! userJoinForm.user_repasswd.value ) {
		 alert( repasswdNullError );
		 userJoinForm.user_repasswd.focus();
		 return false;
	 }
	 if( ! userJoinForm.user_birth.value ) {
		 alert( dateNullError );
		 userJoinForm.user_birth.focus();
		 return false;
	 }
}
/*
 * user_myInfoModify.jsp
*/
function myInfoModifyCheck() {
	var checkKor = /^[ㄱ-ㅎㅏ-ㅣ\x20]*$/gi;	//숫자는 입력가능하다
	var checkSpc = /[~!@#$%^&*()_+|<>?:{}]/; //특수문자 사용불가
	var regExp = /\s/g;	//띄어쓰기
	
	 if( ! userModifyForm.user_passwd.value ) {
		 alert( passwdNullError );
		 userModifyForm.user_passwd.focus();
		 return false;
	 } else if( userModifyForm.user_passwd.value != userModifyForm.user_repasswd.value ) {
		 alert( passwdDifError );
		 userModifyForm.user_repasswd.focus();
		 return false;
	 }
	 if( ! userModifyForm.user_repasswd.value ) {
		 alert( repasswdNullError );
		 userModifyForm.user_repasswd.focus();
		 return false;
	 }
	 
}
/*
 * 
 * user_report.jsp 텍스트에어리어 유혀상
 * 
 * 
 */

/*
*user_main.jsp
*/
//모달 끄기
function CloseModal() {
    document.getElementById('modal-bg').style.display='none';
}
//일반버튼 클릭시 모달 띄우기
function NormalBtnClick() {
    document.getElementById('mission_level').value='normal';
    document.getElementById('modal-bg').style.display='flex';

}
//챌린지버튼 클릭시 모달띄우기
function ChallengeBtnClick() {
    document.getElementById('mission_level').value='challenge';
    document.getElementById('modal-bg').style.display='flex';
}
//관심분야버튼 클릭시 input 값 변경
function InterestBtnClick() {
    var mission_level = document.getElementById('mission_level').value;
    var mission_categoryArea = document.getElementById('mission_categoryArea');
    mission_categoryArea.value='my';
    
    location.href = 'user_missionGetPro.do?mission_level='+mission_level+'&mission_categoryArea='+mission_categoryArea.value;
}

//전체분야버튼 클릭시 input 값 변경
function AllCategoryBtnClick() {
    var mission_level = document.getElementById('mission_level').value;
    var mission_categoryArea = document.getElementById('mission_categoryArea');
    mission_categoryArea.value='all';

    location.href='user_missionGetPro.do?mission_level='+mission_level+'&mission_categoryArea='+mission_categoryArea.value;
}


//미션받기 수락
function MyMissionGet() {
    var mission_info_id = document.getElementById('mission_info_id').value;
    location.href='user_myMissionPro.do?mission_info_id=' + mission_info_id;
}

//검색창 포커스시 실시간 검색기능창
function OnSearch(){
    var search_result = document.getElementById('search_result');
    search_result.style.display="block";

    var search_input = document.getElementById('search_input');
    if(! search_input.value){
        search_result.style.display="none";
    }
}
/*
*
* myMissionAuth
*
*/
function AuthPopupOn() {
    document.getElementById('authPopup').style.display='flex';
}

function AuthPopupClose() {
    document.getElementById('authPopup').style.display='none';
}

/*
*
* 페이지 이동 버튼클릭 이벤트
*
*/
function GoMainPage(data) {
    location.href='user_main.do?user_nickname=' + data;
}

function GoEvalPage() {
    location.href='user_eval.do';
}

function GoPidPage() {
    location.href='user_successBoard.do';
}

function GoMyPage() {
    location.href='user_my.do';
}
function GoMessageForm() {
	location.href='user_messageForm.do';
}
function GoSuccessProPage() {
	location.href='user_missionSuccessCountPro.do';
}
function GoFailureProPage() {
	location.href='user_missionFailureCountPro.do';
}
function MyProfileModify() {
	location.href='user_profileModify.do';
}
function MyInfoModify() {
	location.href='user_myInfoModify.do';
}
