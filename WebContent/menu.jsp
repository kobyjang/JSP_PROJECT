<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>	
<nav class="navbar navbar-collapse collapse navbar-dark bg-white">
	<div class="container">
		<div>
			<ul class="navbar-nav navbar-right">
			<c:choose>
			<c:when test="${empty sessionId}">
				<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
				<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a></li>
			</c:when>
			<c:otherwise>
				<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
			</c:otherwise>
			</c:choose>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/pets.jsp"/>">아기 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/address/contact.jsp"/>">찾아오시는길</a></li>
				<%
				if(sessionId!=null&&sessionId.equals("admin")){
				%>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/addPet.jsp"/>">아기 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editPet.jsp?edit=update"/>">아기 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editPet.jsp?edit=delete"/>">아기 삭제</a></li>
				<%
				}
			%>
			</ul>
		</div>
	</div>
</nav>
