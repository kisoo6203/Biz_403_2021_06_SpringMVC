<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/include_head.jspf"%>
<body>
	<%@ include file="/WEB-INF/views/include/include_header.jspf"%>
	<h1 class="page_title">저자정보</h1>
	<section class="main_sec">
		<table>
			<tr>
				<th>코드</th>
				<th>저자명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>주요장르</th>
			</tr>
			<!-- 
			choose의 기본형
			<c:choose>
				<c:when test="">
				
				</c:when>
				<c:otherwise>
				
				</c:otherwise>
			</c:choose>
			 -->
			
			<!-- 
			<c:when test="${empty AUTH-LIST}">
			AUTH-LIST 로 하면
			계산식에 의해 java는 연산으로 받아들인다
			= AUTH 마이너스 LIST로 받아들임
			 -->
			<c:choose>
				<c:when test="${empty AUTHORS}">
					<tr><td colspan="5">데이터가 없습니다</td></tr>					
				</c:when>
				<c:otherwise>
					<c:forEach items="${AUTHORS}" var="AUTHOR">
						<tr>
							<td>${AUTHOR.au_code}</td>
							<td>${AUTHOR.au_name}</td>
							<td>${AUTHOR.au_tel}</td>
							<td>${AUTHOR.au_addr}</td>
							<td>${AUTHOR.au_genre}</td>
						</tr>		
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
		</table>

		<div class="btn_box">
			<button class="btn_insert author">저자등록</button>
		</div>
	</section>
	<%@ include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
<script>
document.querySelector("button.btn_insert.author").addEventListener("click",()=>{
	location.href = "${rootPath}/author/insert";
});
</script>
</html>