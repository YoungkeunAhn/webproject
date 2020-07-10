/*
*user_main.jsp
*/
//모달 끄기
function CloseModal() {
    document.getElementById('modal-bg').style.display='none';
}
//일반버튼 클릭시 모달 띄우기
function NomalBtnClick() {
    document.getElementById('mission_level').value='nomal';
    document.getElementById('modal-bg').style.display='flex';

}
//챌린지버튼 클릭시 모달띄우기
function ChallengeBtnClick() {
    document.getElementById('mission_level').value='challenge';
    document.getElementById('modal-bg').style.display='flex';
}
//관심분야버튼 클릭시 input 값 변경
function InterestBtnClick() {
    document.getElementById('mission_challenge').style.display='flex';
    var mission_level = document.getElementById('mission_level').value;
    var mission_categoryArea = document.getElementById('mission_categoryArea');
    mission_categoryArea.value='my';

    location.href = 'user_missionGetPro.jsp?mission_level='+mission_level+'&mission_categoryArea='+mission_categoryArea.value;
}

//전체분야버튼 클릭시 input 값 변경
function AllCategoryBtnClick() {
    var mission_level = document.getElementById('mission_level').value;
    var mission_categoryArea = document.getElementById('mission_categoryArea');
    mission_categoryArea.value='all';

    location.href='user_missionGetPro.jsp?mission_level='+mission_level+'&mission_categoryArea='+mission_categoryArea.value;
}


//미션받기 수락
function MyMissionGet() {
    var mission_id = document.getElementById('mission_id').value;
    location.href='user_myMissionPro.jsp?mission_id=' + mission_id;
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
function GoMainPage() {
    location.href='user_main.jsp';
}

function GoEvalPage() {
    location.href='user_eval.jsp';
}

function GoPidPage() {
    location.href='user_successBoard.jsp';
}

function GoMyPage() {
    location.href='user_my.jsp';
}
function GoMessageForm() {
	location.href='user_messageForm.jsp';
}
function GoSuccessProPage() {
	location.href='user_missionSuccessCountPro.jsp';
}
function GoFailureProPage() {
	location.href='user_missionFailureCountPro.jsp';
}
function MyProfileModify() {
	location.href='user_profileModify.jsp';
}