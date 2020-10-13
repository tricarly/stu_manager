<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
<style type="text/css">
	h2 {
		margin-left:90px;
	}
	.container{
		margin-left:360px;
	}
</style>
</head>
<body>
	<div >
		<div class="container">
			<br><br><br><br>
			<div class="page-header">
  				<h1>学生信息管理系统<small>登录界面</small></h1>
			</div>
			<br> <br> <br>
			<form class="form-horizontal" action="${pageContext.request.contextPath}/admin/login" method="post">
				<div class="form-group">
					<label for="inputEmail" class="col-sm-2 control-label">账号：</label>
					<div class="col-xs-3">
						<input type="text" class="form-control" id="inputEmail" placeholder="账号" name="account">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">密码：</label>
					<div class="col-xs-3">
						<input type="password" class="form-control" id="inputPassword" name="password"	placeholder="密码">
					</div>
				</div>
				<%--<div class="form-group">
					<label for="inputPassword1" class="col-sm-2 control-label">验证码：</label>
					<div class="col-xs-2">
						<input type="text" class="form-control" id="inputPassword1" name="code"	placeholder="验证码">
					</div>
				<div class="col-xs-1">
				<img name="imgValidate"  id="imgValidate" src="StudentServlet?method=CheckCode" onclick="refresh()">
				</div>--%>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox" name="remberme"> 记住我
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">登录</button>
					</div>
				</div>
			</form>
			<font color="red">${msg}</font>
		</div>
	</div>
</body>
</html>