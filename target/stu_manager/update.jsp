<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="page-header">
  		<h1>学生信息管理系统<small>更新信息</small></h1>
	</div>
	<a href="${pageContext.request.contextPath}/student/goHead" class="btn btn-default">返回主页</a><br><br>
	<form method="post" action="${pageContext.request.contextPath}/student/update" accept-charset="UTF-8">
	<div class="form-group">
		<input type="hidden" name="sid" value="${stu.sid}">
			<table class="table table-striped">
				<tr>
					<td>姓名</td>
					<td><input type="text" name="sname" value="${stu.sname}"></td>
				</tr>
				<tr>
					<td>班级</td>
					<td><input type="text" name="grade" value="${stu.grade}"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="radio" name="gender" value="男"
						 <c:if test="${stu.gender=='男'}">checked</c:if>>男
						 <input type="radio" name="gender" value="女"
						 <c:if test="${stu.gender=='女'}">checked</c:if>>女
					</td>
				</tr>
				<tr>
					<td>学号</td>
					<td><input type="text" name="sno" value="${stu.sno}"></td>
				</tr>
				<tr>
					<td>电话</td>
					<td><input type="text" name="phone" value="${stu.phone}"></td>
				</tr>
				<tr>
					<td>生日</td>
					<td><input type="date" name="birthday" value="${stu.birthday}"></td>
				</tr>
				<tr>
					<td>爱好</td>
					<td>
					 <input type="checkbox" value="唱" name="hobby" 
					 	<c:if test="${fn:contains(stu.hobby,'唱')}">checked</c:if>/>唱
					 <input type="checkbox" value="跳" name="hobby" 
					 	<c:if test="${fn:contains(stu.hobby,'跳')}">checked</c:if>/>跳
					 <input type="checkbox" value="RAP" name="hobby" 
						<c:if test="${fn:contains(stu.hobby,'RAP')}">checked</c:if>/>RAP
					 <input type="checkbox" value="篮球" name="hobby" 
					 	<c:if test="${fn:contains(stu.hobby,'篮球')}">checked</c:if>/>篮球
					</td>
				</tr>
				<tr>
					<td>简介</td>
					<td><textarea name="info" rows="5" cols="25">${stu.info}</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="更新" class="btn btn-default" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>