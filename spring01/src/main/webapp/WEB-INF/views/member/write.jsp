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
	th { height:40px; border-bottom:1px solid #B2CCFF; width:150px;}
	td { 
		text-align:center; 
		height:40px; 
		border-bottom:1px solid #B2CCFF;
		text-align:left;
		padding-left:15px;
	}
	a { text-decoration:none; color : #000000; }
	a:hover { color:#FF007F; font-weight:bold;}
	input[type='submit'], [type='reset']{
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
	input[type='text'], [type='password']{
		align:left;
		padding:5px;
		border: 1px solid #B2CCFF;
		width:95%;
		height:20px;
		border-radius:3px;
	}
</style>
</head>
<body>
	<%@ include file="../include/menu.jsp" %>
	<div align="center">
	<h2>회원 등록 폼</h2>
	<form name="form1" method="post" action="${path}/member/insert.do">
		<table width="80%">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userid" ></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="passwd" ></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" ></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" ></td>
			</tr>
		</table>
		<input type="submit" value="가입">&nbsp;&nbsp;
		<input type="reset" value="취소">
	</form>
	</div>
</body>
</html>