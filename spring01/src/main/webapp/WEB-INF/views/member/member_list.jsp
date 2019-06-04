<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버리스트 화면</title>
<%@ include file="../include/header.jsp" %>
<style>
	table { border-top:3px solid #B2CCFF; }
	th { height:40px; border-bottom:1px solid #B2CCFF;}
	td { 
		text-align:center; 
		height:40px; 
		border-bottom:1px solid #B2CCFF;
	}
	a { text-decoration:none; color : #000000; }
	a:hover { color:#FF007F; font-weight:bold;}
	input[type='button']{
		border : 2px solid #B2CCFF;
		background-color:#B2CCFF;
		padding : 10px;
		margin-top:20px;
		cursor: pointer;
		text-decoration: none;
		border-radius:10px;
		color:#ffffff;
		font-size:15px;
	}
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>

<div align="center" style="padding-top:20px;">
	<h2>회원 목록</h2>
	<table width="80%">
		<tr>
			<th>아이디</th>
			<th>이  름</th>
			<th>이메일</th>
			<th>가입일</th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr>
			<td>${row.userid}</td>
			<td>
				<a href="${path}/member/view.do?userid=${row.userid}">${row.name}</a>
			</td>
			<td>${row.email}</td>
			<td><fmt:formatDate value="${row.join_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		</c:forEach>
	</table>
	<input type="button" value="회원등록" onclick="location.href='${path}/member/write.do'">
</div>
</body>
</html>