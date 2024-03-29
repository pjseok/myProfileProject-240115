<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/write.js"></script>
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
				<form action="contentModifyOk" name="writeForm">
					<input type="hidden" value="${boardDto.qbnum}" name="qbnum">
					<tr>
					 	<td class="con_text">아 이 디 :</td>
					 	<td><input class="input_box01" type="text" style="background-color:#BCA37F" name = "qbmid" value="${boardDto.qbmid}" readonly="readonly" ></td>
					</tr>
					<tr>
					 	<td class="con_text">이 름 :</td>
					 	<td><input class="input_box01" type="text" style="background-color:#BCA37F" name = "qbname" value="${boardDto.qbname }" readonly="readonly"></td>
					</tr>
					<tr>
					 	<td class="con_text">이 메 일 :</td>
					 	<td><input class="input_box01" type="text" style="background-color:#BCA37F" name = "qbemail" value="${boardDto.qbemail }" readonly="readonly">></td>
					</tr>
					<tr>
						<td class="con_text" >제 목 :</td>
						<td><input class="input_box01"  type="text" name="qbtitle" value="${boardDto.qbtitle }"></td>
					</tr>
					<tr>
						<td class="con_text">내 용 :</td>
						<td>
							<textarea class="btextarea"  rows="10" cols="30" name="qbcontent">${boardDto.qbcontent }</textarea>
						</td>
					</tr>
					<tr>
						<td class="con_text">등록일 :</td>
						<td>
							<input class="input_box01" type="text" style="background-color:#BCA37F" name="qbdate" value="${boardDto.qbdate }" readonly="readonly">
						</td>
					</tr>						
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
					 	<td colspan="2" align="center">
					 		<input class="con_btn01" type="button" value="수정완료" onclick="writeCheck()">&nbsp;&nbsp;
					 		<input class="con_btn01" type="button" value="수정취소" onclick="javascript:history.go(-1)">
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