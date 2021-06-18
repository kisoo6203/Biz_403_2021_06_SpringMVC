<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 입력</title>
</head>
<body>
	<h1>학생 정보 등록</h1>
	<section>
		<form method="POST">
		<fieldset>
			<legend>학생 정보</legend>
			<div>
				<input name="st_num" id="st_num">
				<input name="st_name" id="st_name">
				<input name="st_dept" id="st_dept">
				<input name="st_grade" id="st_grade">
				
			</div>
			<div class="btn_box">
				<button type="button" class="btn_save">등록</button>
			</div>
		</fieldset>
		</form>
	</section>
</body>
</html>