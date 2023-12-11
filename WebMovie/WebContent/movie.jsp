<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository" %>
<%@ page errorPage="exceptionNomovieId.jsp"%>
<jsp:useBean id="movieDAO" class = "dao.MovieRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<style>
	.navbar-dark {
     	background-color: #000 !important; /* Set the background color of the navbar to pitch black */
     }
     .jumbotron {
            background-color: #000; /* Set the background color of the jumbotron to pitch black */
            color: #fff; /* Set the text color to white */
            padding: 20px;
        }
        .jumbotron-text {
            color: #000; /* Set the text color under Movie site에 오신 것을 환영합니다 to black */
            padding: 20px;
        }
        .section-divider {
            border-top: 0.5px solid #808080;
        }
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="padding: 0px;">
	    <div class="container" style="padding: 20px;">
	        <h1 class="display-3" style="font-size: 48px; color: white; margin-left: -5px;">
	        	<b>Movie Information</b></h1>
	    </div>
	</div>
	<%
		String id = request.getParameter("id");
		MovieRepository dao = MovieRepository.getInstance();
		Movie movie = dao.getMovieById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
			<img src="resources/images/<%=movie.getFilename()%>" style="width: 80%">
			</div>
			<div class="col-md-6">
				<h3><b><%=movie.getMname()%></b></h3>
				<p><b><%=movie.getDescription()%></b>
				<p><b>감독 : <%=movie.getDirector()%></b>
				<p><b>배우 : <%=movie.getActor() %></b>
				<p><b>상영시간 / 관람등급 : <%=movie.getTimeAndAge()%></b>
				<p><b>개봉일 : <%=movie.getReleaseDate()%></b><br>
				<br><h7 style="font-family: Arial;"><b>예매율 : <%=movie.getArr()%></b></h7>
				<p> <a href="./reservation.jsp?Mname=<%=movie.getMname()%>&Filename=<%=movie.getFilename()%>"					
					class = "btn btn-secondary" role="button">예매하기></a>
				</div>
				</div>
				<hr>
			</div>
			<jsp:include page="footer.jsp" />
</body>
</html>