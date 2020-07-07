<%@ page language="java" contentType="text/html;charset=UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:set var="project" value="/MissionOrDare/manager/"/>

<!-- Header -->
<c:set var="str_header_mod" value="Mission or Dare"/>
<c:set var="str_header_login" value="로그인"/>
<c:set var="str_header_logout" value="로그아웃"/>
<!-- 인덱스 -->
<c:set var="str_managerlogin" value="관리자로그인"/>
<c:set var="str_mission" value="미션관리"/>
<c:set var="str_board" value="게시글관리"/>
<c:set var="str_user" value="유저관리"/>
<c:set var="str_category" value="카테고리관리"/>
<c:set var="str_report" value="신고관리"/>
<c:set var="str_message" value="쪽지관리"/>
<c:set var="str_search" value="검색"/>
<c:set var="str_number" value="번호"/>
<c:set var="str_delete" value="삭제"/>
<c:set var="str_title" value="제목"/>
<c:set var="str_modify" value="수정"/>


<!-- 미션 -->
<c:set var="str_mission_info_id" value="미션 ID"/>
<c:set var="str_mission_category" value="카테고리"/>
<c:set var="str_mission_title" value="미션제목"/>
<c:set var="str_mission_content" value="내용"/>
<c:set var="str_mission_avg" value="미션평점"/>

<!-- 게시글 -->
<c:set var="str_content_writer" value="작성자"/>
<c:set var="str_content_title" value="제목"/>
<c:set var="str_content_views" value="조회수"/>
<c:set var="str_content_like" value="좋아요"/>
<c:set var="str_content_writedate" value="작성일"/>

<!-- 유저관리 -->
<c:set var="str_user_search" value="유저조회하기"/>
<c:set var="str_user_kakaoId" value="카카오톡 이메일"/>
<c:set var="str_user_passwd" value="비밀번호"/>
<c:set var="str_user_gender" value="성별"/>
<c:set var="str_user_sign_up_date" value="생년월일"/>
<c:set var="str_user_nickname" value="닉네임"/>
<c:set var="str_user_location" value="지역"/>
<c:set var="str_user_job" value="직업"/>
<c:set var="str_user_score" value="점수"/>
<c:set var="str_user_interesting" value="관심사"/>
<c:set var="str_user_joindate" value="가입날짜"/>
<c:set var="str_user_withdrawal_date" value="탈퇴날짜"/>
<c:set var="str_user_interesting1" value="관심분야 1"/>
<c:set var="str_user_interesting2" value="관심분야 2"/>
<c:set var="str_user_interesting3" value="관심분야 3"/>
<c:set var="str_user_interesting4" value="관심분야 4"/>
<c:set var="str_user_findinfo" value="유저정보조회"/>
<c:set var="str_user_userdetail" value="유저상세보기"/>


<!-- 신고관리 -->
<c:set var="str_report_selectoption" value="신고 유형"/>
<c:set var="str_report_selectoption1" value="욕설, 비방, 차별, 혐오"/>
<c:set var="str_report_selectoption2" value="홍보, 영리목적"/>
<c:set var="str_report_selectoption3" value="불법정보"/>
<c:set var="str_report_selectoption4" value="음란, 청소년유해"/>
<c:set var="str_report_selectoption5" value="도배, 스팸"/>
<c:set var="str_report_selectoption6" value="기타"/>
<c:set var="str_report_category" value="신고카테고리"/>
<c:set var="str_report_type" value="신고유형"/>
<c:set var="str_report_usernickname" value="신고자 닉네임"/>
<c:set var="str_report_reportdate" value="신고날짜"/>
<c:set var="str_report_processState" value="처리상태"/>

<!-- 쪽지관리 -->
<c:set var="str_message_search" value="유저조회하기"/>
<c:set var="str_message_sender" value="보낸이"/>
<c:set var="str_message_receiver" value="받는이"/>
<c:set var="str_message_checkbox" value="체크박스"/>
<c:set var="str_message_content" value="메시지내용"/>
<c:set var="str_message_senddate" value="보낸날짜"/>
<c:set var="str_message_message" value="메시지"/>
<c:set var="str_message_sendmessage" value="메시지보내기"/>
<c:set var="str_message_messagedelete" value="메시지삭제"/>

<!-- 카테고리 관리 -->
<c:set var="str_category_categoryadd" value="카테고리추가"/>
<c:set var="str_category_categoryId" value="카테고리 아이디"/>
<c:set var="str_category_bigsorting" value="대분류"/>
<c:set var="str_category_smallsorting" value="소분류"/>
<c:set var="str_category_missionadd" value="미션추가"/>







