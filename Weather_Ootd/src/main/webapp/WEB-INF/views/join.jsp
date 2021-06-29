<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<style>
body {
	background: linear-gradient(130deg, #7389d0, #eebdc3);
	background-attachment: fixed;
}

h1, h4 {
	/* 상단 로고 부분 */
	color: white;
	text-shadow: 0px 0px 20px rgb(234, 237, 176);
}

h1 {
	text-align: center;
	font-size: 70px;
	height: 50px;
}

h4 {
	font-size: 28px;
	text-align: center;
}

section {
	/* 개인정보 등록하는 부분을 감싼 옅은 선 */
	display: grid;
	justify-items: center;
}

fieldset {
	/* 개인정보 등록하는 부분을 감싼 옅은 선 */
	border-radius: 20px;
	display: grid;
	justify-items: center;
}


section label {
	/* input박스 위치정렬 */
	display: inline-block;
	width: 30%;
}

section input {
	/* input박스 크기수정 */
	width: 60%;
	margin: 4px 5px;
	padding: 4px 5px;
	border-radius: 5px;
	outline: 0;
}

section input:hover {
	background-color: rgb(187, 187, 187);
}

select {
	/* 성별,지역선택 box크기 수정 */
	padding: 2px;
	width: 64%;
	border-radius: 6px;
}

select:hover {
	background-color: rgb(187, 187, 187);
	cursor: pointer;
}

div.as {
	/* 칼럼별 글씨크기 */
	color: white;
	font-weight: 900;
}

p {
	color: red;
	text-align: center;
}

button {
	text-align: right;
	border-radius: 10px;
}

button:hover {
	background-color: rgb(187, 187, 187);
	cursor: pointer;
}
</style>
<body>
	<h1>Sign Up</h1>
	<h4>WEATHER & OOTD</h4>
	<section>
		<fieldset>
			<div class="as">
				<div class="ad">
					<label>ID </label><input type="text" />
				</div>
				<button class="ff">중복확인</button>
				<div class="ad">
					<label>PW </label><input type="password" />
				</div>
				<div class="ad">
					<label>PW(check) </label><input type="password" />
				</div>

				<table></table>
				<div class="af">
					<label> 지역선택 </label> <select id="city">
						<option value="1">선택</option>
						<option value="1">서울특별시</option>
						<option value="1">대전광역시</option>
						<option value="1">대구광역시</option>
						<option value="1">부산광역시</option>
						<option value="1">광주광역시</option>
						<option value="1">인천광역시</option>
						<option value="1">울산광역시</option>
						<option value="1">세종시</option>
						<option value="1">경기도</option>
						<option value="1">강원도</option>
						<option value="1">충청북도</option>
						<option value="1">충청남도</option>
						<option value="1">전라북도</option>
						<option value="1">전라남도</option>
						<option value="1">경상북도</option>
						<option value="1">경상남도</option>
						<option value="1">제주도</option>
					</select>
				</div>
				<div class="ad">
					<label>상세주소</label><input name="addr" />
				</div>
				<p>(상세주소를 확인해주세요)</p>
			</div>
			<button>가입하기</button>
		</fieldset>
	</section>
</body>
<script>
    document.addEventListener("DOMContentLoaded", () => {
      document.querySelector("button").addEventListener("click", (ev) => {
        alert("회원가입을 환영합니다!");
        alert("상세 날씨 페이지로 이동합니다");
        document.location.href =
          "http://127.0.0.1:5501/weather_ootd/logout_001.html";
      });
    });
    document.addEventListener("DOMContentLoaded", () => {
      document.querySelector("select#city").addEventListener("change", (ev) => {
        alert("지역구를 선택해주세요");

        window.open(
          /* 회원가입 팝업창 생성 */

          "popup_001.html",
          "popup01",
          "width=500, height=500, fullscreen=yes",
          "scrollbars= 0, toolbar=0, menubar=no"
        );
      });
    });
  </script>
</html>