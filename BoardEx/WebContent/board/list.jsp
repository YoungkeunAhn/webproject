<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDataBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<link href="${project}style.css" type="text/css" rel="stylesheet">

<h2> ${page_list} ( ${str_cnt} : ${cnt} ) </h2>

<table>
	<tr>
		<td colspan="6" align="right">
			<a href="writeForm.do">${str_write}</a>&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<th style="width: 8%"> ${str_number} </th>
		<th style="width: 40%"> ${str_subject} </th>
		<th style="width: 10%"> ${str_writer} </th>
		<th style="width: 20%"> ${str_reg_date} </th>
		<th style="width: 9%"> ${str_readcount} </th>
		<th style="width: 15%"> ${str_ip} </th>
	</tr>
	<c:if test="${cnt eq 0}">
		<tr>
			<td colspan="6" align="center">
				${msg_list_x}
			</td>
		</tr>
	</c:if>			
	<c:if test="${cnt ne 0}">			
		<c:forEach var="boardDto" items="${boardDtos}">			
			<tr>
				<td align="center">
					${number}
					<c:set var="number" value="${number-1}"/>
				</td>
				<td>
					&nbsp;
					<c:if test="${boardDto.re_level gt 1}">
						<c:set var="wid" value="${ (boardDto.re_level -1) * 10}"/>
							<img src="${project}images/level.gif" border="0" width="${wid}" height="15">
					</c:if>							
					<c:if test="${boardDto.re_level gt 0}">
							<img src="${project}images/re.gif" border="0" width="20" height="15">
					</c:if>					
					<a href="content.do?pageNum=${pageNum}&num=${boardDto.num}&number=${number+1}">
						${boardDto.subject}
					</a>
				</td>
				<td align="center">
					${boardDto.writer}
				</td>
				<td align="center">
					<fmt:formatDate value="${boardDto.reg_date}" type="both"
						pattern="yyyy-MM-dd HH:mm"/>
				</td>
				<td align="center">
					${boardDto.readcount}
				</td>
				<td align="center">
					${boardDto.ip}
				</td>
			</tr>
		</c:forEach>				
	</c:if>	
</table>
<br>
<c:if test="${cnt gt 0}">
	<c:if test="${startPage gt pageBlock}">
		<a href="list.do">[◀◀]</a>
		<a href="list.do?pageNum=${startPage-pageBlock}">[◀]</a>
	</c:if>
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<c:if test="${i eq currentPage}"> 
			<b>[${i}]</b>				
		</c:if>
		<c:if test="${i ne currentPage}">
			<a href="list.do?pageNum=${i}">[${i}]</a>				
		</c:if>
	</c:forEach>	
	<c:if test="${pageCount gt endPage}">
		<a href="list.do?pageNum=${startPage+pageBlock}">[▶]</a>
		<a href="list.do?pageNum=${pageCount}">[▶▶]</a>		
	</c:if>
</c:if>















