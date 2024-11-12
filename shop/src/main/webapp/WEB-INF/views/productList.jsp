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
        <p id="hacking-text">Initializing Hack... </p>
        <div id="hacking-codes"></div>
    </div>
</div>

<c:import url="/WEB-INF/views/header.jsp" /> 
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
<div id="footer-container">
	<c:import url="/WEB-INF/views/footer.jsp" />
</div>
</body>

</html>
<script>
window.addEventListener('load', function () {
    const searchParams = window.location.search;

    // 로딩 화면과 관련된 초기 설정
    document.getElementById('header').style.display = 'none'; // 로딩 중에는 헤더 숨기기
    document.getElementById('footer-container').style.display = 'none'; // 로딩 중에는 푸터 숨기기
    document.getElementById('loading-screen').style.display = 'block'; // 로딩 화면 표시

    let hackText = document.getElementById("hacking-text");
    let textContent = "Initializing Hack... ";
    let currentText = "";
    let i = 0;

    function typeHackText() {
        if (i < textContent.length) {
            currentText += textContent.charAt(i);
            hackText.innerHTML = currentText + "<span class='blinking-cursor'>|</span>"; // 깜빡이는 커서 추가
            i++;
            setTimeout(typeHackText, Math.random() * 150); // 타이핑 속도 랜덤화
        } else {
            hackText.innerHTML = "Hack Complete.";
            setTimeout(function () {
                // 로딩 화면을 숨기고 헤더와 푸터를 보이게 함
                document.getElementById('loading-screen').style.display = 'none'; // 로딩 화면 숨기기
                document.getElementById('header').style.display = 'block'; // 로딩 후 헤더 보이게
                document.getElementById('footer-container').style.display = 'block'; // 로딩 후 푸터 보이게
                document.body.classList.add('loaded');
            }, 1000); // 메시지 완료 후 잠시 대기
        }
    }

    // 해킹 코드 효과
    const hackingCodesElement = document.getElementById("hacking-codes");
    let codes = [
        "Accessing files...",
        "Bypassing security protocols...",
        "Decrypting data...",
        "Breaching firewall...",
        "Injecting code...",
        "Overriding system...",
        "Tracing IP address...",
        "Encrypting payload...",
        "Initializing root access...",
        "Loading configuration files...",
        "Scanning for vulnerabilities...",
        "Attempting brute force attack...",
        "Establishing secure connection...",
        "Transmitting data packets...",
        "Executing shell commands...",
        "Authenticating credentials...",
        "MIKUMIKU NI SHITE IRU...",
        "Disabling security logs...",
        "Hijacking network...",
        "Performing system scan...",
        "Modifying firewall rules...",
        "Escalating privileges...",
        "Exploiting buffer overflow...",
        "Unpacking encrypted files...",
        "Spoofing IP address...",
        "마라탕 끓여먹는 중...", 
        "Loading malware payload...",
        "Compiling exploit...",
        "Mapping internal network...",
        "Suspending system protocols...",
        "Injecting malicious code...",
        "Clearing system logs...",
        "Seizing administrative rights...",
        "Infiltrating secure network...",
        "Uploading data trojan...",
        "Decrypting secure channels...",
        "Establishing reverse shell...",
        "Embedding tracking scripts...",
        "Disguising data packets...",
        "Gathering system intel...",
        "Configuring proxy settings...",
        "Anonymizing connection...",
        "Rewriting database records...",
        "Initiating self-destruct sequence..."
    ];

    function generateHackingCode() {
        // 랜덤한 수의 코드 라인을 한 번에 추가 (1~3개)
        let linesToAdd = Math.floor(Math.random() * 3) + 1;
        for (let j = 0; j < linesToAdd; j++) {
            let randomCode = codes[Math.floor(Math.random() * codes.length)];
            let codeLine = document.createElement("p");
            codeLine.textContent = randomCode;
            hackingCodesElement.appendChild(codeLine);
        }

        // 아래로 스크롤되는 효과
        hackingCodesElement.scrollTop = hackingCodesElement.scrollHeight;

        // 매우 짧은 간격으로 새로운 코드 추가
        setTimeout(generateHackingCode, Math.random() * 500 + 50);  // 코드 생성 간격 랜덤화
    }

    // 로딩 화면이 끝난 후에 가짜 경고창을 일정 간격으로 띄우기 위한 설정
    let fakeAlertInterval;

    function showFakeAlert() {
        const fakeAlertMessages = [
            "Warning: Unauthorized access detected!",
            "System breach in progress!",
            "Alert: Malware detected in system!",
            "Warning: Firewall bypass attempt!",
            "Security breach imminent!",
            "Critical Error: System malfunction detected!",
            "System lockdown activated!",
            "Security warning: Accessing protected data!",
            "ALERT: Hacking attempt detected!",
            "WELCOME TO KEDI's PORTPOLIO!!"
        ];

        let message = fakeAlertMessages[Math.floor(Math.random() * fakeAlertMessages.length)];
        let fakeAlert = document.createElement("div");
        fakeAlert.classList.add("fake-alert");
        fakeAlert.textContent = message;

        fakeAlert.style.top = `${Math.random() * 80 + 10}%`;  // 화면 상단에서 10%~90% 사이 위치
        fakeAlert.style.left = `${Math.random() * 90 + 5}%`;  // 화면 왼쪽에서 5%~95% 사이 위치

        document.body.appendChild(fakeAlert);

        // 잠시 후 경고창을 사라지게 하여 애니메이션 효과를 줍니다.
        setTimeout(() => {
            fakeAlert.style.opacity = '0';
            setTimeout(() => {
                fakeAlert.remove();
            }, 500); // 사라진 후 제거
        }, 1500); // 1.5초 후 사라짐
    }

    // 로딩 화면이 끝난 후에만 가짜 경고창을 띄우도록 설정
    setTimeout(() => {
        // 로딩 화면 종료 후 경고창 생성 시작
        fakeAlertInterval = setInterval(showFakeAlert, Math.random() * 3000 + 2000); // 2초에서 5초 간격으로 경고창 표시
    }, 6000);  // 로딩 화면 종료 후 경고창 생성 시작

    // 로딩이 끝난 후 경고창 숨기기
    setTimeout(() => {
        clearInterval(fakeAlertInterval); // 경고창 생성 멈추기
    }, 10000); // 10초 후 경고창 멈추기

    // 타이핑과 해킹 코드 생성 시작
    typeHackText();
    generateHackingCode();

    // URL에 검색어가 포함되어 있으면 로딩 화면을 숨기고 결과를 바로 보여준다
    if (searchParams === '') {
        setTimeout(function () {
            document.getElementById('loading-screen').style.display = 'none'; // 로딩 화면 숨기기
            document.getElementById('header').style.display = 'block'; // 로딩 후 헤더 보이게
            document.getElementById('footer-container').style.display = 'block'; // 로딩 후 푸터 보이게
            document.body.classList.add('loaded');
        }, 6000); // 로딩 화면 지속 시간
    } else {
        // 검색이 있으면 로딩 화면을 숨긴다.
        document.getElementById('loading-screen').style.display = 'none';
        document.getElementById('header').style.display = 'block';
        document.getElementById('footer-container').style.display = 'block';
        document.body.classList.add('loaded');
    }
});


</script>

