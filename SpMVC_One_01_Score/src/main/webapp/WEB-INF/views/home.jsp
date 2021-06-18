<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
body {
	background-image:url(""); 
}
h1 {
	width: 100%;
	text-align: center;
	border: 1px solid red;
	top: 0;
	left : 0;
	padding: 30px;
	background-color: wheat;
}

ul {
	list-style: none;
	display: flex;
	padding: 8px 20px;
	border: 1px solid blue;
	background-color: rgb(190, 136, 92);
}
li {
	border: 1px solid green;
	padding: 4px 5px;
}
ul li:hover {
	cursor: pointer;
}
ul li:nth-last-child(1) {
	margin-left: auto;
}
table {
	border: 1px solid green;
	border-spacing: 5px;
	
	width: 100%;
}
tr.in{
	border: 1px solid green;
	
}
tr.input {
	border-spacing: 0;
}
tr.input:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<header>
		<h1>대한 고교 성적처리 2021 v1</h1>
	</header>
	<ul>
		<li>Home</li>
		<li>학생정보</li>
		<li>성적일람표</li>
		<li>로그인</li>
	</ul>
	<table>
	<tr class="in">
		<th>학번</th>
		<th>이름</th>
		<th>전공</th>
		<th>학년</th>
		<th>응시과목</th>
		<th>총점</th>
		<th>평균</th>
	</tr>
	<tr class="input">
		<th>20210001</th>
		<th>홍길동</th>
		<th>컴퓨터공학</th>
		<th>2</th>
		<th>3</th>
		<th>175</th>
		<th>91.6</th>
	</table>
	
</body>
</html>