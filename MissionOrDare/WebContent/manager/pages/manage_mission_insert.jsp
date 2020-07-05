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
    <title>미션입력페이지</title>
</head>
<body>
    <article>
	    <div class="modal-content" style="background:#c6eced; width:65%; height:69%;">
	    	<span class="close" onclick='CloseMissionInsertModal()'>&times;</span>
	        <section class="mission-insert-update" style="margin:unset;">
	            <h2>미션추가페이지</h2>
	            <form method="post" action="manage_mission_insertPro.do" name="missioninsertForm"
	            	onsubmit="return missioninsertcheck()">
	                <table class="table">
	                    <tr>
	                        <th><span>카테고리</span></th>
	                        <td colspan="3"></td>
	                    </tr>
	                    <tr>
	                        <td>
	                            <label>
	                                <select class="form-control" name="largecategory">
	                                    <option value="">${str_category_bigsorting}</option>
	                                    <c:forEach var="missionLargeCategory" items="${missionLargeCategorys}">
	                                  	  <option value="${missionLargeCategory.large_category}">${missionLargeCategory.large_category}</option>
	                                    </c:forEach>
	                                </select>
	                            </label>
	                        </td>
	                        <td>
	                            <label>
	                                <select class="form-control" name="smallcategory">
	                         	           <option value="">${str_category_smallsorting}</option>
	                                </select>
	                            </label>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>${str_title}</th>
	                        <td colspan="3">
	                            <label class="input-label">
	                                <input class="form-control" type="text" name="missiontitle">
	                            </label>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>${str_mission_content}</th>
	                        <td colspan="3">
	                            <label class="input-label">
	                                <input class="form-control" type="text" name="missioncontent">
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
	                                <select class="form-control" name="missionlevel">
	                                    <option value="1"selected >1</option>
	                                    <option value="2">2</option>
	                                    <option value="3">3</option>
	                                </select>
	                            </label>
	                        </td>
	                        <td>
	                            <label>
	                                <input class="form-control" type="number" name="missionscore">
	                            </label>
	                        </td>
	                        <td>
	                            <label>
	                                <select class="form-control" name="missionchallenge">
	                                    <option value="1" selected>일반</option>
	                                    <option value="2">챌린지</option>
	                                </select>
	                            </label>
	                        </td>
	                        <td>
	                            <label>
	                                <select class="form-control" name="missionlocal">
	                                    <option value="실내"selected>실내</option>
	                                    <option value="야외">야외</option>
	                                </select>
	                            </label>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th class="btn-line" colspan="4">
	                            <input class="btn btn-primary" type="submit" value="추가">
	                            <input class="btn btn-danger" value="닫기" onclick="CloseMissionInsertModal()">
	                        </th>
	                    </tr>
	                </table>
	            </form>
	        </section>
	    </div>    
    </article>
    <script type="text/javascript">
		//<!--
			$(document).ready(function() {
				$('select[name=largecategory]').on('change', function(event) {
					$.ajax(
						{
							type :'post',
							url : 'categorycheck.do',
							data : {
								largecategory : $('select[name=largecategory]').val()
							},
							dataType : 'text',
							success : function(data) {
								$("select[name=smallcategory]").find("option").remove().end().append("<option value=''>${str_category_smallsorting}</option>");
								data = eval('(' + data +')');
								for(var i=0; i<data.smallCategorys.length; i++){
								    $('select[name=smallcategory]').append("<option value='"+data.smallCategorys[i].smallCategory+"'>"+data.smallCategorys[i].smallCategory+"</option>");
								}
							},
							error : function (request,status,error) {
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							}
						}		
					);
				});
			});
		//-->
	</script>
</body>
</html>
