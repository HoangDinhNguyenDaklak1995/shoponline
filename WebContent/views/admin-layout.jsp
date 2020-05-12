<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<c:choose>
	<c:when test="${useradmin.roles.id == 1 || useradmin.roles.id == 2 }">
		<html>
<head>
<meta charset="utf-8" />
<base href="${pageContext.servletContext.contextPath}/">
<title>Quản Lý WebSite</title>
<jsp:include page="admin/headtag.jsp"></jsp:include>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
</body>
		</html>
	</c:when>
	<c:otherwise>
		<jsp:forward page="admin/error.htm"></jsp:forward>
	</c:otherwise>

</c:choose>