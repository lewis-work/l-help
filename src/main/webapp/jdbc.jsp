<%@ page language="java" pageEncoding="UTF-8"%>

<h3>Test JDBC</h3>

<form action="<%=request.getContextPath()%>/jdbc/testConn" method="POST">
	<table border="1" style="width: 900px;">
		<tr>
			<td width="10%">driver:</td>
			<td width="90%"><input type="text" name="driver" size="100" value="" /></td>
		</tr>
		<tr>
			<td width="10%">url:</td>
			<td width="90%"><input type="text" name="url" size="100" value="" /></td>
		</tr>
		<tr>
			<td width="10%">user:</td>
			<td width="90%"><input type="text" name="user" size="100" value="" /></td>
		</tr>
		<tr>
			<td width="10%">password:</td>
			<td width="90%"><input type="text" name="password" size="100" value="" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Test Conn" /></td>
		</tr>
	</table>
</form>

<p>You can: </p>

<ol>
	<li><a href="<%=request.getContextPath()%>/index.jsp">Back to Index</a></li>
	<li><a href="<%=request.getContextPath()%>/file.jsp">Upload Files</a></li>
	<li><a href="<%=request.getContextPath()%>/auth.jsp">Test LDAP</a></li>
</ol>
