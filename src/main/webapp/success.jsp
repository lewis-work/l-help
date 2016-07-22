<%@ page language="java" pageEncoding="UTF-8"%>
<h3>Action Success.</h3>

<p>Now, you can: </p>

<ol>
	<li><a href="<%=request.getContextPath()%>/file.jsp">Upload Files</a></li>
	<li><a href="<%=request.getContextPath()%>/jdbc.jsp">Test JDBC</a></li>
	<li><a href="<%=request.getContextPath()%>/auth.jsp">Test LDAP</a></li>
</ol>
