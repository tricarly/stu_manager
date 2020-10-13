<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"
type="text/css" >
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="page-header">
  		<h1>欢迎您！<small>${admin.account}
  			&nbsp;&nbsp;&nbsp;&nbsp;
  		<a href="${pageContext.request.contextPath}/admin/logout" class="btn btn-default">安全退出</a></small></h1>
	</div>
	<div class="page-header">
  		<h1>河南科技学院信息工程学院<small>学生列表</small></h1>
	</div>
	<form action="${pageContext.request.contextPath}/student/findByName" method="post" class="form-group" id="form">
	<table class="table table-striped">
		<tr>
			<td colspan="10">
				按姓名查询:<input type="text" name="sname"/>
						<input type="submit" value="查询" class="btn btn-default">
						<a href="${pageContext.request.contextPath}/student/insertUI" class="btn btn-default">添加</a>
			</td>
		</tr>
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>班级</td>
			<td>性别</td>
			<td>学号</td>
			<td>电话</td>
			<td>生日</td>
			<td>爱好</td>
			<td>简介</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${pageInfo.list}" var="stu">
			<tr>
				<td>${stu.sid}</td>
				<td>${stu.sname}</td>
				<td>${stu.grade}</td>
				<td>${stu.gender}</td>
				<td>${stu.sno}</td>
				<td>${stu.phone}</td>
				<td>${stu.birthday}</td>
				<td>${stu.hobby}</td>
				<td>${stu.info}</td>
				<td><a href="${pageContext.request.contextPath}/student/updateUI?sid=${stu.sid}" class="btn btn-default">更新</a>
					<input id="${stu.sid}" type="button" class="btn btn-default del" value="删除">
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="10">
				第${ pageInfo.pageNum} /${pageInfo.pages} &nbsp;&nbsp;
				每页显示${ pageInfo.pageSize }条&nbsp;&nbsp;
				总记录数&nbsp;${pageInfo.total }
				<nav aria-label="Page navigation">
				  <ul class="pagination">
				    <c:if test="${ pageInfo.pageNum!=1}">
				    <li>
				    	<a href="${pageContext.request.contextPath}/student/list?page=1&size=${pageInfo.pageSize}" class="btn btn-default">首页
				    	</a>
				    </li>
				    <li>
				      <a href="${pageContext.request.contextPath}/student/list?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}" aria-label="Previous">
				      	 <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
			        </c:if>
			        <!-- 显示页码 -->
					<c:forEach begin="1" end="${pageInfo.pages }" var="num">
						<li><a href="${pageContext.request.contextPath}/student/list?page=${num}&size=${pageInfo.pageSize}">${num}</a></li>
					</c:forEach>
					<c:if test="${ pageInfo.pageNum!=pageInfo.pages}">
					<li>
						<a href="${pageContext.request.contextPath}/student/list?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}" aria-label="Next" >
							 <span aria-hidden="true">&raquo;</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/student/list?page=${pageInfo.pages}&size=${pageInfo.pageSize}" class="btn btn-default">尾页</a>
					</li>
					</c:if>
				  </ul>
				</nav>
			</td>
		</tr>
	</table>
	</form>
</body>
<script type="text/javascript">
$(".del").click(function(){
	var id = this.id;
	if(confirm("是否删除?")){
		window.location.href="${pageContext.request.contextPath}/student/delete?sid="+id;
	}
});
</script>
</html>