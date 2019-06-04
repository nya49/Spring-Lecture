<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<%@ include file="../include/header.jsp" %>
<style>
	table { border-top:3px solid #B2CCFF; }
	th { height:40px; border-bottom:1px solid #B2CCFF; width:110px;}
	td { 
		text-align:left; 
		height:40px; 
		border-bottom:1px solid #B2CCFF;
		padding-left:15px;
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
	input[type='text']{
		align:left;
		padding:5px;
		border: none;
		width:95%;
		height:20px;
	}
	input[type='text']:hover{
		align:left;
		padding:5px;
		border: 1px solid #B2CCFF;
		width:95%;
		height:20px;
		border-radius:3px;
	}
</style>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		document.form1.action="${path}/address/update.do";
		document.form1.submit();
	});
	
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
		document.form1.action="${path}/address/delete.do";
		document.form1.submit();
		}
	});	
});
</script>

</head>
<body>
	<div align="center" style="padding-top:20px;">
	<h2>회원 정보</h2>
	<form name="form1" method="post">
		<table width="60%">
			<tr>
				<th>이름</th>
				<td><input type="text" value=${dto.name } name="name" readonly></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${dto.gender }</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" value=${dto.phone } name="phone"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" value=${dto.birthday } name="birthday"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" value="${dto.address }" name="address" maxlength="100"></td>
			</tr>
		</table>
		<input type="button" value="수정" id="btnUpdate">&nbsp;&nbsp;
		<input type="button" value="삭제" id="btnDelete">
	</form>
	</div>
</body>
</html>