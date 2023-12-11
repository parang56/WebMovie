<!-- welcome.jsp -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
    <title>Welcome</title>
</head>
<body>
    <%@include file="menu.jsp" %> 
    <%! String greeting = "Soongsil Films에 오신 것을 환영합니다";
       String tagline = "Welcome to 숭실 필름!"; %>
    <div class="jumbotron" style="padding: 0px;">
	    <div class="container" style="padding: 20px;">
	        <h1 class="display-3" style="font-size: 48px; margin-left: -16px;">
	            <%= greeting %>
	        </h1>
	    </div>
	</div>

	<!-- New container for text and image -->
	<div class="row mt-4" style="padding-top: 20px">
	    <div class="col-md-6">
	        <!-- Text content with left padding -->
	        <div style="padding-left: 300px;">
	            <h4>Soongsil Films에 대하여</h4>
	            <p><br>숭실 필름은 지친 숭실대학교 학부생, 대학원생, 교수진,<br> 그리고 노동자 분들을 위한 
	            무료로 영화를 <br>상영해주는 프로그램을 진행 중입니다.<br><br>
	            상단의 영화 버튼을 눌러 원하시는 영화를 찾으셔서 <br>예매를 진행해주시면 됩니다.</p>
	        </div>
	    </div>
	    <div class="col-md-6">
	        <!-- Image content -->
	        <img src="resources/images/soongsil.jpg" class="img-fluid" alt="Image Alt Text" style="width: 63%;">
	    </div>
	</div>

    <div class="container">
        <!-- Use d-flex and flex-column to create a flex container and set column direction -->
        <div class="d-flex flex-column" style="min-height: 20vh;"> 
            <div class="text-center mt-auto">
                <h3>
                    <%= tagline %>
                </h3>
                <%
                    response.setIntHeader("Refresh",3);
                    Date day = new java.util.Date();
                    String am_pm;
                    int hour = day.getHours();
                    int minute = day.getMinutes();
                    int second = day.getSeconds();
                    if (hour / 12 == 0){
                        am_pm = "AM";
                    } else{
                        am_pm = "PM";
                        hour = hour - 12;
                    }
                    String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                    out.println("현재 접속 시각: "+CT+"\n");
                %>
            </div>
            <!-- Add white line under the main content -->
            <div class="section-divider"></div>
        </div>
    </div>

    <%@include file="footer.jsp" %>
</body>
</html>