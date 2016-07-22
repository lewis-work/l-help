<%@ page language="java" pageEncoding="UTF-8"%>

<h3>Upload Files</h3>

<h5>单次请求文件大小累计不能超过300MB，如超过，需要多次请求。</h5>

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
	<li><a href="<%=request.getContextPath()%>/index.jsp">Back to Index</a></li>
	<li><a href="<%=request.getContextPath()%>/jdbc.jsp">Test JDBC</a></li>
	<li><a href="<%=request.getContextPath()%>/auth.jsp">Test LDAP</a></li>
</ol>
