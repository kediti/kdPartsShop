<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kdparts.dao.UserDAO"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
    
<jsp:useBean id="user" class="com.kdparts.user.User" scope="page" />
<jsp:setProperty name="user" property="userId"/>
<jsp:setProperty name="user" property="userPw"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>now login</title>
</head>
<body>
	<%
	UserDAO userDAO =new UserDAO();
		int result = userDAO.login(user.getUserId(), user.getUserPw());
		if (result == 1){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href = 'productList'");
			script.println("</script>");
		}
		else if (result == 0){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 암호입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -1){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -2){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>
</html>