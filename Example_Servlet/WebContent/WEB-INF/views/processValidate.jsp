<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.AccountDao"%>
<%@page import="model.Account"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Ajax Example</title>
</head>
<body>

<%
String email = request.getParameter("email");
String password = request.getParameter("pwd");
String status = request.getParameter("status");
Account account = AccountDao.instance().findAccount(email, password);
if ("login".equals(status)) {
	if (account != null) {
		out.print("1");
	} else {
		out.print("-1");
	}
}
else {
	if (account != null) {
		out.print("-2");
	} else {
		out.print("2");
	}
}
%>
</body>
</html>
