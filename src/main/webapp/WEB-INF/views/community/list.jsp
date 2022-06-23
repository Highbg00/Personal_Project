<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		</table>
		</form>
	</div>
</body>
</html>