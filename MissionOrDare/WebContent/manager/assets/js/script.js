var iderror = "아이디를 입력해주세요.";
var passwderror = "비밀번호를 입력해주세요";
var sercherror = "검색어를 입력해주세요";

//로그인
function logincheck() {
    if(! loginform.id.value ){
        alert(iderror);
        loginform.id.focus();
        return false;

    }else if(! loginform.passwd.value ){
        alert(passwderror);
        loginform.passwd.focus();
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