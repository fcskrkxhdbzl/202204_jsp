<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if ('${param.msg}' != '')
		alert('${param.msg}');
	
</script>
</head>
<body>
	<h2>한국환경공단 에어코리아 미세먼지 경보 발령 현황</h2>
	<form action="${path}/pasing.test">
		<fieldset>
			<legend>파싱</legend> 
			<input type="number" name="year">
			<button >파싱</button>
		</fieldset>
	</form>
	<hr>
	<form action="${path}/list.test">
		지역명 <input type="text" name="districtName">
		<button>조회</button>
	</form>
	<%-- ${list} --%>
	<c:forEach var="test" items="${list}">
		<table border="1">
			<tr>
				<th>순번</th>
				<td colspan="3">${test.SN}</td>
			</tr>
			<tr>
				<th>지역명</th>
				<td>${test.DISTRICTNAME}</td>
				<th>권역명</th>
				<td>${test.MOVENAME}</td>
			</tr>
			<tr>
				<th>항목명</th>
				<td>${test.ITEMCODE}</td>
				<th>경보단계</th>
				<td>${test.ISSUEGBN}</td>
			</tr>
			<tr>
				<th>발령일시</th>
				<td>${test.ISSUEDATE} ${test.ISSUETIME}</td>
				<th>발령농도</th>
				<td>${test.ISSUEVAL}</td>
			</tr>
			<tr>
				<th>해제일</th>
				<td>${test.CLEARDATE} ${test.CLEARTIME}</td>
				<th>발령농도</th>
				<td>${test.CLEARVAL}</td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>