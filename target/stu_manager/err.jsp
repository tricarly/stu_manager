<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<script type="text/javascript">
	alert("您还没有登录，请登录后再查看这些！");
	window.location.href="${pageContext.request.contextPath}/admin/loginUI";
</script>
<body>
	
</body>
</html>