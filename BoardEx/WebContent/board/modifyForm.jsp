<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp" %>
<link href="${project}style.css" type="text/css" rel="stylesheet">
<script src="${project}script.js"></script>

<h2> ${page_modify}</h2>

<form method="post" action="modifyView.do" name="passwdform"
	onsubmit="return passwdcheck()">	
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="num" value="${num}">
	<table>
		<tr>
			<th colspan="2"> ${msg_passwd} </th>
		</tr>
		<tr>
			<th> ${str_passwd} </th>	
			<td>
				<input class="input" type="password" name="passwd" 
					maxlength="30" autofocus>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input class="inputbutton" type="submit" value="${btn_mod}">
				<input class="inputbutton" type="button" value="${btn_mod_cancel}"
					onclick="location='list.do?pageNum=${pageNum}'">
			</th>
		</tr>		
	</table>
</form>











