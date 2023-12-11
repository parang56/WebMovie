<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("movies.jsp");
		return;
	}
	
	MovieRepository dao = MovieRepository.getInstance();
	
	Movie Movie = dao.getMovieById(id);
	if (Movie == null) {
		response.sendRedirect("exceptionNoMovieId.jsp");
	}
	
	ArrayList<Movie> cartList = (ArrayList<Movie>) session.getAttribute("cartlist");
	Movie goodsQnt = new Movie();
	for (int i=0; i<cartList.size(); i++) {
		goodsQnt = cartList.get(i);
		if (goodsQnt.getMovieId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>