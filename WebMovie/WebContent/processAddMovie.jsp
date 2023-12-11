<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	String filename= "";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	String realPath = getServletContext().getRealPath("./resources/images");
	
	MultipartRequest multi = new MultipartRequest(request, realPath, 
			maxSize, encType, new DefaultFileRenamePolicy());
	
	String movieId = multi.getParameter("movieId");
	String name = multi.getParameter("name");
	String description = multi.getParameter("description");
	String arr = multi.getParameter("arr");
	String releaseDate = multi.getParameter("releaseDate");
	String timeAndAge = multi.getParameter("timeAndAge");
	String director = multi.getParameter("director");
	String actor = multi.getParameter("actor");

	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getOriginalFileName(fname);
	MovieRepository dao = MovieRepository.getInstance();
	
	Movie newMovie = new Movie(movieId,name);
	newMovie.setMovieId(movieId);
	newMovie.setMname(name);
	newMovie.setDescription(description);
	newMovie.setArr(arr);
	newMovie.setReleaseDate(releaseDate);
	newMovie.setTimeAndAge(timeAndAge);
	newMovie.setFilename(fileName);
	newMovie.setDirector(director);
	newMovie.setActor(actor);
	
	dao.addMovie(newMovie);
	
	response.sendRedirect("movies.jsp");
	%>