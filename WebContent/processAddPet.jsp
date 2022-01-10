<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	String petId = multi.getParameter("petId");
	String Aname = multi.getParameter("Aname");
	String dutyPrice = multi.getParameter("dutyPrice");
	String sex = multi.getParameter("sex");
	String Atype = multi.getParameter("Atype");
	String adopt = multi.getParameter("adopt");
	String description = multi.getParameter("description");
	
	Integer price;

	if (dutyPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(dutyPrice);

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;	
	
	String sql = "insert into pet values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, petId);	
	pstmt.setString(2, Aname);
	pstmt.setInt(3, price);
	pstmt.setString(4, sex);
	pstmt.setString(5, Atype);
	pstmt.setString(6, adopt);
	pstmt.setString(7, description);
	pstmt.setString(8, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("pets.jsp");
	
%>
	
