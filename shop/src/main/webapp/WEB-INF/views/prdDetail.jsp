<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITEM DETAIL</title>
</head>
<body>
	<section class="wrap">
		<div class ="container">
			<div class="title">
				<h2>ITEM DETAIL</h2>
			</div>
			
			<div class = "prdImg">
				<img src="${path}/images/${product.prdImg}">
			</div>
		
			<div class = "prdDetail">
				<div class = "prdPack">
					<p>${product.prdPack}</p>
				</div>
				<div class = "prdParts">
					<p>${product.prdPack}</p>
				</div>
				<div class = "prdName">
					<p>${product.prdName}</p>
				</div>
				<div class = "prdPrice">
					<fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${product.prdPrice}"/>
				</div>
				<div class = "prdDes">
					<p>${product.prdDes}</p>
				</div>
				<div class="cart">
					<p>장바구니 구현 중입니다</p>
					<a href ="${path}/productList"> 목록으로 돌아가기</a>
				</div>
			</div>
		</div>
	</section>
</body>
</html>