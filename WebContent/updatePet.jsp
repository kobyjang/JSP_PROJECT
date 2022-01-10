<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
	<title>상품 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp" %>
		<% String petId=request.getParameter("id"); PreparedStatement pstmt=null; ResultSet rs=null; String
			sql="select * from pet where id = ?" ; pstmt=conn.prepareStatement(sql); pstmt.setString(1, petId);
			rs=pstmt.executeQuery(); if (rs.next()) { %>
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<img src="resources/images/<%=rs.getString("fileName")%>" alt="image" style="width:
						100%" />
					</div>
					<div class="col-md-7">
						<form name="newPet" action="./processUpdatePet.jsp" class="form-horizontal"
							method="post" enctype="multipart/form-data">
							<div class="form-group row">
								<label class="col-sm-2">동물 코드</label>
								<div class="col-sm-3">
									<input type="text" id="petId" name="petId" class="form-control"
										value='<%=rs.getString("id")%>'>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">동물 성별</label>
								<div class="col-sm-3">
									<input type="text" id="sex" name="sex" class="form-control"
										value="<%=rs.getString("sex")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">동물 타입</label>
								<div class="col-sm-3">
									<input type="text" id="Atype" name="Atype" class="form-control"
										value="<%=rs.getString("Atype")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">책임비</label>
								<div class="col-sm-3">
									<input type="text" id="dutyPrice" name="dutyPrice" class="form-control"
										value="<%=rs.getInt("dutyPrice")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">동물 이름</label>
								<div class="col-sm-3">
									<input type="text" id="Aname" name="Aname" class="form-control"
										value="<%=rs.getString("Aname")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">동물 분양</label>
								<div class="col-sm-3">
									<input type="text" id="adopt" name="adopt" class="form-control"
										value="<%=rs.getString("adopt")%>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2">상세 설명</label>
								<div class="col-sm-5">
									<textarea name="description" cols="50" rows="2"
										class="form-control"><%=rs.getString("description")%></textarea>
								</div>
								<div class="form-group row">
									<label class="col-sm-2">이미지</label>
									<div class="col-sm-5">
										<input type="file" name="petImage" class="form-control">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-offset-2 col-sm-10 ">
										<input type="submit" class="btn btn-primary" value="등록">
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
			<% 
				} 
				if (rs !=null) 
						rs.close(); 
				if (pstmt !=null) 
						pstmt.close(); 
				if (conn !=null) 
						conn.close(); 
			%>
</body>
</html>