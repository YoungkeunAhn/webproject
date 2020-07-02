var iderror = "아이디를 입력해주세요.";
var passwderror = "비밀번호를 입력해주세요";
var searcherror = "검색어를 입력해주세요";
var messageerror = "메시지좀 입력해봐바";
var categorybigerror = "대분류를 입력해봐용^{}^";
var categorysmallerror = "소분류를 입력해봐용^*^";
var missiontitleerror = "제목을 입력해주라좀~~";
var missionContentError = "내용을 입력하세요";
var missionlargecategoryerror = "대분류를 선택해주세요";
var missionsmallcategoryerror = "소분류를 선택해주세요";
var missionscoreerror = "점수를 입력해주세요";
var inputTypeError = '올바른 값을 입력하시오!!!!!!!!!!!!!!!!!!!!!!!!!!';
var manageriderror = "관리자님 관리자아이디를 입력해주세요";
var managerpasswderror = "관리자님 관리자 비밀번호를 입력해주세요";
//로그인
function logincheck() {
    if(! loginform.manager_id.value ){
        alert(iderror);
        loginform.manager_id.focus();
        return false;

    }else if(! loginform.manager_passwd.value ){
        alert(passwderror);
        loginform.manager_passwd.focus();
        return false;
    }
}

//미션검색
function searchcheck1() {
    if(! searchform.search.value){
        alert(searcherror);
        serchform.search.focus();
        return false;
    }
}

//메시지 검색
function messagecheck() {
	if( ! messageForm.message.value ) {
		alert(messageerror);
		messageForm.message.focus();
		return false;
	}
}
//category_insert
function categoryinsertcheck() {
	var checkKor = /^[0-9ㄱ-ㅎㅏ-ㅣ\x20]*$/gi;
	var checkSpc = /[~!@#$%^&*()_+|<>?:{}]/;
	var regExp = /\s/g;
	if( ! categoryinsertform.largeCategory.value ) {
		alert( categorybigerror );
		categoryinsertform.largeCategory.focus();
		return false;
		
	} else if(checkSpc.test(categoryinsertform.largeCategory.value) || checkKor.test(categoryinsertform.largeCategory.value) || regExp.test(categoryinsertform.largeCategory.value)){
		alert(inputTypeError);
		categoryinsertform.largeCategory.focus();
		return false;	
	} else if( ! categoryinsertform.smallCategory.value ) {
		alert( categorysmallerror );
		categoryinsertform.smallCategory.focus();
		return false;
	} else if(checkSpc.test(categoryinsertform.smallCategory.value) || checkKor.test(categoryinsertform.smallCategory.value) || regExp.test( categoryinsertform.smallCategory.value )){
		alert(inputTypeError);
		categoryinsertform.smallCategory.focus();
		return false;
	}
}
// mission_insert
function missioninsertcheck() {
	if( missioninsertForm.largecategory.value=="" ) {
		alert( missionlargecategoryerror );
		return false;
	} else if( missioninsertForm.smallcategory.value=="" ) {
		alert( missionsmallcategoryerror );
		return false;
	} else if( ! missioninsertForm.missiontitle.value ) {
		alert( missiontitleerror );
		missioninsertForm.missiontitle.focus();
		return false;
	} else if( ! missioninsertForm.missioncontent.value ) {
		alert( missionContentError );
		missioninsertForm.missioncontent.focus();
		return false;
	} else if( ! missioninsertForm.missionscore.value ) {
		alert( missionscoreerror );
		missioninsertForm.missionscore.focus();
		return false;
	}
}
// manage_user

function userCheck() {
	if( ! userho.search.value ) {
		alert( missionContentError );
		return false;
	}
}

// category
function searchCheck() {
	var searchValue = document.getElementsByName('src1');
	if(! searchValue.value ){
		alert(missionContentError);
	}
}


//MissionInfomodal
function OnInfoModal() {
	var infoModal = document.getElementById("missionInfoModal");
	infoModal.style.display="block"
}
function CloseInfoModal(){
	var infoModal = document.getElementById("missionInfoModal");
	infoModal.style.display="none";
	document.getElementsByName()
}

//category - 값 입력여부
function searchCheck() {
	var checkKor = /^[0-9ㄱ-ㅎㅏ-ㅣ\x20]*$/gi;
	var checkSpc = /[~!@#$%^&*()_+|<>?:{}]/;
	var regExp = /\s/g;	//띄어쓰기
	if( ! categoryho.src1.value ) {
		alert( missionContentError );
		categoryho.src1.focus();
		return false;
	} else if( checkKor.test(categoryho.src1.value) || checkSpc.test(categoryho.src1.value) || regExp.test(categoryho.src1.value) ) {
		alert( inputTypeError );
		categoryho.src1.focus();
		return false;
	}
	
}
// content - 값 입력여부
function searchCheck1() {
	 if( ! contentho.src1.value ) {
		alert( missionContentError );
		contentho.src1.focus();
		return false;
	}
}
// mission - 값 입력여부
function searchCheck2() {
	 if( ! missionho.src1.value ) {
		alert( missionContentError );
		missionho.src1.focus();
		return false;
	}
}
// report - 값 입력여부
function searchCheck3() {
	 if( ! reportho.src1.value ) {
		alert( missionContentError );
		reportho.src1.focus();
		return false;
	}
}
//message - 값 입력여부
function searchCheck4() {
	 if( ! messageho.src1.value ) {
		alert( missionContentError );
		messageho.src1.focus();
		return false;
	}
}
///////////////////////////////////////////////
//manage_manager 페이지
//managePage - 값 입력여부
function searchCheck5() {
	 if( ! managerho.src1.value ) {
		alert( missionContentError );
		managerho.src1.focus();
		return false;
	}
}
//매니저로그인 
function logincheck1() {
    if(! managerLoginCheck.insertManagerId.value ){
        alert( manageriderror );
        managerLoginCheck.manager_id.focus();
        return false;
    }else if(! managerLoginCheck.insertManagerPasswd.value ){
        alert( managerpasswderror );
        managerLoginCheck.insertManagerPasswd.focus();
        return false;
    }
}
//관리자 비밀번호
function managepasswdcheck() {
	if( ! supermanagerho.managerPasswd.value ) {
		alert( managerpasswderror );
		supermanagerho.managerPasswd.focus();
		return false;
	}
}
