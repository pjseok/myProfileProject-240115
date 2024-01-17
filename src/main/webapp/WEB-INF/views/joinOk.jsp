<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/join.js"></script>
<style type="text/css"></style>
<title>join</title>
</head>
<body>
	<c:if test="${joinFail == 1}">
		<script type="text/javascript">
			alert('가입하시려는 아이디는 이미 가입된 아이디입니다. 다시 입력해주세요.');
			history.go(-1);
		</script>
	</c:if>
	
	<%@ include file="include/header.jsp" %>
	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="title01">DEVELOPER PJSEOK PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="title02">I'm jinseok park, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<td class="con_box" align="center">
				<table border="0" cellpadding="10" cellspacing="0">
				<form action="joinOk" method="post" name="joinForm">
					<tr>
						<td class="con_text02">
							${memberName }님 회원가입을 축하드립니다!<br>
							가입하신 아이디는 ${memberId } 입니다.<br><br>
							로그인하시면 질문게시판에 글을 쓰실 수 있습니다.
						</td>
					</tr>
					
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align="center">							
							<input class="con_btn01" type="button" value="로그인" onclick="javascript:window.location.href='login'">
						</td>
					</tr>
				</form>
				</table>
			</td>
		</tr>
	</table>
	</center>
	<%@  include file="include/footer.jsp" %>
</body>
</html>