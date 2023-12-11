function CheckAddMovie(){

	var movieId = document.getElementById("movieId");
	var mname = document.getElementById("name");
	
	if(!check(/^M[0-9]{4,11}$/, movieId,
	"[상풍 코드]\nM와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 M로 시작하세요"))
	return false;
		
	if(mname.value.length<1){
		alert("[영화 이름]\n최소 1자 이상 입력하세요");
		mname.select();
		mname.focus();
		return false;
	}
	
	function check(regExp,e,msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
			
		document.newMovie.submit();
	}