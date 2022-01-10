<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Pet"%>
<%@ page import="dao.PetRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("pets.jsp");
		return;
	}
	PetRepository dao = PetRepository.getInstance();

	Pet pet = dao.getPetById(id);
	if (pet == null) {
		response.sendRedirect("exceptionNoPetId.jsp");
	}
	ArrayList<Pet> goodsList = dao.getAllPets();
	Pet goods = new Pet();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getPetId().equals(id)) { 			
			break;
		}
	}
	ArrayList<Pet> list = (ArrayList<Pet>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Pet>();
		session.setAttribute("cartlist", list);
	}
	int cnt = 0;
	Pet goodsQnt = new Pet();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getPetId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	if (cnt == 0)  { 
		goods.setQuantity(1);
		list.add(goods);
		
	
		response.sendRedirect("pet.jsp?id=" + id);
	}
%>