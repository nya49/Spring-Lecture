<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<%@ include file="../include/header.jsp"%>
<style>
	table { border-top:3px solid #B2CCFF; }
	th { height:40px; border-bottom:1px solid #B2CCFF; width:110px;}
	td { 
		text-align:left; 
		height:40px; 
		border-bottom:1px solid #B2CCFF;
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
	input[type='text']{
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
<div align="center" style="padding-top:20px;">
	<h2>회원등록</h2>
	<form name="form1" method="post" action="${path }/address/insert.do">
		<table width="60%">
				<tr>
				<th>이름</th>
				<td><input name="name" type="text"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" id="radio-one" name="gender" value="남자" /> <label
				for="radio-one">남자</label> <input type="radio" id="radio-two"
				name="gender" value="여자" /> <label for="radio-two">여자</label></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birthday"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address"></td>
			</tr>
		</table>
		<input type="submit" value="등록">&nbsp;&nbsp;<input type="reset" value="취소">
	</form>
</div>
</body>
</html>