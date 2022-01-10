<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<% 
	String filename="" ; 
	String realFolder="C:\\upload" ; //웹 어플리케이션상의 절대 경로 
	String encType="utf-8" ; //인코딩 타입 
	int maxSize=5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb 
	
	MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy()); 
	String petId=multi.getParameter("petId"); 
	String sex=multi.getParameter("sex"); 
	String Atype=multi.getParameter("Atype"); 
	String Aname=multi.getParameter("Aname"); 
	String adopt=multi.getParameter("adopt"); 
	String dutyPrice=multi.getParameter("dutyPrice"); 
	String description=multi.getParameter("description"); 
	Integer price; 
	
	if (dutyPrice.isEmpty())
		price=0; 
	else 
		price=Integer.valueOf(dutyPrice); 
		
	Enumeration files=multi.getFileNames();
	String fname=(String) files.nextElement(); 
	String fileName=multi.getFilesystemName(fname);
							
	PreparedStatement pstmt=null; 
	ResultSet rs=null; 
	
	String sql="select * from pet where id = ?"; 
	pstmt=conn.prepareStatement(sql); 
	pstmt.setString(1, petId); 
	rs=pstmt.executeQuery(); 
	
	if (rs.next()) { 
		if (fileName !=null) {
					sql="UPDATE pet SET sex=?, Atype=?, Aname=?, adopt=?, dutyPrice=?,description=?, fileName=? WHERE id=?"; 
					pstmt=conn.prepareStatement(sql); 
					pstmt.setString(1, sex); 
					pstmt.setString(2, Atype);
					pstmt.setString(3, Aname); 
					pstmt.setString(4, adopt); 
					pstmt.setInt(5, price);
					pstmt.setString(6, description); 
					pstmt.setString(7, fileName); 
					pstmt.setString(8, petId);
					pstmt.executeUpdate(); 
		} else {
					sql="UPDATE pet SET sex=?, Atype=?, Aname=?, adopt=?, dutyPrice=?,description=? WHERE id=?"; 
					pstmt=conn.prepareStatement(sql); 
					pstmt.setString(1, sex); 
					pstmt.setString(2, Atype);
					pstmt.setString(3, Aname); 
					pstmt.setString(4, adopt); 
					pstmt.setInt(5, price);
					pstmt.setString(6, description); 
					pstmt.setString(7, petId); 
					pstmt.executeUpdate(); 
				} 
			} 
			if (rs !=null) 
					rs.close(); 
			if (pstmt !=null) 
					pstmt.close(); 
			if (conn !=null) 
					conn.close();
			
					response.sendRedirect("editPet.jsp?edit=update"); 
%>