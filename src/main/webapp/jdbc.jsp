<%@ page language="java" pageEncoding="UTF-8"%>

<h3>测试数据库连接</h3>

<form action="<%=request.getContextPath()%>/jdbc/testConn" method="POST">
	<table border="1" style="width: 900px;">
		<tr>
			<td width="10%">driver:</td>
			<td width="90%"><input type="text" name="driver" size="100"
				value="oracle.jdbc.driver.OracleDriver" /></td>
		</tr>
		<tr>
			<td width="10%">url:</td>
			<td width="90%"><input type="text" name="url" size="100"
				value="jdbc:oracle:thin:@10.88.15.196:1521:uml" /></td>
		</tr>
		<tr>
			<td width="10%">user:</td>
			<td width="90%"><input type="text" name="user" size="100"
				value="MULD" /></td>
		</tr>
		<tr>
			<td width="10%">password:</td>
			<td width="90%"><input type="text" name="password" size="100"
				value="muldsfghs#3" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Test Conn" /></td>
		</tr>
	</table>
</form>

<p>You can: </p>

<ol>
	<li><a href="<%=request.getContextPath()%>/index.jsp">返回首页</a></li>
	<li><a href="<%=request.getContextPath()%>/file.jsp">上传文件</a></li>
</ol>
