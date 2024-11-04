<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form method="post" action="/joinAction">
	<div class="container">
		<h1> 회원가입 </h1>
		<div>
			<label>ID</label>
			<input type="text" class="fromControl" id="inputId" name="userId" required>
		</div>
		<div>
			<label>PASSWORD</label>
			<input type="password" class="fromControl" id="inputPassword" name="userPw" required>
		</div>
		<div>
			<label>PASSWORD CHECK</label>
			<input type="password" class="formControl" id="checkPassword" name="pwCheck" required>
		</div>
		<div>
			<label>E-MAIL</label>
			<input type="text" class="formControl" id="inputEmail" name="email" required>
		</div>
		<div>
			<label>NICKNAME</label>
			<input type="text" class="formControl" id="inputNickname" name="nickname" required>
		</div>
		<div>
			<label>PHONE</label>
			<select id="inputTelecom" name="telecom">
				<option value="kt">KT</option>
				<option value="skt">SKT</option>
				<option value="lg">LG</option>
				<option value="etc">etc</option>
			</select>
			<input type="number" name="phone" id="inputPhone" class="formControl" placeholder="-없이 입력해주세요" maxlength="11">
		</div>
		<button type="submit" class="btn">Sign Up</button>
	</div>
</form>
</body>
</html>