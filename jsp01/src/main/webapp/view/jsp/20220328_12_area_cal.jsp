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
		//원의 넓이 계산하기 - 콘솔창에만 표시된다
		int radius = Integer.parseInt(request.getParameter("radius"));
		double area = radius*radius*3.14;
		System.out.println(area);
		//결과창으로 이동시키기 - result페이지로 표시하기
		request.setAttribute("area", area); //먼저 값을 담고,
		request.getRequestDispatcher("20220328_12_result.jsp").forward(request, response); //result페이지로 넘긴다
	%>
</body>
</html>