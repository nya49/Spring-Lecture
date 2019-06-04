<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
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
		background-color:#ffffff;
		padding : 10px;
		margin-top:20px;
	}
</style>
</head>
<body>


<div align="center" style="padding-top:20px;">
	<h2>주소록</h2>
	<table width="80%">
		<tr>
			<th>번  호</th>
			<th>이  름</th>
			<th>성  별</th>
			<th>연락처</th>
			<th>생년월일</th>
			<th>주  소</th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr>
			<td>${row.no }</td>
			<td><a href="${path}/address/view.do?name=${row.name}">${row.name}</a></td>
			<td>${row.gender}</td>
			<td>${row.phone}</td>
			<td>${row.birthday}</td>
			<td>${row.address}</td>
		</tr>
		</c:forEach>
	</table>
	<input type="button" value="추가" onclick="location.href='${path}/address/write.do'">
</div>
</body>
</html>