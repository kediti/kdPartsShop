<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<c:forEach var="sup" items="${List}">
				<div>
					<a href="${path}/product/${row.prdId}">
						<img src="${path}/images/${row.prdImg}">
					</a>
				</div>
				<div class="prdPack">
					<p>
						${row.prdPack}
					</p>
				</div>
				<div class="prdParts">
					<p>
						${row.prdParts}
					</p>
				</div>
				<div class="prdname">
					<p>
					<a href="${path}/product/${row.prdId}">
						${row.prdName}
					</a>
					</p>
				</div>
				<div class="prdParts">
					<p>
						<fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${row.prdPrice}"/>
					</p>
				</div>	
			</c:forEach>
		</div>
	</div>
</section>
<!-- 푸터 삽입 -->
</body>
</html>