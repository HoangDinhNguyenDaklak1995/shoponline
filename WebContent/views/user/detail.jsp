<%@ page pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">
<h4>User information</h4>
<div>

	<span>Page: ${pageScope.level }</span> <span>Request:
		${requestScope.level }</span> <span>Session: ${sessionScope.level }</span> <span>Application:
		${applicationScope.level }</span> <span>Level: ${level }</span>
	<ul>
		<li>${user.id}</li>
		<li>${user.username }</li>
		<li>${user.password}</li>
		<li>${user.fullname}</li>
		<li>${user.userRole.roleName}</li>
		<li>${user.notes}</li>
	</ul>
</div>
