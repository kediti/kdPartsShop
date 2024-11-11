<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet"> <!-- 폰트 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prddetail.css">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<title>ITEM DETAIL</title>
</head>
<body>
<c:import url="/WEB-INF/views/header.jsp" />
	<section class="wrap">
		<div class="title">
			<h2>ITEM DETAIL</h2>
		</div>
		<div class ="container">
			<div class = "prdImg">
				<img src="${path}/images/${product.prdImg}">
			</div>
		
			<div class = "prdDetail">
				<div class = "prdPack">
					<p>${product.prdPack}</p>
				</div>
				<div class = "prdParts">
					<p>${product.prdParts}</p>
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
<script>
//페이지 로딩 후 이미지 처리
window.onload = function() {
    var images = document.querySelectorAll('.prdImg img');
    
    images.forEach(function(image) {
        image.classList.add('loading'); // 로딩 중 스타일 적용
        
        // 이미지가 로딩되면 opacity를 1로 변경
        image.onload = function() {
            image.classList.remove('loading'); // 로딩이 끝난 후
            image.classList.add('loaded'); // 이미지를 완전히 보이도록
        };
        
        // 이미지가 로딩되지 않으면 대체 이미지나 오류 처리
        image.onerror = function() {
            console.error("이미지 로딩 오류");
            image.classList.remove('loading'); // 로딩 중 스타일 제거
            image.classList.add('loaded'); // 기본적으로 이미지를 보이게 함
        };
    });
};

document.addEventListener("DOMContentLoaded", function() {
    var image = document.getElementById('productImage');

    // 이미지 로딩 후 처리
    image.onload = function() {
        image.classList.remove('loading');
        image.classList.add('loaded');
        document.querySelector('.noiseEffect').style.display = 'none';  // 노이즈 효과 제거
    }

    // 이미지를 로딩하기 전에 클래스를 추가
    image.classList.add('loading');
});
</script>
</html>