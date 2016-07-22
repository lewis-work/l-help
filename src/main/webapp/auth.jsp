<%@ page language="java" pageEncoding="UTF-8"%>

<h3>Test LDAP</h3>

<form action="<%=request.getContextPath()%>/auth/login" method="POST">
	<table border="1" style="width: 900px;">
		<tr>
			<td width="10%">sn:</td>
			<td width="90%"><input type="text" name="sn" size="100" value="" /></td>
		</tr>
		<tr>
			<td width="10%">pwd:</td>
			<td width="90%"><input type="text" name="pwd" size="100" value="" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Test Login" /></td>
		</tr>
	</table>
</form>

<p>You can: </p>

<ol>
	<li><a href="<%=request.getContextPath()%>/index.jsp">Back to Index</a></li>
	<li><a href="<%=request.getContextPath()%>/file.jsp">Upload Files</a></li>
	<li><a href="<%=request.getContextPath()%>/jdbc.jsp">Test JDBC</a></li>
</ol>
