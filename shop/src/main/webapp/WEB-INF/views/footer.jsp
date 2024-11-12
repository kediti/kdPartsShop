<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
<title>푸터입니다</title>
</head>
<body>
<section>
	<div id="footer">
		<p>&copy; 2024 OBSIDIAN ARMOR SHOP</p>
		
		<p><a>About Us</a> | <a>Contact</a> | <a>Privacy Policy</a></p>
	</div>
</section>
<!-- 플로팅 푸터 -->
<div id="floating-footer">
    <button onclick="scrollToTop()">Top</button>
</div>
</body>

<script>
function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
}
</script>

</html>