<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ include file="pages/manager_settings.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
로그인 하세연
<form name="loginform" action="${pageContext.request.contextPath}/manage_loginPro.do" onsubmit="return logincheck()">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="manager_id"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="manager_passwd"></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="로그인">
				<input type="button" value="취소" onclick="location.href='index.do'">
			</th>
		</tr>
	</table>
</form>
</body>
</html>