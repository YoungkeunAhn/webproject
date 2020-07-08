<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>메시지 삭제 페이지</title>
</head>
<body>
	<c:if test="${result eq 0}">
		<script type="text/javascript">
			<!--
			alert("실패했습니다.");
			history.back();
			//-->
		</script>
	</c:if>
	<c:if test="${result ne 0}">
		<script type="text/javascript">
			<!--
			alert("삭제되었습니다.");
			//-->			
		</script>
		<meta http-equiv="refresh" content="0;url=manage_content_info.do?success_board_id=${joinMissionInfoSuccessBoardDto.success_board_id}">
	</c:if>
</body>
</html>