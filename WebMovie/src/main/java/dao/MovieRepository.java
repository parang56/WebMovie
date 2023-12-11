package dao;

import java.util.ArrayList;

import dto.Movie;

public class MovieRepository {
	
	public Movie getMovieById(String movieId) {
		Movie movieById = null;
		
		for(int i = 0;i<listOfMovies.size();i++) {
			Movie movie = listOfMovies.get(i);
			if(movie!=null && movie.getMovieId() != null && movie.getMovieId().equals(movieId)) {
				movieById = movie;
				break;
			}
		}
		return movieById;
	}
	
	private ArrayList<Movie> listOfMovies = new ArrayList<Movie>();
	private static MovieRepository instance = new MovieRepository();
	
	public static MovieRepository getInstance() {
		return instance;
	}
	
	public void addMovie(Movie movie) {
		listOfMovies.add(movie);
	}
	
	public MovieRepository() {
		Movie m1 = new Movie("M1234", "서울의 봄");
		m1.setFilename("M1234.png");
		m1.setReleaseDate("2023.11.12");
		m1.setTimeAndAge("90분 / 12세 관람가");
		m1.setDescription("1979년 12월 12일, 수도 서울 군사반란 발생 그날, "
				+ "대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, "
				+ "보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. "
				+ "권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데… "
				+ "목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!");
		m1.setDirector("김성수");
		m1.setActor("황정민, 정우성, 이성민, 박해준, 김성균");
		m1.setArr("33.4%");
		
		Movie m2 = new Movie("M1235", "나폴레옹");
		m2.setFilename("M1235.png");
		m2.setReleaseDate("2024.1.15");
		m2.setTimeAndAge("120분 / 15세 관람가");
		m2.setDescription("스스로 황제가 된 영웅! 1793년 혁명의 불꽃이 프랑스 전역을 밝히기 시작한다. "
				+ "코르시카 출신의 장교 '나폴레옹'(호아킨 피닉스)은 혼란스러운 상황 속 국가를 위해 맞서며 영웅으로 떠오른다. "
				+ "한편, 사교 파티에서 영웅 ‘나폴레옹’을 만난 '조제핀'(바네사 커비)은 자신의 운명을 바꾸기 위해 ‘나폴레옹’을 선택하고 "
				+ "‘나폴레옹’은 마침내 스스로 황제의 자리에 오르게 된다. 하지만, ‘조제핀’은 계속해서 ‘나폴레옹’을 흔들고, "
				+ "‘나폴레옹’의 야망은 ‘조제핀’과 끝없이 충돌하는데… 세상을 정복한 영웅 아무것도 갖지 못한 황제, ‘나폴레옹’의 대서사가 펼쳐진다!");
		m2.setDirector("리들리 스콧");
		m2.setActor("호아킨 피닉스, 바네사 커비");
		m2.setArr("10.5%");
		
		Movie m3 = new Movie("M1236", "3일의 휴가");
		m3.setFilename("M1236.png");
		m3.setReleaseDate("2023.12.06");
		m3.setTimeAndAge("105분 / 12세 관람가");
		m3.setDescription("“따님은 어머님을 보거나 목소리를 들을 수 없고요.\r\n"
				+ "그냥 따님의 행복한 기억만 담고 오시면 됩니다.\"\r\n"
				+ "\r\n"
				+ "죽은 지 3년째 되는 날,\r\n"
				+ "‘복자’(김해숙)는 하늘에서 3일간의 휴가를 받아\r\n"
				+ "규칙 안내를 맡은 신입 ‘가이드’(강기영)와 함께 지상에 내려온다.\r\n"
				+ "미국 명문대학교 교수인 자랑스러운 딸을 볼 생각에 설레던 마음도 잠시,\r\n"
				+ "돌연 자신이 살던 시골집으로 돌아와 백반 장사를 시작한 ‘진주’(신민아)의 모습에 당황한다.\r\n"
				+ "속 타는 엄마의 마음도 모르는 ‘진주’는 자신을 찾아온 단짝 ‘미진’(황보라)과 엄마의 레시피를 찾아가고,\r\n"
				+ "낯익은 요리를 보자 서로의 추억이 되살아나는데…");
		m3.setDirector("육상효");
		m3.setActor("김해숙, 신민아, 강기영, 황보라, 박명훈");
		m3.setArr("8.6%");
		
		Movie m4 = new Movie("M1237", "그대들은 어떻게 살 것인가");
		m4.setFilename("M1237.png");
		m4.setReleaseDate("2023.10.25");
		m4.setTimeAndAge("90분 / 12세 관람가");
		m4.setDescription("화재로 어머니를 잃은 11살 소년 ‘마히토’는 아버지와 함께 어머니의 고향으로 간다. "
				+ "어머니에 대한 그리움과 새로운 보금자리에 적응하느라 힘들어하던 ‘마히토’ 앞에 정체를 알 수 없는 왜가리 한 마리가 나타나고, "
				+ "저택에서 일하는 일곱 할멈으로부터 왜가리가 살고 있는 탑에 대한 신비로운 이야기를 듣게 된다. 그러던 어느 날, "
				+ "‘마히토’는 사라져버린 새엄마 ‘나츠코’를 찾기 위해 탑으로 들어가고, 왜가리가 안내하는 대로 이세계(異世界)의 문을 통과하는데…!");
		m4.setDirector("미야자키 하야오");
		m4.setActor("산토키 소마, 스다 마사키, 시바사키 코우, 아이묭, 기무라 요시노, 기무라 타쿠야");
		m4.setArr("5.6%");
		
		Movie m5 = new Movie("M1238", "프레디의 피자가게");
		m5.setFilename("M1238.png");
		m5.setReleaseDate("2023.11.15");
		m5.setTimeAndAge("109분 / 12세 관람가");
		m5.setDescription("“환상적이고 즐거움이 넘치는 프레디의 피자가게에 오신 걸 환영합니다”\r\n"
				+ "80년대에 아이들이 실종되고 폐업한지 오래된 프레디의 피자가게\r\n"
				+ "그곳의 야간 경비 알바를 하게 된 ‘마이크'는\r\n"
				+ "캄캄한 어둠만이 존재하는 줄 알았던 피자가게에서\r\n"
				+ "살아 움직이는 피자가게 마스코트 '프레디와 친구들’을 목격한다\r\n"
				+ "어딘가 기괴하고 섬뜩한 프레디와 친구들이 실체를 드러내기 시작하는데…");
		m5.setDirector("에마 태미");
		m5.setActor("조쉬 허처슨, 엘리자베스 라일, 캣 코너 스털링, 파이퍼 루비오, 매리 스튜어트 매스터슨, 매튜 릴라드");
		m5.setArr("4.5%");
		
		Movie m6 = new Movie("M1239", "괴물");
		m6.setFilename("M1239.png");
		m6.setReleaseDate("2023.11.29");
		m6.setTimeAndAge("127분 / 12세 관람가");
		m6.setDescription("“우리 동네에는 괴물이 산다”\r\n"
				+ "싱글맘 사오리(안도 사쿠라)는 아들 미나토(쿠로카와 소야)의 행동에서 이상 기운을 감지한다.\r\n"
				+ "용기를 내 찾아간 학교에서 상담을 진행한 날 이후\r\n"
				+ "선생님과 학생들의 분위기가 심상치 않게 흐르기 시작하고.\r\n"
				+ " \r\n"
				+ "“괴물은 누구인가?”\r\n"
				+ "한편 사오리는 친구들로부터 따돌림을 당하고 있는 미나토의 친구 요리(히이라기 히나타)의 존재를 알게 되고\r\n"
				+ "자신이 아는 아들의 모습과 사람들이 아는 아들의 모습이 다르다는 사실을 어렴풋이 깨닫는데…\r\n"
				+ "태풍이 몰아치던 어느 날, 아무도 몰랐던 진실이 드러난다.");
		m6.setDirector("고레에다 히로카즈");
		m6.setActor("안도 사쿠라, 나가야마 에이타, 쿠로카와 소야, 히이라기 히나타, 타카하타 미츠키, 카쿠타 아키히로, 나카무라 시도, 다나카 유코");
		m6.setArr("4.3%");
		
		Movie m7 = new Movie("M1240", "듄");
		m7.setFilename("M1240.png");
		m7.setReleaseDate("2023.12.06");
		m7.setTimeAndAge("155분 / 12세 관람가");
		m7.setDescription("“듄을 지배하는 자가 우주를 지배한다!”\r\n"
				+ "\r\n"
				+ "10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 \r\n"
				+ "전 우주를 구원할 예지된 자의 운명을 타고났다. \r\n"
				+ "그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. \r\n"
				+ "모래언덕을 뜻하는 '듄'이라 불리는 아라키스는 물 한 방울 없는 사막이지만 \r\n"
				+ "우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. \r\n"
				+ "황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데…\r\n"
				+ "\r\n"
				+ "위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!");
		m7.setDirector("드니 빌뇌브");
		m7.setActor(" \r\n"
				+ "티모시 샬라메, 레베카 퍼거슨, 오스카 아이삭, 제이슨 모모아, 조슈 브롤린, 젠데이아 콜먼, "
				+ "하비에르 바르뎀, 스텔란 스카스가드, 장첸, 샤론 던컨 브루스터, 데이브 바티스타, 데이빗 다스트말치안");
		m7.setArr("3.9%");
		
		Movie m8 = new Movie("M1241", "보글보글 스폰지밥");
		m8.setFilename("M1241.png");
		m8.setReleaseDate("2023.12.16");
		m8.setTimeAndAge("87분 / 전체 관람가");
		m8.setDescription("세상에서 가장 안전하고 평화로운 세상인 '비키니 보톰'은 스폰지 밥의 "
				+ "삶의 터전이다. 그러나 그의 아늑한 보금자릴 떠나 새로운 모험을 하여야 할 운명이 "
				+ "그를 기다리고 있었다. 그것은 바로 도단 당한 넵튠 왕의 왕관을 다시 찾아내야 하는 "
				+ "거국적인 임무를 수행하여야 하는 것이었다. 하지만, 우연치 않게 '스폰지 밥'이 근무하는 "
				+ "회사의 사장이 도둑으로 몰리게 되고 '스폰지 밥'은 왕관도 구하면서 동시에 그의 사장도 "
				+ "위기에서 구하여 하는 엄청난 도전이 기다리고 있었다. 우리의 영웅 '스폰지 밥'과 "
				+ "그의 영원한 친구 '스타피시 패트릭' 그리고 사장은 거사를 이루기 위하여 한번도 "
				+ "가본 적이 없는 미지의 바다를 향하여 용감하게 돌진하게 되는데.......");
		m8.setDirector("스티븐 힐렌버그");
		m8.setActor("톰 케니, 클랜시 브라운, 로저 범패스, 빌 페이거바케, 미스터 로렌스, 질 탤리, 캐롤린 랜스, "
				+ "매리 조카틀렛, 제프리 탬버, 스칼렛 요한슨");
		m8.setArr("2.5%");
		
		Movie m9 = new Movie("M1242", "싱글 인 서울");
		m9.setFilename("M1242.png");
		m9.setReleaseDate("2023.11.29");
		m9.setTimeAndAge("103분 / 12세 관람가");
		m9.setDescription("“나한테 딱 맞는 사람은 나밖에 없어, 싱글이 답이다!”\r\n"
				+ "혼자 걷기, 혼자 쉬기, 혼자 먹기, 혼자 살기…\r\n"
				+ "혼자가 좋은 파워 인플루언서 ‘영호'(이동욱)\r\n"
				+ "\r\n"
				+ "“사실 혼자인 사람은 없잖아요”\r\n"
				+ "혼자 썸타기, 나 홀로 그린 라이트…\r\n"
				+ "유능한 출판사 편집장이지만 혼자는 싫은 ‘현진’(임수정)\r\n"
				+ "\r\n"
				+ "싱글 라이프를 담은 에세이 <싱글 인 더 시티> 시리즈의 작가와 편집자로 만난 ‘영호’와 ‘현진’.\r\n"
				+ "생활 방식도 가치관도 서로 다른 두 사람은\r\n"
				+ "책을 두고 사사건건 대립하면서도,\r\n"
				+ "함께 보내는 시간이 나쁘지만은 않은데…?\r\n"
				+ "\r\n"
				+ "서울, 혼자가 좋지만 연애는 하고 싶은\r\n"
				+ "두 남녀의 싱글 라이프가 시작된다!");
		m9.setDirector("박범수");
		m9.setActor("이동욱, 임수정, 이솜");
		m9.setArr("0.8%");
		
		listOfMovies.add(m1);
		listOfMovies.add(m2);
		listOfMovies.add(m3);
		listOfMovies.add(m4);
		listOfMovies.add(m5);
		listOfMovies.add(m6);
		listOfMovies.add(m7);
		listOfMovies.add(m8);
		listOfMovies.add(m9);
		
		}
	
	public ArrayList<Movie> getAllMovies(){
		return listOfMovies;
	}
}
