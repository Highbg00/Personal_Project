<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- tiles 라이브러리를 사용할 수 있도록 선언 -->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#wrap { display: flex; flex-direction: column; height: 100%; }
</style>

<!-- jQuery 라이브러리 CDN 방식 연결 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/common.js?v=<%=new Date().getTime() %>"></script>
<script src="https://use.fontawesome.com/releases/v6.1.1/js/all.js"></script>
<script type="text/javascript" src='js/file_check.js'></script>

</head>
<body>
<div id="wrap">
	<tiles:insertAttribute name="header" />
	
	<div id="content">
		<tiles:insertAttribute name="content" />
	</div>
	
</div>

</body>
</html>