<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
</head>
<body>
	<!-- 헤더 넣기 -->
	<section>
		<div class="title">
			<h1>LOG IN</h1>
		</div>
		<div class="logIn">
			<form name="logInform" action="loginCheck" method="post">
				<div>
					<label> ID </label>
					<input type="text" name="userId" id="id" maxlength="30">
				</div>
				<p></p>
				<div>
					<label> PASSWORD </label>
					<input type="text" name="userPw" id="password"maxlength="30">
				</div>
				<input type="submit" value="LOG IN">
			</form>
				<input type="button" value="SIGN UP" onclick="location .href='signUp'">
		</div>		
	</section>
	<!-- 푸터 넣기 -->
</body>
</html>