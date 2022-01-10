<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품아이디 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">죄송합니다. 이미 분양된 상태입니다.</h2>
		</div>
	</div>
	<div class="container">
		<%-- <p><%=request.getRequestURL() %>?<%=request.getQueryString()%>
		--%>
		<p><a href="pets.jsp" class="btn btn-secondary"> 아기 목록 &raquo;</a>			
	</div>
</body>
</html>
