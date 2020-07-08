<%--
  Created by IntelliJ IDEA.
  User: Youngkeun
  Date: 2020-06-29
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="${project}assets/css/manage.css">
    <script src="${project}assets/js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
    <title>미션수정페이지</title>
</head>
<body>
<div class="container">
    <div>
        <%@include file="manage_header.jsp"%>
    </div>
    <div>
        <%@include file="manage_nav.jsp"%>
    </div>
    <article>
        <section class="mission-insert-update">
            <h2>미션수정페이지</h2>
            <form name="mission-updateForm" action="manage_mission_updatePro.do">
            
                <table class="table">
                    <tr>
                    	<th><span>${str_mission_info_id}</span></th>
                        <td>
                        	<input readonly class="form-control" type="text" name="mission_info_id" value="${missionCategoryAndInfoDto.mission_info_id}">
                        </td>
                    </tr>
                    <tr>
                    	<th><span>${str_mission_category}</span></th>
                        <td>
                            <input readonly class="form-control" type="text" name="large_category" value="${missionCategoryAndInfoDto.large_category}">
                        </td>
                        <td>
                        	<input readonly class="form-control" type="text" name="small_category" value="${missionCategoryAndInfoDto.small_category}">
                        </td>
                    </tr>
                    <tr>
                        <th>${str_title}</th>
                        <td colspan="3">
                            <label class="input-label">
                                <input class="form-control" type="text" name="mission_title" value="${missionCategoryAndInfoDto.mission_title}">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td colspan="3">
                            <label class="input-label">
                                <input class="form-control" type="text" name="mission_contents" value="${missionCategoryAndInfoDto.mission_contents}">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>난이도</th>
                        <th>점수</th>
                        <th>종류</th>
                        <th>장소</th>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <select class="form-control" name="mission_level">
                                    <option value="1" selected>1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <input class="form-control" type="number" name="mission_success_score" value="${missionCategoryAndInfoDto.mission_success_score}">
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="mission_challenge">
                                    <option value="1" selected>일반</option>
                                    <option value="2">챌린지</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="mission_local">
                                    <option value="실내" selected>실내</option>
                                    <option value="야외">야외</option>
                                </select>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th class="btn-line" colspan="4">
                            <button class="btn btn-primary" type="submit">수정</button>
                            <button class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/manage_mission.do'">취소</button>
                        </th>
                    </tr>
                </table>
            </form>
        </section>
    </article>
    <div>
        <%@include file="manage_footer.jsp"%>
    </div>
</div>
</body>
</html>
