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
<!-- <h3>로그인 페이지</h3> -->
<div style="width: 700px; border: 1px solid #ccc;" class="center">
	<div id="login">
		<div>
			<a href='<c:url value="/"/>'><img src='../resources/images/logo.png'/></a>
		</div>
		<div>
			<div style="width: 80%; margin: 25px auto; border: 1px solid #ccc;">
			</div>
			<input type="text" placeholder="아이디" id="userid" autofocus="autofocus"/><br/>
			<input type="password" placeholder="비밀번호" id="userpw"
				onkeypress = "if(event.keyCode == 13) go_login()"/><br/>
			<a class='btn-fill' onclick='go_login()'>로그인</a>	
		</div>
	</div>
	<div class='join'>
		<div>Hello, Guest<br/>
			<a class="btn-fill" href='member'>회원가입</a>
		</div>
	</div>
</div>
<script type="text/javascript">

function go_login() {
	if($('#userid').val() == '') {	// 아이디 입력값이 없으면
		alert('아이디를 입력하세요!');
		$('#userid').focus();
		return false;
	} else if ($('#userpw').val() == '') { // 비밀번호 입력값이 없으면
		alert('비밀번호를 입력하세요!');
		$('#userpw').focus();
		return;
	}
	
	$.ajax({  // login을 위한 ajax 통신 설정
		url : 'memberLogin'
		, data : {id:$('#userid').val(), pw:$('#userpw').val()}
		, success : function (response) {
			if(response){
				location = '<c:url value="/" />';
			}else{
				alert('ID나 PW가 일치하지 않습니다.');
			}
		}, error : function ( req, text) {
			alert(text + ':' + req.status);
		}
	});
}

</script>

</body>
</html>