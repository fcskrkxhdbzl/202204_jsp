<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>직업 선택 결과창</h2>
	<%
		String j = request.getParameter("job");
	%>
	
	당신의 직업은 : <%=j%>
</body>
</html>