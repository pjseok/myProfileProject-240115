<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/header.css">
<title>header</title>
</head>
<body>
	
	<table border = "0" cellpadding = "0" cellspacing ="0" widht = "100%">
		<tr class ="headerline">
			<td width = "65%">&nbsp;</td>
			<td width = "4%" align ="center">
				<a href = "index"><span class="menutext">home</span></a>
			</td>
			<c:choose>
				<c:when test="${sessionScope.sessionId eq null}">
					<td width = "3%" align ="center">
						<a href = "login"><span class="menutext">login</span></a>
					</td>
					<td width = "3%" align ="center">
						<a href = "join"><span class="menutext">join</span></a>
					</td>
				</c:when>
				<c:otherwise>
					<td width = "3%" align ="center">
						<a href = "logout"><span class="menutext">logout</span></a>
					</td>
					<td width = "3%" align ="center">
						<a href = "modify"><span class="menutext">modify</span></a>
					</td>
				</c:otherwise>
			</c:choose>
			
			<td width = "3%" align ="center">
				<a href = "#"><span class="menutext">profile</span></a>
			</td>
			<td width = "3%" align ="center">
				<a href = "#"><span class="menutext">board</span></a>
			</td>
			<td width = "3%" align ="center">
				<a href = "#"><span class="menutext">contact</span></a>
			</td>
			<td width = "3%">
				&nbsp;
			</td>
		</tr>
		<tr height="20">
			<td>&nbsp;</td>
		</tr>
	</table>
</body>
</html>