<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/login.js"></script>
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
			<td class="con_box" align="center">
				<table border="0" cellpadding="10" cellspacing="0">
					<tr>
						<td class="con_text02">
						안녕하세요 Web Application 백엔드 개발자 박진석입니다.<br>
						보시고 계신 페이지는 Spring Boot Framework으로 개발되었습니다.<br>
						웹 어플리케이션 개발 관련하여 궁금하신 점은 question 질문 게시판을 이용해주세요
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