var iderror = "아이디를 입력해주세요.";
var passwderror = "비밀번호를 입력해주세요";
var sercherror = "검색어를 입력해주세요";
var messageerror = "메시지좀 입력해봐바";
var categorybigerror = "대분류를 입력해봐용^{}^";
var categorysmallerror = "소분류를 입력해봐용^*^";
var missiontitleerror = "제목을 입력해주라좀~~";
var missionContentError = "내용을 입력하세요";
var missionlargecategoryerror = "대분류를 선택해주세요";
var missionsmallcategoryerror = "소분류를 선택해주세요";
var missionscoreerror = "점수를 입력해주세요";
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
function searchcheck() {
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
	if( ! categoryinsertform.largeCategory.value ) {
		alert( categorybigerror );
		categoryinsertform.largeCategory.focus();
		
		return false;
	} else if( ! categoryinsertform.smallCategory.value ) {
		alert( categorysmallerror );
		categoryinsertform.smallCategory.focus();
		return false;
	}
}
// mission_insert
function missioninsertcheck() {
	if( ! missioninsertForm.missiontitle.value ) {
		console.log("aaa");
		alert( missiontitleerror );
		missioninsertForm.missiontitle.focus();
		return false;
	} else if( ! missioninsertForm.missioncontent.value ) {
		alert( missionContentError );
		missioninsertForm.missioncontent.focus();
		return false;
	} else if( missioninsertForm.largecategory.value=="" ) {
		alert( missionlargecategoryerror );
		return false;
	} else if( missioninsertForm.smallcategory.value=="" ) {
		alert( missionsmallcategoryerror );
		return false;
	} else if( ! missioninsertForm.missionscore.value ) {
		alert( missionscoreerror );
		missioninsertForm.missionscore.focus();
		return false;
	}
}