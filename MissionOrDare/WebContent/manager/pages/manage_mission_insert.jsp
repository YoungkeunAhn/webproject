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
    <title>미션입력페이지</title>
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
            <h2>미션추가페이지</h2>
            <form name="mission-insertForm">
                <table class="table">
                    <tr>
                        <th><span>카테고리</span></th>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <select class="form-control" name="large-category">
                                    <option selected>대분류</option>
                                    <option>미술</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="small-category">
                                    <option selected>소분류</option>
                                    <option>그리기</option>
                                </select>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td colspan="3">
                            <label class="input-label">
                                <input class="form-control" type="text" name="mission-title">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td colspan="3">
                            <label class="input-label">
                                <input class="form-control" type="text" name="mission-content">
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
                                <select class="form-control" name="mission-level">
                                    <option selected>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <input class="form-control" type="number" name="misson-score">
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="mission-challenge">
                                    <option selected>일반</option>
                                    <option>챌린지</option>
                                </select>
                            </label>
                        </td>
                        <td>
                            <label>
                                <select class="form-control" name="mission-local">
                                    <option selected>실내</option>
                                    <option>야외</option>
                                </select>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th class="btn-line" colspan="4">
                            <button class="btn-primary" type="submit">추가</button>
                            <button class="btn-danger" onclick="location.href='${pageContext.request.contextPath}/manage_mission.do'">취소</button>
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
