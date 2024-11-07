<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<body>
	<section class="wrap">
		<div class="container">
			<h2>상품 등록</h2>
		</div>
		<div>
			<form id="form1" name="form1" enctype="multipart/form-data" method="post">
				<div>
					<label>상품명</label>
					<input type="text" name="prd_name" id="prd_name">
				</div>
				<div>
					<label>팩션</label>
					<input type="text" name="prd_pack" id="prd_pack">
				</div>
				<div>
					<label>부위</label>
					<input type="text" name="prd_parts" id="prd_parts">
				</div>
				<div>
					<label>코스트</label>
					<input type="number" name="prd_cost" id="prd_cost">
				</div>
				<div>
					<label>설명</label>
					<textarea rows="5" cols="60" name="prd_des" id="prd_des"></textarea>
				</div>
				<div>
					<label>가격</label>
					<input type="number" name="prd_price" id="prd_price">
				</div>
				<div>
					<label>이미지</label>
					<input type="file" name="prd_img" id="prd_img">
				</div>
				<div>
					<input type="button" value="등록" id="addBtn">
                	<input type="button" value="목록" id="listBtn">
				</div>
			</form>
		</div>
	</section>
</body>
</html>

<script>
$(document).ready(function(){
    // 상품 등록 유효성검사
    $("#addBtn").click(function(){
        var prd_name = $("#prd_name").val();
        var prd_pack = $("#prd_pack").val();
        var prd_cost = $("#prd_cost").val();
        var prd_des = $("#prd_des").val();
        var prd_parts = $("#prd_parts").val();
        var prd_price = $("#prd_price").val();
        var prd_img = $("#prd_img").val();

        if(prd_name == "") {
            alert("상품명을 입력해주세요");
            prd_name.foucs();
        } else if (prd_pack == "") {
            alert("상품 팩션을 입력해주세요");
            prd_pack.focus();
        } else if (prd_cost == "") {
            alert("상품 코스트를 입력해주세요");
            prd_cost.focus();
        } else if (prd_des == "") {
            alert("상품 설명을 입력해주세요. 없다면 '-'를 입력해주세요");
            prd_des.focus();
        } else if (prd_parts == "") {
            alert("상품 부위를 입력해주세요");
            prd_parts.focus();
        } else if (prd_price == "") {
            alert("상품 가격을 입력해주세요");
            prd_price.focus();
        }else if (#prd_img == "") {
            alert("상품 사진을 입력해주세요");
            #prd_img.focus();
        }
        // 상품 정보 전송
        document.form1.action = "/insert.do";
        document.form1.submit();
    });
    // 상품 목록이동
    $("#listBtn").click(function(){
        location.href='/list.do';
    });
});
</script>