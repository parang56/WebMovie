<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>영화 등록</title>
<style>
        body {
            background-color: #fff; /* Set the background color to pitch black */
        	font-family: 'Arial', sans-serif;
        	
        }

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

        .text-center {
            color: #000; /* Set the text color of the text-center to white */
        }
        /* Add style for the white lines */
        .section-divider {
            border-top: 0.5px solid #808080;
        }

        
    </style>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	
	<nav class="navbar navbar-expand navbar-dark bg-dark">
	    <div class="container d-flex align-items-center">
	        <div class="ml-auto">
	        	<a class="navbar-brand" href="logout.jsp">로그아웃</a>
	        </div>
	    </div>
	</nav>
	<!-- Add white line under the menu -->
	<div class="section-divider"></div>

	
	<div class="jumbotron" style="padding: 0px;">
	    <div class="container" style="padding: 20px;">
	        <h1 class="display-3" style="font-size: 48px; margin-left: -16px;">
	            <fmt:message key="title" /></h1>
	        </h1>
	    </div>
	</div>
	
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
		</div>
		<form name="newMovie" action="./processAddMovie.jsp" 
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="movieId" /></label>
				<div class="col-sm-3">
					<input type="text" id="movieId" name="movieId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="mname" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="advanceReservationRate" /></label>
				<div class="col-sm-3">
					<input type="text" id="arr" name="arr" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="director" /></label>
				<div class="col-sm-3">
					<input type="text" id="director" name="director" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="actor" /></label>
				<div class="col-sm-3">
					<input type="text" id="actor" name="actor" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="timeAndAge" />
				</label>
				<div class="col-sm-5">
					<textarea name="timeAndAge" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="releaseDate" />
				</label>
				<div class="col-sm-5">
					<textarea name="releaseDate" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" />
				</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class = "form_group row">
				<label class="col-sm-2"><fmt:message key="movieImage" />
				</label>
				<div class="col-sm-5">
					<input type="file" name="movieImage" class="form-control">
				</div>
			</div>	
			<div class = "form_group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" 
					value="<fmt:message key="button" />" 
					onclick="CheckAddMovie()">
				</div>
			</div>			
		</form>
	</div>
</fmt:bundle>
</body>
</html>