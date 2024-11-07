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
				<form action="/product/register" method="post" enctype="multipart/form-data">
				 	 <label for="prdImg">이미지 업로드:</label>
   					 <input type="file" name="prdImgFile" id="prdImg">
				 	
				 	<label for="prdName">상품명:</label>
			        <input type="text" id="prdName" name="prdName">
			        <p></p>
			        
			        <label for="prdPack">팩션:</label>
			        <input type="text" id="prdPack" name="prdPack">
			        <p></p>
			        <label for="prdParts">파츠:</label>
			        <input type="text" id="prdParts" name="prdParts">
			        <p></p>
			        <label for="prdCost">코스트:</label>
			        <input type="number" id="prdCost" name="prdCost" >
			        <p></p>
			        <label for="prdCost">효과</label>
			        <textarea type="number" id="prdDes" name="prdDes" ></textarea>
			        <p></p>
			        <label for="prdPrice">가격:</label>
			        <input type="number" id="prdPrice" name="prdPrice" >
			        <p></p>
			        
			        <input type="submit" value="등록">
		        </form>
			</div>
		</dic>
	</section>
</body>
</html>