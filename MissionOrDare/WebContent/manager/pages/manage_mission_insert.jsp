<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>


<body>
<span class="close" onclick='CloseMissionInsertModal()'>&times;</span>
  <form class="mission-insert" method="post" action="manage_mission_insertPro.do" name="missioninsertForm"
	onsubmit="return missioninsertcheck()">
	<ul>
		<li>
			<i class="far fa-plus-square"></i>
		</li>
		<li><span class="title">미션추가</span></li>
		<li class="category-line">
			<select class="form-control" name="largecategory">
				<option value="">${str_category_bigsorting}</option>
				<c:forEach var="missionLargeCategory" items="${missionLargeCategorys}">
					<option value="${missionLargeCategory.large_category}">${missionLargeCategory.large_category}</option>
				</c:forEach>
			</select>
			<select class="form-control" name="smallcategory">
				<option value="">${str_category_smallsorting}</option>
			</select>
		</li>
		<li>
			<label>${str_title}</label>
			<input class="form-control" type="text" name="missiontitle">
		</li>
		<li>
			<label>${str_mission_content}</label>
			<input class="form-control" type="text" name="missioncontent">
		</li>
		<li>
			<label>난이도</label>
			<select class="form-control" name="missionlevel">
				<option value="1"selected >1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
		</li>
		<li>
			<label>점수</label>
			<input class="form-control" type="number" name="missionscore">
		</li>
		<li>
			<label>종류</label>
			<select class="form-control" name="missionchallenge">
				<option value="1" selected>일반</option>
				<option value="2">챌린지</option>
			</select>
		</li>
		<li>
			<label>장소</label>
			<select class="form-control" name="missionlocal">
				<option value="실내"selected>실내</option>
				<option value="야외">야외</option>
			</select>
		</li>
		<li>
			<button class="btn btn-primary" type="submit">미션추가</button>
		</li>
	</ul>
  </form>
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

