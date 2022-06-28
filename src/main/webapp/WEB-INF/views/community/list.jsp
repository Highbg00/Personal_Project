<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="list-top">
		<form action="list.bo" method="post">
		<input type="hidden" name="curPage" value="1"/>
		<input type="hidden" name="id"/>
		<p>게시판</p>
		<table>
			<thead>
				<tr>
					<th class='w-px70'>번호</th>
					<th>제목</th>
					<th class='w-px100'>작성자</th>
					<th class='w-px100'>작성일자</th>
					<th class='w-px80'>조회수</th>
					<th class='w-px60'>첨부파일</th>
				</tr>
			</thead>
			<tbody>
	
				<c:if test="${ empty page.list }">
					<tr>
						<td colspan="6">방명록 정보가 없습니다.</td>
					</tr>
				</c:if>
				
				<c:forEach items="${page.list }" var="vo">
					<tr>
						<td>${vo.no }</td>
						<td class='left'><a onclick="go_detail(${vo.id})">${vo.title }</a></td>
						<td>${vo.name }</td>
						<td>${vo.writedate }</td>
						<td>${vo.readcnt }</td>
						<td>${empty vo.filename ? '' : '<img src="imgs/attach.png" class="file-img" />'}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</form>
	</div>
</body>
</html>