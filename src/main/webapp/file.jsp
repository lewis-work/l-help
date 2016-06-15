<%@ page language="java" pageEncoding="UTF-8"%>

<h3>上传文件</h3>

<h5>每次请求文件大小累计不能超过300MB，如超过，可多次请求，这里最主要目的是限制单个文件不能超过300MB</h5>

<form action="<%=request.getContextPath()%>/file/upload" method="POST"
	enctype="multipart/form-data">

	<ol>
		<li>文件: <input type="file" name="myfiles" /></li>
		<li>文件: <input type="file" name="myfiles" /></li>
		<li>文件: <input type="file" name="myfiles" /></li>
		<li>文件: <input type="file" name="myfiles" /></li>
		<li>文件: <input type="file" name="myfiles" /></li>
		<li>文件: <input type="file" name="myfiles" /></li>
	</ol>

	<input type="submit" value="上传" />

</form>

<p>You can: </p>

<ol>
	<li><a href="<%=request.getContextPath()%>/index.jsp">返回首页</a></li>
	<li><a href="<%=request.getContextPath()%>/jdbc.jsp">测试数据库连接</a></li>
</ol>
