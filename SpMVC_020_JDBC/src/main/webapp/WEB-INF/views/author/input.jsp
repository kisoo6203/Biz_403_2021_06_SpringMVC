<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/include_head.jspf"%>
<style>
form {
	width: 80%;
	margin: 15px auto;
}

fieldset {
	border: 1px solid grey;
	border-radius: 15px;
}

legend {
	text-align: center;
	padding: 10px 20px;
	background-color: #aaa;
}

form div {
	width: 80%;
	margin: 5px auto;
}

form label {
	display: inline-block;
	width: 20%;
	text-align: right;
	margin: 4px 5px;
	padding: 8px;
	color: white;
	font-weight: bold;
}

form input {
	width: 70%;
	margin: 4px 5px;
	padding: 8px 12px;
	border-radius: 25px;
	outline: 0;
	border-color: grey;
}

form input:focus {
	border-color: #999;
}

form input:hover {
	background-color: #ddd;
}
</style>
<body>
	<%@ include file="/WEB-INF/views/include/include_header.jspf"%>
	<section class="main_sec">
	<form method="POST">
		<fieldset>
			<legend>저자정보</legend>
			<div>
				<label>CODE</label> <input name="au_code" id="au_code"
					placeholder="">
			</div>
			<div>
				<label>저자명</label> <input name="au_name" id="au_name"
					placeholder="">
			</div>
			<div>
				<label>전화번호</label> <input name="au_tel" id="au_tel" type="tel"
					placeholder="">
			</div>
			<div>
				<label>주소</label> <input name="au_addr" id="au_addr"
					placeholder="">
			</div>
			<div>
				<label>주요장르</label> <input name="au_genre" id="au_genre"
					placeholder="">
			</div>
		</fieldset>
		<div class="btn_box">
			<button type="button" class="btn_save author">저장</button>
			<button type="reset" class="btn_reset author">새로작성</button>
			<button type="button" class="btn_list author">리스트로</button>
		</div>
	</form>
	</section>
	<%@ include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
<script>
document.querySelector("button.btn_book_insert").addEventListener("click",()=>{
	location.href = "${rootPath}/books/insert";
});
</script>
</html>