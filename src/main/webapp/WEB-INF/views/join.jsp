<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css"> 
<style type="text/css"></style>
<title>join</title>
</head>
<body>
	<%@  include file="include/header.jsp" %>
	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align = "center"> 
				<span class="title01">DEVELOPER PJSEOK PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align = "center">
				<span class="title02">I'm jinseok park, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<td class="con_box">
				<table border="0" cellpadding="10" cellspacing="0">
					<tr>
					 	<td class="con_text">아 이 디 :</td>
					 	<td><input class="input_box01" type="text" name = "mid"></td>
					</tr>
					<tr>
					 	<td class="con_text">비밀번호 :</td>
					 	<td><input class="input_box01" type="password" name = "mpw"></td>
					</tr>
					<tr>
					 	<td class="con_text">비밀번호확인 :</td>
					 	<td><input class="input_box01" type="password" name = "mpw_check"></td>
					</tr>
					<tr>
					 	<td class="con_text">이 름 :</td>
					 	<td><input class="input_box01" type="text" name = "mname"></td>
					</tr>
					<tr>
					 	<td class="con_text">이 메 일 :</td>
					 	<td><input class="input_box01" type="text" name = "memail"></td>
					</tr>
					<tr>
					 	<td colspan="2" align="center">
					 		<input class="con_btn01" type = "button" value="가입완료" onclick="">&nbsp;&nbsp;
					 		<input class="con_btn01" type = "button" value="로그인" onclick="javascript:window.location.href='login'">
					 	</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</center>
	<%@  include file="include/footer.jsp" %>
</body>
</html>