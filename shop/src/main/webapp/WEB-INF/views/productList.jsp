<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productlist.css">
<meta charset="UTF-8">
<title>ITEM LIST</title>
</head>
<body>

<!-- 로딩 화면 -->
<div id="loading-screen">
    <div id="loading-text">
        <p>Initializing Hack... </p>
    </div>
</div>

<!-- 헤더 삽입 -->
<section class="wrap">
	<div class="container">
		<div class="title">
			<h1>ITEM LIST</h1>
		</div>
		<div class="search">
			<form action="${path}/productList" method="get">
				<input type="text" name="keyword" value="${keyword}" placeholder="Search">
				<button type="submit">Find</button>
			</form>
		</div>

		<div class="itemIist">
			<c:forEach var="product" items="${productList}">
			<div class="item">
				<div class="product-card">
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
				
			</div>
			</c:forEach>
			<c:if test="${empty productList}">
			    <p>검색 결과가 없습니다.</p>
			</c:if>
			
			<div class ="movebtn">
				<a href="/product/register">.</a> 
			</div>
		</div>
	</div>
</section>
<!-- 푸터 삽입 -->
</body>

</html>
<script>
window.addEventListener('load', function () {
    const searchParams = window.location.search;
    
    // 검색어가 URL에 포함되어 있으면 로딩 화면을 숨기고, 검색된 결과만 보여준다.
    if (searchParams === '') {
        // 페이지가 처음 로드될 때만 로딩 화면을 6초 동안 보여준다.
        setTimeout(function () {
            document.getElementById('loading-screen').style.display = 'none';
            document.body.classList.add('loaded');
        }, 6000); // 로딩 화면 지속 시간
    } else {
        // 검색이 있으면 로딩 화면을 숨긴다.
        document.getElementById('loading-screen').style.display = 'none';
        document.body.classList.add('loaded');
    }
});


</script>

