<%@page import="board.BoardDataBean"%>
<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp" %>
<link href="${project}style.css" type="text/css" rel="stylesheet">
<script src="${project}script.js"></script>

<h2> ${page_modify} </h2>

<c:if test="${passwd eq boardDto.passwd}">
	<form method="post" action="modifyPro.do"
		name="modifyform" onsubmit="return modifycheck()">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="num" value="${num}">
		<table>
			<tr>
				<th colspan="2"> ${msg_modify} </th>			
			</tr>	
			<tr>
				<th> ${str_writer} </th>
				<td> ${boardDto.writer} </td>
			</tr>
			<tr>
				<th> ${str_email} </th>
				<td>
					<c:if test="${boardDto.email eq null}">
						<input class="input" type="text" name="email" maxlength="50"
							autofocus>
					</c:if>
					<c:if test="${boardDto.email ne null}">
						<input class="input" type="text" name="email" maxlength="50"
							value="${boardDto.email}" autofocus>
					</c:if>
				</td>
			</tr>
			<tr>
				<th> ${str_subject} </th>
				<td>
					<input class="input" type="text" name="subject"
						maxlength="150" value="${boardDto.subject}"> 
				</td>
			</tr>
			<tr>
				<th> ${str_content} </th>
				<td>
					<textarea rows="10" cols="39" name="content">${boardDto.content}</textarea>
				</td>
			</tr>
			<tr>
				<th> ${str_passwd} </th>
				<td>
					<input class="input" type="password" name="passwd" maxlength="30"
						value="${boardDto.passwd}">
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="${btn_mod}">
					<input class="inputbutton" type="reset" value="${btn_cancel}">
					<input class="inputbutton" type="button" value="${btn_mod_cancel}"
						onclick="location='list.do?pageNum=${pageNum}'">
				</th>
			</tr>
		</table>	
	</form>
</c:if>
<c:if test="${passwd ne boardDto.passwd}">	
	<script type="text/javascript">
		<!--
		erroralert( repasswderror );
		//-->
	</script>
</c:if>









	























