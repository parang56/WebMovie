<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>

<jsp:useBean id="movieDAO" class="dao.MovieRepository" scope="session" />
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <title>예약하기</title>
    <style>
    	body {
            background-color: #fff; /* Set the background color to pitch black */
        	font-family: 'Arial', sans-serif;
        	
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
        .navbar-dark {
        	background-color: #000 !important; /* Set the background color of the navbar to pitch black */
        }
        /* Add style for the white lines */
        .section-divider {
            border-top: 0.5px solid #808080;
        }
        .movie-image {
            max-width: 95%;
            height: auto;
        }
        .info-section {
            margin-bottom: 20px;
        }
        .time-table {
            width: 100%;
        }
        .time-slot {
        cursor: pointer;
        display: inline-block;
        margin: 5px 15px 5px 0; /* 상하 간격 5px, 좌우 간격 15px */
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        vertical-align: top; /* 박스들이 같은 라인에 정렬되도록 설정 */
        }
        .time-slot.active {
            background-color: #007bff;
            color: white;
            border-color: #007bff;
        }
        .seats-available {
            margin-left: 10px;
            font-size: 0.8em;
            color: #555;
        }
    </style>
    <script>
        // 여석 수를 표시하는 함수
        function showSeats(element, seats) {
            element.innerHTML += '<span class="seats-available">[여석: ' + seats + ']</span>';
        }
        
        // 페이지 로드 시 여석 수를 초기화하는 함수
        function initializeSeats() {
            var timeSlots = document.getElementsByClassName('time-slot');
            var seats = [64, 64, 64, 64, 64, 64]; // 각 시간대별 초기 여석 수
            for (var i = 0; i < timeSlots.length; i++) {
                showSeats(timeSlots[i], seats[i]);
            }
        }

        // 시간 슬롯 선택 시 작동하는 함수
        function selectTimeSlot(selectedElement) {
            // 모든 시간 슬롯의 'active' 클래스를 제거
            var timeSlots = document.getElementsByClassName('time-slot');
            for (var i = 0; i < timeSlots.length; i++) {
                timeSlots[i].classList.remove('active');
            }
            
            // 클릭된 요소에만 'active' 클래스 추가
            selectedElement.classList.add('active');
        }
        
        // 페이지 로드 시 initializeSeats 함수를 호출
        window.onload = initializeSeats;
        
        <%
	        String id = request.getParameter("Filename");
	        MovieRepository dao = MovieRepository.getInstance();
	        Movie product = dao.getMovieById(id);
    	%>
    </script>
</head>
<body>

	<jsp:include page="menu.jsp" />
	<% 
        // Retrieve values from the URL
        String Mname = request.getParameter("Mname");
        String Filename = request.getParameter("Filename");

        // Use the retrieved values as needed
    %>
    <div class="jumbotron" style="padding: 0px;">
	    <div class="container" style="padding: 20px;">
	        <h1 class="display-3" style="font-size: 48px; color: white; margin-left: -5px;">
	        	<b>Movie Reservation</b></h1>
	    </div>
	</div>
	
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="resources/images/<%=request.getParameter("Filename")%>"class="movie-image img-fluid" style="width: 75%">
                <div class="col-md-6">
			</div>
            </div>
            <div class="col-md-6">
                <!-- 극장 정보 섹션 -->
	<div class="info-section">
                    <h5>극장 정보</h5>
                    <select id="theater" class="form-control">
					    <option value="">극장을 선택하세요.</option>
					    <option value="강남">강남</option>
					    <option value="강변">강변</option>
					    <option value="건대입구">건대입구</option>
					    <option value="구로">구로</option>
					    <option value="대학로">대학로</option>
					    <option value="동대문">동대문</option>
					    <option value="등촌">등촌</option>
					    <option value="명동">명동</option>
					    <option value="미아">미아</option>
					    <option value="방학">방학</option>
					    <option value="불광">불광</option>
					    <option value="상봉">상봉</option>
					    <option value="성신여대입구">성신여대입구</option>
					    <option value="송파">송파</option>
					    <option value="수유">수유</option>
					    <option value="신촌">신촌</option>
					    <option value="압구정">압구정</option>
					    <option value="여의도">여의도</option>
					    <option value="연남">연남</option>
					    <option value="영등포">영등포</option>
					    <option value="왕십리">왕십리</option>
					    <option value="중계">중계</option>
					    <option value="천호">천호</option>
					    <option value="청담">청담</option>
					    <option value="용산">용산</option>
					    <option value="하계">하계</option>
					    <option value="홍대">홍대</option>
					</select>
                </div>
                
                <!-- 날짜 정보 섹션 -->
                <div class="info-section">
                    <h5>날짜 정보</h5>
                    <select id="date" class="form-control">
                        <option value="">날짜를 선택하세요.</option>
                        <option value="12월 7일">12월 7일</option>
                        <option value="12월 8일">12월 8일</option>
                        <option value="12월 9일">12월 9일</option>
                        <option value="12월 10일">12월 10일</option>
                        <option value="12월 11일">12월 11일</option>
                        <option value="12월 12일">12월 12일</option>
                        <option value="12월 13일">12월 13일</option>
                        
                        <!-- 기타 날짜 옵션 -->
                    </select>
                </div>               
                <!-- 시간 정보 섹션 -->
                <div class="info-section">
				    <h5>시간 정보</h5>
				    <select id="time" class="form-control">
				        <option value="">시간을 선택하세요.</option>
				        <option value="오전 10:00">오전 10:00</option>
				        <option value="오후 12:00">오후 12:00</option>
				        <option value="오후 3:00">오후 3:00</option>
				        <option value="오후 4:30">오후 4:30</option>
				        <option value="오후 8:00">오후 8:00</option>
				        <option value="오후 10:00">오후 10:00</option>
				        <!-- 기타 시간 옵션 -->
				    </select>
				</div>
				
				<form id="reservationForm" method="post" accept-charset="UTF-8">
				    <input type="hidden" id="theaterHidden" name="theater" value="">
				    <input type="hidden" id="dateHidden" name="date" value="">
				    <input type="hidden" id="timeHidden" name="time" value="">
				    <input type="hidden" name="Mname" value="<%= Mname %>">
        			<input type="hidden" name="Filename" value="<%= Filename %>">
				    
				    <!-- 예약하기 버튼 -->
					<button type="button" class="btn btn-primary btn-lg btn-block" onclick="validateAndNavigate('seatSelection.jsp');">예약하기</button>
				</form>
				
				<div id="errorMessage" class="alert alert-danger" style="display: none; margin-top: 20px;">
				    극장, 날짜, 시간을 모두 선택하셔야 합니다.
				</div>
				
				<script>
				    function validateAndNavigate(targetPage) {
				        var theater = document.getElementById('theater').value;
				        var date = document.getElementById('date').value;
				        var time = document.getElementById('time').value;
				        var errorMessageDiv = document.getElementById('errorMessage');
				        var theaterHidden = document.getElementById('theaterHidden');
				        var dateHidden = document.getElementById('dateHidden');
				        var timeHidden = document.getElementById('timeHidden');
				
				        if (theater && date && time) {
				            // All required selections are made
				            theaterHidden.value = theater;
				            dateHidden.value = date;
				            timeHidden.value = time; 
							
				            // Navigate to the target page
				            document.getElementById('reservationForm').action = targetPage;
				            document.getElementById('reservationForm').submit();
				        } else {
				            // Show the error message div
				            errorMessageDiv.style.display = 'block';
				        }
				    }
				</script>
				                
            </div>
        </div>
        <hr>
    </div>
    
    <jsp:include page="footer.jsp" />
    
    <!-- Bootstrap 관련 스크립트 -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
