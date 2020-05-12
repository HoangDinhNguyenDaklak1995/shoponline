<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<jsp:include page="./include/headtag.jsp" />
<jsp:include page="./include/themehead.jsp" />
</head>
<!-- BEGIN body -->
<!-- <body> -->
<body>
	<jsp:include page="./include/header.jsp"></jsp:include>
	<jsp:include page="${param.view}" />
	<jsp:include page="./include/footer.jsp"></jsp:include>
	
</body>
</html>