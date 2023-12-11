<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <%
    String cartId = session.getId();
	String movieName = request.getParameter("Mname");
    String theater = request.getParameter("theater");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String selectedSeatsText = request.getParameter("selectedSeatsText");
	%>
    <style>
        body {
            background-color: #fff;
            font-family: 'Arial', sans-serif;
        }
        .navbar-dark {
            background-color: #000 !important;
        }
        .jumbotron {
            background-color: #000;
            color: #fff;
            padding: 20px;
        }
        .jumbotron-text {
            color: #000;
            padding: 20px;
        }
        .text-center {
            color: #000;
        }
        .section-divider {
            border-top: 0.5px solid #808080;
        }
        .card {
            width: 1000px;
            margin: auto;
            margin-top: 20px;
            margin-left: -150px;
            background-image: url('resources/images/soongsil.jpg');
            background-color: rgba(255, 255, 255, 0.5);
            background-size: cover;
        }
        .card-header {
            background-color: #333;
            color: #fff;
        }
        .card-body {
        background-color: rgba(255, 255, 255, 0.7);
        color: #000;
    }
    </style>
    <title>예매 확인</title>
</head>
<body>
    <jsp:include page="menu.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3"><b>예매 확인</b></h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header">
                        <h1 class="card-title"><b>예매 정보</b></h1>
                    </div>
                    <div class="card-body">
                        <p class="card-text">
                            <h3><b>영화: <%= movieName %></b></h3><br>
                            <h3><b>장소: <%= theater %></b></h3><br>
                            <h3><b>날짜: <%= date %></b></h3><br>
                            <h3><b>시간: <%= time %></b></h3><br>
                            <h3><b>좌석: <%= selectedSeatsText %></b></h3>
                        </p>
                        &copy; SoongsilFilm
                    </div>
                </div>
            </div>
        </div>
        <div style="padding-top: 20px">
            <a href="./movies.jsp" class="btn btn-secondary"> &laquo; 돌아가기</a>
        </div>
        <hr>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
