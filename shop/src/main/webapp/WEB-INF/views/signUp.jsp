<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kdparts.dto.Register"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form method="post" action="/joinAction">
	<div class="container">
		<h1> 회원가입 </h1>
		<div>
			<label>ID</label>
			<input type="text" class="fromControl" id="inputId" name="userId" required>
			<span id="spanId"></span>
		</div>
		<div>
			<label>PASSWORD</label>			
			<input type="password" class="fromControl" id="inputPassword" name="userPw" required>
			<span id="spanPw"></span>	
		</div>
		<div>
			<label>PASSWORD CHECK</label>
			<input type="password" class="formControl" id="checkPassword" name="pwCheck" required>
			<span id="spanPwC"></span>
		</div>
		<div>
			<label>E-MAIL</label>
			<input type="text" class="formControl" id="inputEmail" name="email" required>
			<span id="spanEmail"></span>
		</div>
		<div>
			<label>NICKNAME</label>
			<input type="text" class="formControl" id="inputNickname" name="nickname" required>
			<span id="spanNickname"></span>	
		</div>
		<div>
			<label>PHONE</label>
			<select id="inputTelecom" name="telecom">
				<option value="kt">KT</option>
				<option value="skt">SKT</option>
				<option value="lg">LG</option>
				<option value="etc">etc</option>
			</select>
			<input type="number" name="phone" id="inputPhone" class="formControl" placeholder="-없이 입력해주세요" maxlength="11">
			<span id="spanPhone"></span>
		</div>
		<button type="submit" class="btn">Sign Up</button>
	</div>
</form>
</body>
</html>

<!-- 이하 데이터 정합성 검사 -->

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
//전번
	let inputPhone = null;
	$('#inputPhone').on("input",function(){
		checkInputPhone();
	})
	
	function checkInputPhone(){
		const regexPhone =/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		inputPhone = $("#inputPhone").val();
		
		if (!regexPhone.test(inputPhone)){
			if(inputPhone==''){
				$("#spanPhone").html('<i calss="fa-solid fa-x"></i>필수 정보입니다.');
			}else{
				$("#spanPhone").html('<i calss="fa-solid fa-x"></i>휴대폰번호를 확인해 주세요');
			}
			$("#spanPhone").css("color","red");
		}else{
			$("#spanPhone").html(' <i class="fa-solid fa-x"></i>');
			$("#spanPhone").css("color","green");
		}
	}
	
</script>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
//이메일
	let inputEmail = null;
	$('#inputEmail').on("input",function(){
		checkInputEmail();
	})
	
	function checkInputEmail(){
		const regexEmail =/^([0-9a-zA-Z_\\.-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}$/;
		inputEmail = $("#inputEmail").val();
		
		if (!regexEmail.test(inputEmail)){
			if(inputEmail==''){
				$("#spanEmail").html('<i calss="fa-solid fa-x"></i>필수 정보입니다.');
			}else{
				$("#spanEmail").html('<i calss="fa-solid fa-x"></i>올바른 이메일 형식이 아닙니다');
			}
			$("#spanEmail").css("color","red");
		}else{
			$("#spanEmail").html(' <i class="fa-solid fa-x"></i>');
			$("#spanEmail").css("color","green");
		}
	}
	
</script>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
//닉네임
	let inputNickname =null;
	
	$('#inputNickname').on("input",function(){
		checkInputNickname();
	})
	
	function checkInputNickname(){
		const regexNickname =/^[가-힣|a-z|A-Z|0-9|]{1,10}$/;
		inputNickname = $("#inputNickname").val();
		
		if (!regexNickname.test(inputNickname)){
			if(inputNickname==''){
				$("#spanNickname").html('<i calss="fa-solid fa-x"></i>필수 정보입니다.');
			}else{
				$("#spanNickname").html('<i calss="fa-solid fa-x"></i>닉네임은 한글, 영어, 숫자만 1 ~10자리로 입력 가능합니다');
			}
			$("#spanNickname").css("color","red");
		}else{
			$("#spanNickname").html(' <i class="fa-solid fa-x"></i>');
			$("#spanNickname").css("color","green");
		}
	}
</script>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
/*아이디 정합성 검사 */
	let inputId = null;

	
	//아이디 입력
		$("#inputId").on("input", function(){
			checkInputId();
		})
	//아이디 함수
	function checkInputId(){
		const regexId= /^[A-Za-z0-9]{4,15}$/;
		inputId = $("#inputId").val();
		
		if(!regexId.test(inputId)){
			if (inputId == ''){
				$("#spanId").html('<i calss="fa-solid fa-x"></i>필수 정보입니다.');
			}else{
				$("#spanId").html('<i calss="fa-solid fa-x"></i>4~15자의 영문과 숫자만 사용 가능합니다.');
			}
			$("#spanId").css("color", "red");
			
		}else{
			$("#spanId").html(' <i class="fa-solid fa-check"></i>');
			$("#spanId").css("color", "green");
    		
		}
	
	}
</script>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
/* 비밀번호 정합성 검사 */
	let inputPassword = null;
    let checkPassword = null;
   
	//비번 입력
	$("#inputPassword").on("input", function(){ // #inputPassword1 입력 이벤트 발생
        checkInputPassword();
    })
	//비번 함수
	function checkInputPassword(){
		const regexPassWord = /^(?=.*[0-9])(?=.*[a-zA-Z]).{8,16}$/;
		inputPassword = $("#inputPassword").val();
		checkPassword = $("#checkPassword").val();
		
		if(!regexPassWord.test(inputPassword)){
			if(inputPassword == ''){
				$("#spanPw").html(' <i class="fa-solid fa-x"></i> 필수 정보입니다.');
			}else{
				$("#spanPw").html(' <i class="fa-solid fa-x"></i> 최소 하나의 문자 및 숫자를 포함한 8~16자이여야 합니다.');
			}
			$("#spanPw").css("color","red");
		}else{
			$("#spanPw").html(' <i class="fa-solid fa-x"></i>');
			$("#spanPw").css("color","green");
		}
		
		if(inputPassword != checkPassword){
			$("#spanPwC").html(' <i class="fa-solid fa-x"></i> 비밀번호가 일치하지 않습니다.');
			$("#spanPwC").css("color","red");
		}else{
			$("#spanPwC").html(' <i class="fa-solid fa-x"></i>');
			$("#spanPwC").css("color","green");
		}
	}
	
	$("#checkPassword").on("input", function(){
		checkCheckPassword();
	})
	
	function checkCheckPassword(){
		inputPassword = $("#inputPassword").val();
		checkPassword = $("#checkPassword").val();
		
		if (inputPassword!= checkPassword){
			$("#spanPwC").html(' <i class="fa-solid fa-x"></i> 비밀번호가 일치하지 않습니다.');
			$("#spanPwC").css("color","red");
		}else{
			$("#spanPwC").html(' <i class="fa-solid fa-x"></i>');
			$("#spanPwC").css("color","green");
		}
	}
</script>

	
	
	