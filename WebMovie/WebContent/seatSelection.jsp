<%@ page contentType="text/html; charset=utf-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>좌석 선택</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
     <style>
        .screen {
            width: 100%;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            padding: 4px;
            margin-bottom: 20px;
            font-size: 1.2em;
        }
        .jumbotron {
            background-color: #000; /* Set the background color of the jumbotron to pitch black */
            color: #fff; /* Set the text color to white */
            padding: 20px;
        }
        .seat-grid {
            display: grid;
            grid-template-columns: repeat(10, 1fr); /* 좌석을 한 줄에 10개씩 표시 */
            gap: 15px;
            padding: 20px;
            background: #f0f0f0;
            border-radius: 8px;
            margin: auto;
            max-width: 700px; /* 좌석 그리드의 너비를 증가시킴 */
        }
        .seat-row-label {
            grid-column: 1 / -1; /* 라벨이 전체 열을 차지하도록 */
            background: #f0f0f0;
            text-align: left;
            padding-left: 10px;
            line-height: 30px; /* 라벨 높이 */
            border-bottom: 1px solid #ddd;
        }
        .seat {
            width: 50px; /* 좌석 너비 증가 */
            height: 50px; /* 좌석 높이 증가 */
            background-color: #ddd;
            border: 1px solid #666;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            user-select: none;
        }
        .seat.selected {
            background-color: #777;
        }
        .seat.unavailable {
            background-color: #aaa;
            cursor: not-allowed;
        }
        .section-divider {
            border-top: 0.5px solid #808080;
        }
        .navbar-dark {
            background-color: #000 !important; /* Set the background color of the navbar to pitch black */
        }
        #confirm-selection {
            display: block;
            width: auto;
            padding: 10px;
            margin: 20px auto;
            font-size: 1em;
            cursor: pointer;
        }
    </style>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); String theater = request.getParameter("theater"); %>
	<%request.setCharacterEncoding("utf-8"); String date = request.getParameter("date"); %>
	<%request.setCharacterEncoding("utf-8"); String time = request.getParameter("time"); %>
	<%String Mname = request.getParameter("Mname"); %>
	<%String Filename = request.getParameter("Filename"); %>
	<jsp:include page="menu.jsp" />
    <div class="jumbotron" style="padding: 0px;">
        <div class="container" style="padding: 20px;">
            <h1 class="display-3" style="font-size: 48px; margin-left: -16px;">
                Seat Reservation
            </h1>
        </div>
    </div>
    
    <div style="display: flex; justify-content: center; align-items: center; height: 80vh;">
        <div style="margin-right: 150px;">
            <div class="screen" style="margin-bottom: 20px;">SCREEN</div>
            <div id="seat-grid" class="seat-grid">
                <!-- 자바스크립트로 좌석을 여기에 생성합니다 -->
            </div>
        </div>
        
        <div style="margin-left: 10px;">
        	<div class="jumbotron" style="margin-bottom: 20px; padding: 8px;">
	        	<% out.println(theater); out.println("|"); out.println(date); out.println("|"); out.println(time);%>
	        </div>
            <div class="jumbotron" style="margin-bottom: 20px; padding: 8px;">Selected Seats</div>
            <div id="selected-seats" class="seat-grid">
                <!-- 선택된 좌석을 여기에 표시합니다 -->
            </div>
		    <!-- 예약하기 버튼 -->
			<button id="confirm-selection" type="button" class="btn btn-primary btn-lg btn-block">선택 완료</button>
		</div>
    </div>
<!-- Replace the existing <script> tag in the first code with this modified version -->
<script>

   	document.addEventListener('DOMContentLoaded', function () {
        const seatGrid = document.getElementById('seat-grid');
        const confirmButton = document.getElementById('confirm-selection');
        const selectedSeatsContainer = document.getElementById('selected-seats');
        const seatLimit = 5; // Change this to your desired seat limit

        const rows = 6;
        const cols = 10;

        for (let row = 1; row <= rows; row++) {
            for (let col = 1; col <= cols; col++) {
                const seat = document.createElement('div');
                seat.classList.add('seat');
                seat.textContent = String.fromCharCode(64 + row) + col;
                seat.addEventListener('click', () => toggleSeat(seat));
                seatGrid.appendChild(seat);
            }
        }

        function toggleSeat(seat) {
            if (!seat.classList.contains('unavailable')) {
                const selectedSeats = document.querySelectorAll('.seat.selected');
                var seats = seatLimit;

                if (selectedSeats.length < seatLimit || seat.classList.contains('selected')) {
                    seat.classList.toggle('selected');
                    updateSelectedSeats();
                } else {
                    // Display an alert if the seat limit is exceeded
                    alert("최대 " + seats + "개의 좌석까지 선택이 가능합니다.");
                }
            }
        }
        
        confirmButton.addEventListener('click', () => {
            const selectedSeats = document.querySelectorAll('.seat.selected');
            const selectedSeatsIds = Array.from(selectedSeats).map(seat => seat.textContent);

            if (selectedSeatsIds.length == 0) {
                // Display an alert if no seats are selected
                alert('좌석을 선택해주세요.');
            } else {
            	const Mname = '<%= Mname %>';
                const theater = '<%= theater %>';
                const date = '<%= date %>';
                const time = '<%= time %>';
                const selectedSeatsText = selectedSeatsIds.join(', ');

                const confirmation = confirm("해당 좌석으로 예매하시겠습니까?");
                if (confirmation) {
                    // Use window.location.href to navigate to cart.jsp with parameters
                    window.location.href = 'cart.jsp?Mname=' + encodeURIComponent(Mname) +
                        '&theater=' + encodeURIComponent(theater) +
                        '&date=' + encodeURIComponent(date) +
                        '&time=' + encodeURIComponent(time) +
                        '&selectedSeatsText=' + encodeURIComponent(selectedSeatsText);
                }

            }
        });

        function updateSelectedSeats() {
        	// Apply CSS style to make the container wider horizontally
            selectedSeatsContainer.style.whiteSpace = 'nowrap'; // Prevent line breaks
            selectedSeatsContainer.style.width = '300px'; // Adjust the width as needed
            const selectedSeats = document.querySelectorAll('.seat.selected');
            const selectedSeatsIds = Array.from(selectedSeats).map(seat => seat.textContent);
            const selectedSeatsText = 'Selected Seats: ' + selectedSeatsIds.join(' ');

            // Assuming selectedSeatsContainer is a div element
            selectedSeatsContainer.innerHTML = selectedSeatsText;
        }
    });
</script>


</body>
</html>