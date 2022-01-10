<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Pet" %>
<%@ page import="dao.PetRepository" %>
<% 
	String id=request.getParameter("id"); 
	if (id==null || id.trim().equals("")) {
			response.sendRedirect("pets.jsp"); 
			return; 
	} 
	PetRepository dao=PetRepository.getInstance(); 
	
	Pet pet=dao.getPetById(id); 
	if (pet==null) { 
		response.sendRedirect("exceptionNoPetId.jsp"); 
	}
	ArrayList<Pet> cartList = (ArrayList<Pet>) session.getAttribute("cartlist");
		Pet goodsQnt = new Pet();
		for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기 
			goodsQnt=cartList.get(i); 
			if (goodsQnt.getPetId().equals(id)) { 
				cartList.remove(goodsQnt); 
			} 
		}
		response.sendRedirect("cart.jsp"); 
%>