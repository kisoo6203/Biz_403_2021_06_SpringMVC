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
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>


<link href="${rootPath}/static/css/main_join.css?ver=2021-07-02-002" rel="stylesheet"/>
<body>
	<h1>Sign Up</h1>
	<h4>WEATHER & OOTD</h4>
	<section id="join_wrap">
		<form
			action="@@@.html"
			method="get">
			<fieldset>
				<table class="joinTable">
					<tr>
						<th class="first"><label for="user_id">ID</label></th>
						<td><input
								type="text"
								id="user_id"
								class="textForm"
								placeholder="ID를 입력..." /> <input
								type="button"
								value="중복확인"
								class="btn" /></td>
					</tr>
					<tr>
						<th><label for="user_pwd">PW</label></th>
						<td><input
								type="password"
								id="user_pwd"
								class="textForm"
								placeholder="비밀번호를 입력..." /></td>
					</tr>
					<tr>
						<th><label for="user_pwd_check">PW(check)</label></th>
						<td><input
								type="password"
								id="user_pwd_check"
								class="textForm"
								placeholder="비밀번호를 재확인..." /></td>
					</tr>
					<tr>
						<th>지역선택</th>
						<td><select
							name="user_country"
							class="textForm">
								<option>선택</option>
								<option>서울</option>
								<option>대전</option>
								<option>대구</option>
								<option>부산</option>
								<option>광주</option>
								<option>경기도</option>
								<option>강원도</option>
								<option>충청북도</option>
								<option>충청남도</option>
								<option>전라북도</option>
								<option>전라남도</option>
								<option>경상북도</option>
								<option>경상남도</option>
						</select></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input class="textForm" /></td>
					</tr>
				</table>
				<button class="btn">가입하기</button>
			</fieldset>
		</form>
	</section>
</body>
<script>
    document.addEventListener("DOMContentLoaded", () => {
      document.querySelector("button").addEventListener("click", (ev) => {
        alert("회원가입을 환영합니다!");
        alert("상세 날씨 페이지로 이동합니다");
        document.location.href =
          "http://127.0.0.1:5501/weather_ootd/logout.html";
      });
    });
    document.addEventListener("DOMContentLoaded", () => {
      document
        .querySelector("select.textForm")
        .addEventListener("change", (ev) => {
          alert("상세주소를 선택해주세요");

          window.open(
            /* 회원가입 팝업창 생성 */

            "popup.html",
            "popup01",
            "width=500, height=400, fullscreen=yes",
            "scrollbars= 0, toolbar=0, menubar=no"
          );
        });
    });
  </script>
</html>
