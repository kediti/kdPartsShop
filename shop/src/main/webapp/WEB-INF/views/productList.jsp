<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://jakarta.servlet.jsp.jstl.core" %>
<%@ taglib prefix="fmt" uri="http://jakarta.servlet.jsp.jstl.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITEM LIST</title>
</head>
<body>
<!-- 헤더 삽입 -->
<section class="wrap">
	<div class="container">
		<div class="title">
			<h1>ITEM LIST</h1>
		</div>
		<div class="itemIist">
			<c:forEach var="product" items="${List}">
				<div>
					<a href="${path}/product/${product.prdId}">
						<img src="${path}/images/${product.prdImg}">
					</a>
				</div>
				<div class="prdPack">
					<p>
						${product.prdPack}
					</p>
				</div>
				<div class="prdParts">
					<p>
						${product.prdParts}
					</p>
				</div>
				<div class="prdname">
					<p>
					<a href="${path}/product/${product.prdId}">
						${product.prdName}
					</a>
					</p>
				</div>
				<div class="prdPrice">
					<p>
						<fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${product.prdPrice}"/>
					</p>
				</div>	
			</c:forEach>
		</div>
	</div>
</section>
<!-- 푸터 삽입 -->
</body>
</html>