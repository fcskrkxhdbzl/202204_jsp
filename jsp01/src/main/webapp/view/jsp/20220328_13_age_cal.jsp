<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String result;
		int age = Integer.parseInt(request.getParameter("age"));
		if(age>19){
			result = "당신은 성인입니다";
			System.out.println("성인입니다.");
		}else{
			result = "당신은 애새끼입니다";
			System.out.println("애새끼입니다.");
		}
		request.setAttribute("age", age);
		request.setAttribute("result", result);
		request.getRequestDispatcher("20220328_13_result.jsp").forward(request, response);
	%>	

</body>
</html>