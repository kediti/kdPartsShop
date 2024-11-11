<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet"> <!-- 폰트 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<title>헤더입니다</title>
</head>
<body>
<!-- 헤더 섹션 -->

<header>
    <div class="logo">
        <a >EMBER</a>  
    </div>
    <div class="nav">
        <a >Home</a>
        <a >Products</a>
        <a >About</a>
        <a >Contact</a>
    </div>
   	<div>
   		<a href="${path}/login" style="margin-right: 50px;">LOG OUT</a>
    </div>
</header>

</body>

</html>