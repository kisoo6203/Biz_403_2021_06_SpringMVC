<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	h1 {
		padding-top:50px;
		padding-bottom: 50px;
		color: brown;
		font-size: 50px;
		text-shadow: 2px 2px 2px;
	}
	body {
		text-align: center;
		background-color: wheat; 
	}
	section {
		display: grid;
		justify-content: center;
	}
	fieldset {
		border-radius: 25px;
		justify-content: left;
		padding: 20px;
		font-size: 20px;
	}
	
</style>
<body>
<h1>내 갤러리</h1>
<section>
<fieldset>
<c:choose>
	<c:when test="${BODY == 'GA_INPUT'}">
		<%@ include file="/WEB-INF/views/gallery/input.jsp" %>
	</c:when>
	<c:when test="${BODY eq 'GA-LIST'}">
		<%@ include file="/WEB-INF/views/gallery/list.jsp" %>
		<a href="${rootPath}/gallery/input">이미지 등록</a>
	</c:when>
	<c:when test="${BODY eq 'GA-DETAIL'}">
		<%@ include file="/WEB-INF/views/gallery/detail.jsp" %>
		<a href="${rootPath}/gallery">리스트로</a>
	</c:when>
	
	<c:otherwise>
		<a href="${rootPath}/gallery/input">이미지 등록</a>
	</c:otherwise>
	
</c:choose>

<c:forEach items="${FILES}" var="FILE">
	<a href="${rootPath}/files/${FILE}" target="_NEW">
	<img src="${rootPath}/files/${FILE}" width="100px" height="100px"/>
	</a>
</c:forEach>
</fieldset>
</section>
</body>
</html>