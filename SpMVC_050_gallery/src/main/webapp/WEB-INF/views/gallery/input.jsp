<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib
	uri="http://java.sun.com/jsp/jstl/core"
	prefix="c"%>
<c:set
	var="rootPath"
	value="${pageContext.request.contextPath}" />

<form
	method="POST"
	enctype="multipart/form-data">
	<style>
div {
	padding: 15px;
}

input {
	padding: 5px;
	border-radius: 5px;
}

button {
	border-radius: 5px;
}

button:hover {
	cursor: pointer;
}

@keyframes sparkle {
  from {
    background-position: 0% 100%;
  }
  to {
    background-position: 200% 100%;
  }
}
body {
  padding: 60px;
  
  min-height: 100vh;
    animation: sparkle 4s infinite linear;
  background: linear-gradient(45deg, #7FEFBD 0%, #FFF689 11%, #EC0B43 22%, #7FEFBD 33%, #FFF689 44%, #EC0B43 55%, #7FEFBD 66%, #FFF689 77%, #EC0B43 88%, #7FEFBD 100%);
  background-size: 300% 100%;
  content: "";
  
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border-radius: 4px;
  
  z-index: -1;
  transform: scale(0.99) translateY(3px);
}
.test {
  background: white;
  display: inline-block;
  padding: 1em;
  border-radius: 20px;
  position: relative;
}
.test:before {
  animation: sparkle 4s infinite linear;
  background: linear-gradient(90deg, #7FEFBD 0%, #FFF689 11%, #EC0B43 22%, #7FEFBD 33%, #FFF689 44%, #EC0B43 55%, #7FEFBD 66%, #FFF689 77%, #EC0B43 88%, #7FEFBD 100%);
  background-size: 300% 100%;
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border-radius: 4px;
  filter: blur(3px);
  z-index: -1;
  transform: scale(0.99) translateY(3px);
}
</style>
	<div class="test">
		<label>작성자</label>
		<input
			name="g_writer"
			value="${CMD.g_writer}">
	</div>
	<div class="test">
		<label>작성일자</label>
		<input
			name="g_date"
			value="${CMD.g_date}">
	</div>
	<div class="test">
		<label>작성시각</label>
		<input
			name="g_time"
			value="${CMD.g_time}">
	</div>
	<div class="test">
		<label>제목</label>
		<input name="g_subject">
	</div>
	<div class="test">
		<label>내용</label>
		<textarea name="g_content"></textarea>
	</div>

	<div class="test">
		<label>대표이미지</label>
		<input
			type="file"
			name="one_file" />
	</div>
	<div class="test">
		<label>갤러리</label>
		<input
			type="file"
			multiple="multiple"
			name="m_file" />
	</div>
	<button>전송</button>

</form>