<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ taglib prefix="fmt" uri="https://jakarta.ee/tags/fmt" %> --%>


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
		<c:if test="${sessionScope.adminId != null}">
			<div>
				<button type="button" id="btnAdd"> 상품 등록</button>
			</div>
		</c:if>
		<div class="itemIist">
			<c:forEach var="product" items="${product}">
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
					${product.prdPrice}
					<fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${product.prdPrice}"/>
					</p>
				</div>
				<c:if test="${sessionScope.adminId != null}">
	                <a href="edit/${product.prdId}">[상품편집]</a>
	            </c:if>	
			</c:forEach>
		</div>
	</div>
</section>
<!-- 푸터 삽입 -->
</body>
</html>