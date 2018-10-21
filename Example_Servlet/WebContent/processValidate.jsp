<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.AccountDao"%>
<%@page import="model.Account"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email = request.getParameter("email");
String password = request.getParameter("pwd");
String status = request.getParameter("status");
Account account = AccountDao.instance().findAccount(email, password);
if ("login".equals(status)) {
	if (account != null) {
		out.print(1);
	} else {
		out.print(-1);
	}
}
else {
	if (account != null) {
		out.print(-2);
	} else {
		out.print(2);
	}
}

%>

</body>
</html>