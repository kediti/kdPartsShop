<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kdparts.dao.UserDAO"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="com.kdparts.user.User" scope="page" />
<jsp:setProperty property="userId" name="user"/>
<jsp:setProperty property="userNo" name="user"/>
<jsp:setProperty property="userPw" name="user"/>
<jsp:setProperty property="telecom" name="user"/>
<jsp:setProperty property="phone" name="user"/>
<jsp:setProperty property="email" name="user"/>
<jsp:setProperty property="nickname" name="user"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOW SIGN UP</title>
</head>
<body>
<%
	if(user.getUserId() == null || user.getUserPw() == null || user.getPhone() ==null || user.getEmail()==null || user.getNickname() == null ||user.getTelecom()==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("<alert('항목을 전부 채워주세요')>");
		script.println("history.back()");
		script.println("</script>");
	}else{
		UserDAO userDAO = new UserDAO();
		int result =userDAO.join(user);
		if (result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('중복되는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'login'");
			script.println("</script>");
		}
	}
%>
</body>
</html>