<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 편집</title>
</head>
<body>
	<section class="wrap">
		<div class="container">
			<div class ="title">
				<h2>상품 편집</h2>
			</div>
			<div>
				<form id="form1" name="form1" enctype="multipart/form-data" method="post">
					<div>
						<label>이미지</label>
						<img src="${path}/images/${product.prdImg}">
						<p></p>
						<input type="file" id="prd_img" name="prd_img">
					</div>
					<div>
						<label>이름</label>
						<input type="text" id="prd_name" name="prd_name" value="${product.prdName}">
					</div>
					<div>
						<label>팩션</label>
						<input type="text" id="prd_pack" name="prd_pack" value="${product.prdPack}">
					</div>
					<div>
						<label>부위</label>
						<input type="text" id="prd_parts" name="prd_parts" value="${product.prdParts}">
					</div>
					<div>
						<label>코스트</label>
						<input type="number" id="prd_cost" name="prd_cost" value="${product.prdCost}">
					</div>
					<div>
						<label>설명</label>
						<textarea rows="5" cols="60" name="prd_des" id="prd_des" value="${product.prdDes}"></textarea>
					</div>
					<div>
						<label>가격</label>
						<input type="number" id="prd_price" name="prd_price" value="${product.prdPrice}">
					</div>
					<div>
						<input type="hidden" name="prd_id" value="${vo.prdId}">
		                <input type="button" id="editBtn" value="수정하기">
		                <input type="button" id="deleteBtn"value="삭제하기">
		                <input type="button" id="listBtn" value="목록으로">  
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>