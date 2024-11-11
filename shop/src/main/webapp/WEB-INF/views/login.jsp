<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet"> <!-- 폰트 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
<meta charset="UTF-8">
<title>WELCOME</title>
</head>
<body>

	<section class="login-container">
		 <div class="title cyberpunk-text" id="title-text">OBSIDIAN ARMOR SHOP</div>
        <div class="title cyberpunk-text" id="login-text">LOG IN</div>
		<div class="logIn">
			<form name="logInform" action="loginCheck" method="post">
				<div>
					<label> ID </label>
					<input type="text" name="userId" id="id" maxlength="30">
				</div>
				<p></p>
				<div>
					<label> PASSWORD </label>
					<input type="password" name="userPw" id="password"maxlength="30">
				</div>
				<input type="submit" value="LOG IN">
			</form>
				<input type="button" value="SIGN UP" onclick="location .href='signUp'">
		</div>		
	</section>
	<!-- 푸터 넣기 -->
</body>

<script>

function decodeText(element, text, speed = 50) {
            let characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            let decodedText = '';
            let displayText = text.split('').map(() => characters[Math.floor(Math.random() * characters.length)]).join('');

            let interval = setInterval(() => {
                displayText = displayText.split('').map((char, i) => {
                    if (i < decodedText.length) return decodedText[i];
                    return characters[Math.floor(Math.random() * characters.length)];
                }).join('');

                element.textContent = displayText;

                if (decodedText.length < text.length) {
                    decodedText += text[decodedText.length];
                } else {
                    clearInterval(interval);
                }
            }, speed);
        }

        window.onload = function() {
            decodeText(document.getElementById('title-text'), 'OBSIDIAN ARMOR SHOP');
            decodeText(document.getElementById('login-text'), 'LOG IN', 75);
        };
 </script>
</html>