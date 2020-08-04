<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="manager_settings.jsp" %>

    <script>
        $(document).ready(function () {
            $('#upload').change(function (e) {
                $('#auth_image').attr('src', URL.createObjectURL(e.target.files[0]));
            })
        });
    </script>
<body>
	<span class="close"	onclick='CloseCategoryModal()'>&times;</span>
	<form class="category-insert" method="post" name="categoryinsertform" action="manage_category_insertPro.do" enctype="multipart/form-data" accept-charset="UTF-8" onsubmit="return categoryinsertcheck()">
		<ul>
			<li>
				<i class="far fa-plus-square"></i>
			</li>
			<li><label class="title">카테고리 추가</label></li>
			<li>
				<span>대분류</span>
				<input type="text" name="largeCategory" autofocus>
			</li>
			<li>
				<span>소분류</span>
			<input type="text" name="smallCategory">
			</li>
			<li>
				<img id="auth_image" src="${project}images/logo.jpg" alt="auth_image" onclick="document.getElementById('upload').click(); document.getElementById('abc').value=document.getElementById('upload').value">
				<input id="upload" class="file_upload" name="category_image" type="file" accept="image/*, video/*" capture="camera" style="display: none">
			</li>
			<li>
				<input id="abc" type="text" name="abc" style="display:none;">
			</li>
			<li>
				<button class="btn btn-success" type="submit">카테고리 추가</button>
			</li>
		</ul>
	</form>
</body>

