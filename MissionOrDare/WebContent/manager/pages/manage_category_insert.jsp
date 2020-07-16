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
    <script>
        $(document).ready(function () {
            $('#upload').change(function (e) {
                $('#auth_image').attr('src', URL.createObjectURL(e.target.files[0]));
            })
        });
    </script>
    <title>카테고리 추가 모달</title>
</head>
<body>
    <article>
	    <div class="modal-content" onclick="event.cancelBubble=true">
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
	     </div>
    </article>
</body>
</html>
