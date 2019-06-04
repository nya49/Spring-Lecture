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
			document.form1.action="${path}/member/update.do";
			document.form1.submit();
		});
		
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action="${path}/member/delete.do";
				document.form1.submit();
			}
		});
	})
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp" %>
	<div align="center">
	<h2>회원 정보</h2>
	<form name="form1" method="post" >
		<table width="80%">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userid" value="${dto.userid }" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" type="password" name="passwd" ></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="${dto.name }"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" value="${dto.email }" ></td>
			</tr>
			<tr>
				<th>회원 가입 일자</th>
				<td><fmt:formatDate value="${dto.join_date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
			</tr>
		</table>
		<input type="button" value="수정" id="btnUpdate">
					<input type="button" value="삭제" id="btnDelete">&nbsp;&nbsp;
					<div style="color:red;">${message }</div>
	</form>
</div>
</body>
</html>