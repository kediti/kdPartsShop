<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<section class="wrap">
		<dic class="container">
			<div class="title">
				<h2>상품등록</h2>
			</div>
			<div>
				<form action="${pageContext.request.contextPath}/product/register" method="post">
				 	<label for="prdName">상품 이름:</label>
			        <input type="text" id="prdName" name="prdName"><br><br>
			        
			        <label for="prdPack">포장 정보:</label>
			        <input type="text" id="prdPack" name="prdPack"><br><br>
			        
			        <label for="prdParts">부품 정보:</label>
			        <input type="text" id="prdParts" name="prdParts"><br><br>
			        
			        <label for="prdPrice">가격:</label>
			        <input type="number" id="prdPrice" name="prdPrice" step="0.01"><br><br>
			        
			        <input type="submit" value="등록">
		        </form>
			</div>
		</dic>
	</section>
</body>
</html>