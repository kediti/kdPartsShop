<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="wrap">
		<div class="container">
			<div class="title">
				<h3>
					상품 등록 페이지
				</h3>
			</div>
			<div>
				<form role="form" method=" enctype="multipart/form-data" th:object="${itemFormDto}">
				</form>
			</div>
		</div>
	</section>
</body>
</html>


<script>
	$(document).ready(function(){
		var errorMassage = [[${errorMessage}]];
		if (errorMessage != null){
			alert(errorMessage);
		}
		bindDomEvent;
	});
	
	function bindDomEvent;(){
		$(".custom-file-input").on("change",function(){
			var fileName = $(this).val().split("\\").pop();
			var fileExt = fileName.substring(fileName.lastIndexOf(".")+1);
			
			if(fileExt !="jpg" && fileExt !="jpeg" && fileExt !="png" && fileExt !="bmp"){
				alert("gif를 제외한 이미지 파일만 등록할 수 있습니다.");
				return;
			}
			$(this).siblings(".custom-file-label").jsp(fileName);
		});
	}

</script>